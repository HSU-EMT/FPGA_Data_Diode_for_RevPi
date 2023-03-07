/*
 * enc424j600.c
 *
 *  Created on: 11.08.2022
 *      Author: Ha
 */


#include <unistd.h>
#include "xil_types.h"
#include "enc424j600.h"
#include "custom_definitions.h"
#include "xspi.h"		/* SPI device driver */
/********************************************************************/
/*********************ENC424j600 Driver******************************/
/********************************************************************/

/*
 * Init ENC424J600 driver. This function must be called after initialization of SPI interface
 * to make sure CS is pulled high (release device)
 */
extern u8 currentBank;
extern u16 nextPacketPointer;
extern volatile int TransferInProgress;
extern XSpi  SpiInstance;
void enc424j600Init(void) {
	//Set default bank
	currentBank = 0;

	// Perform a reliable reset
	enc424j600SendSystemReset();

	// Initialize RX tracking variables and other control state flags
	nextPacketPointer = ENC424J600_RXSTART;

	// Set up TX/RX/UDA buffer addresses
	enc424j600WriteReg(ETXST, ENC424J600_TXSTART);
	enc424j600WriteReg(ERXST, ENC424J600_RXSTART);
	enc424j600WriteReg(ERXTAIL, ENC424J600_RAMSIZE - 2);
	enc424j600WriteReg(EUDAST, ENC424J600_RAMSIZE);
	enc424j600WriteReg(EUDAND, ENC424J600_RAMSIZE + 1);

#ifdef PROMISCUOUS_MODE
	enc424j600WriteReg(ERXFCON,(ERXFCON_CRCEN | ERXFCON_RUNTEN | ERXFCON_UCEN | ERXFCON_NOTMEEN | ERXFCON_MCEN));
	enc424j600BFSReg(MACON1, MACON1_PASSALL);
#endif


	// uncomment to use auto-negotiation mode
	// Set PHY Auto-negotiation to support 10BaseT Half duplex,
	// 10BaseT Full duplex, 100BaseTX Half Duplex, 100BaseTX Full Duplex,
	// and symmetric PAUSE capability
	//enc424j600WritePHYReg(PHANA, (PHANA_ADPAUS0 | PHANA_AD100FD | PHANA_ADIEEE0) & (~(PHANA_AD10FD | PHANA_AD10 | PHANA_AD100)));
	//enc424j600WritePHYReg(PHANA, PHANA_ADPAUS0 | PHANA_AD100FD | PHANA_AD10FD | PHANA_AD10 | PHANA_AD100 | PHANA_ADIEEE0);

	// manual setting speed and duplex mode in my application
	// test loop back in PHY. Uncomment for later application
	//enc424j600WritePHYReg(PHCON1, (~PHCON1_ANEN) & (PHCON1_SPD100 | PHCON1_PFULDPX | PHCON1_PLOOPBK) ); //test internal PHY loopback
	//enc424j600WritePHYReg(PHCON1, ((~PHCON1_ANEN) & (~PHCON1_SPD100)) & PHCON1_PFULDPX ); // test PHY with 10BaseT
	enc424j600WritePHYReg(PHCON1, (~PHCON1_ANEN) & (PHCON1_SPD100 | PHCON1_PFULDPX) ); //test PHY with 100BaseTX


	// disable automatically insertion MAC address to TX packet
	enc424j600BFCReg(ECON2, ECON2_TXMAC );

	// disable automatically padding and enable automatically CRC to TX packet. Setting to accept any size of packet
	enc424j600BFCReg(MACON2, MACON2_PADCFG1 | MACON2_PADCFG0);
	enc424j600BFSReg(MACON2, MACON2_TXCRCEN | MACON2_PADCFG2 | MACON2_HFRMEN);



	// update MACON2, MABBIPG resgister
	u16 w;

	// Update MAC duplex settings to match PHY duplex setting
	w = enc424j600ReadReg(MACON2);

	//i set full duplex mode in my application
	enc424j600WriteReg(MABBIPG, 0x15);
	w |= MACON2_FULDPX;

	enc424j600WriteReg(MACON2, w);

	// Enable RX packet reception
	enc424j600BFSReg(ECON1, ECON1_RXEN);

}

void enc424j600SendSystemReset(void) {
	// Perform a reset via the SPI/PSP interface
	do {
		// Set and clear a few bits that clears themselves upon reset.
		// If EUDAST cannot be written to and your code gets stuck in this
		// loop, you have a hardware problem of some sort (SPI or PMP not
		// initialized correctly, I/O pins aren't connected or are
		// shorted to something, power isn't available, etc.)
		do {
			enc424j600WriteReg(EUDAST, 0x1234);

		} while (enc424j600ReadReg(EUDAST) != 0x1234);

		// Issue a reset and wait for it to complete
		enc424j600BFSReg(ECON2, ECON2_ETHRST);
		usleep(300);

		currentBank = 0; while ((enc424j600ReadReg(ESTAT) & (ESTAT_CLKRDY | ESTAT_RSTDONE | ESTAT_PHYRDY)) != (ESTAT_CLKRDY | ESTAT_RSTDONE | ESTAT_PHYRDY));


		usleep(300);
		// Check to see if the reset operation was successful by
		// checking if EUDAST went back to its reset default.  This test
		// should always pass, but certain special conditions might make
		// this test fail, such as a PSP pin shorted to logic high.
	} while (enc424j600ReadReg(EUDAST) != 0x0000u);


	// Really ensure reset is done and give some time for power to be stable
	usleep(1000);
}


/*
 *  Packet receive from SPI device
 */
u16 enc424j600PacketReceive(u16 currentPacketPointer, u8* packet) {
	u16 len;
	u16 newRXTail;
	RXSTATUS statusVector;

	if (!(enc424j600ReadReg(EIR) & EIR_PKTIF)) {
		return currentPacketPointer;
	}


	// Tell to Master where is the Window Read Pointer to the beginning of the receive buffer
	// alternative for function enc424j600WriteReg(ERXRDPT, currentPacketPointer);
	enc424j600ExecuteOp16(WRXRDPT, currentPacketPointer);

	enc424j600ReadMemoryWindow(RX_WINDOW, (u8*) & nextPacketPointer, sizeof (nextPacketPointer));


	enc424j600ReadMemoryWindow(RX_WINDOW, (u8*) & statusVector, sizeof (statusVector));

	//    if (statusVector.bits.ByteCount <= len) len = statusVector.bits.ByteCount;
	len = (statusVector.bits.ByteCount <= BUFFER_SIZE + 4) ? statusVector.bits.ByteCount - 4 : 0;
	enc424j600ReadMemoryWindow(RX_WINDOW, packet, len);

	//for(int i = 0; i < len; i++){
	//	xil_printf(" 0x%02X",packet[i]);
	//}
	//xil_printf("\r\n");


	newRXTail = nextPacketPointer - 2;
	//Special situation if nextPacketPointer is exactly RXSTART
	if (nextPacketPointer == ENC424J600_RXSTART)
		newRXTail = ENC424J600_RAMSIZE - 2;

	//Packet decrement
	enc424j600BFSReg(ECON1, ECON1_PKTDEC);

	//Write new RX tail
	enc424j600WriteReg(ERXTAIL, newRXTail);

	return nextPacketPointer;
}


/*
 *  Send packet to SPI device
 */
void enc424j600PacketSend(u16 len, u8* packet) {
	// Set the Window Write Pointer to the beginning of the transmit buffer
	enc424j600ExecuteOp16(WGPWRPT, ENC424J600_TXSTART);
	// Master write data onto the buffer will be sent
	enc424j600WriteMemoryWindow(GP_WINDOW, packet, len);

	// Tell the device the length of bytes will be sent out. The start address of transmit buffer was set in enc424j600Init() function
	enc424j600WriteReg(ETXLEN, len);
	//xil_printf("ETXLEN : 0x%04X\r\n", enc424j600ReadReg(ETXLEN));

	enc424j600MACFlush();

}


void enc424j600MACFlush(void) {
	u16 w;

	// Check to see if the duplex status has changed.  This can
	// change if the user unplugs the cable and plugs it into a
	// different node.  Auto-negotiation will automatically set
	// the duplex in the PHY, but we must also update the MAC
	// inter-packet gap timing and duplex state to match.
	if (enc424j600ReadReg(EIR) & EIR_LINKIF) {

		enc424j600BFCReg(EIR, EIR_LINKIF);

		// Update MAC duplex settings to match PHY duplex setting
		w = enc424j600ReadReg(MACON2);

		/* i set duplex mode in my application
		enc424j600WriteReg(MABBIPG, 0x15);
		w |= MACON2_FULDPX;
		*/

		//part to auto setting duplex mode
		if (enc424j600ReadReg(ESTAT) & ESTAT_PHYDPX) {
			// Switching to full duplex
			enc424j600WriteReg(MABBIPG, 0x15);
			w |= MACON2_FULDPX;
		} else {
			// Switching to half duplex

			enc424j600WriteReg(MABBIPG, 0x12);
			w &= ~MACON2_FULDPX;
		}

		enc424j600WriteReg(MACON2, w);

	}

	// Start the transmission, but only if we are linked.  Supressing
	// transmissing when unlinked is necessary to avoid stalling the TX engine
	// if we are in PHY energy detect power down mode and no link is present.
	// A stalled TX engine won't do any harm in itself, but will cause the
	// MACIsTXReady() function to continuously return FALSE, which will
	// ultimately stall the Microchip TCP/IP stack since there is blocking code
	// elsewhere in other files that expect the TX engine to always self-free
	// itself very quickly.
	//u16 link = enc424j600ReadReg(ESTAT);
	//link |= ESTAT_PHYLNK;
	//enc424j600WriteReg(ESTAT, link);

	if (enc424j600ReadReg(ESTAT) & ESTAT_PHYLNK){
		enc424j600BFSReg(ECON1, ECON1_TXRTS);
	}



}

void enc424j600WriteMemoryWindow(u8 window, u8 *data, u16 length) {
	u8 op = RBMUDA;

	if (window & GP_WINDOW)
		op = WBMGP;
	if (window & RX_WINDOW)
		op = WBMRX;

	enc424j600WriteN(op, data, length);
}


void enc424j600ReadMemoryWindow(u8 window, u8 *data, u16 length) {
	if (length == 0u)
		return;

	u8 op = RBMUDA;

	if (window & GP_WINDOW)
		op = RBMGP;
	if (window & RX_WINDOW)
		op = RBMRX;

	enc424j600ReadN(op, data, length);
}


/*
 *  Get standard MAC address of device
 */
void enc424j600GetMACAddr(u8 mac_addr[6]) {
	// Get MAC adress
	u16 regValue;
	regValue = enc424j600ReadReg(MAADR1);
	mac_addr[0] = ((u8*) & regValue)[0];
	mac_addr[1] = ((u8*) & regValue)[1];
	regValue = enc424j600ReadReg(MAADR2);
	mac_addr[2] = ((u8*) & regValue)[0];
	mac_addr[3] = ((u8*) & regValue)[1];
	regValue = enc424j600ReadReg(MAADR3);
	mac_addr[4] = ((u8*) & regValue)[0];
	mac_addr[5] = ((u8*) & regValue)[1];
}
/*
 *  Set manual MAC address for device if needed
 */
void enc424j600SetMACAddr(void) {
	// I used my desired MAC address here. Change to any 6 Bytes MAC address to your own application
	u16 mac_addr1 = 0x3EC8;
	u16 mac_addr2 = 0x00A7;
	u16 mac_addr3 = 0x014F;
	enc424j600WriteReg(MAADR1, mac_addr1);
	enc424j600WriteReg(MAADR2, mac_addr2);
	enc424j600WriteReg(MAADR3, mac_addr3);

}


u16 enc424j600ReadReg(u16 address) {
	u16 returnValue;
	u8 bank;

	// See if we need to change register banks
	bank = ((u8) address) & 0xE0;
	if (bank <= (0x3u << 5)) {
		if (bank != currentBank) {
			if (bank == (0x0u << 5))
				enc424j600ExecuteOp0(B0SEL);
			else if (bank == (0x1u << 5))
				enc424j600ExecuteOp0(B1SEL);
			else if (bank == (0x2u << 5))
				enc424j600ExecuteOp0(B2SEL);
			else if (bank == (0x3u << 5))
				enc424j600ExecuteOp0(B3SEL);

			currentBank = bank;
		}
		returnValue = enc424j600ExecuteOp16(RCR | (address & 0x1F), 0x0000);
	} else {
		u32 returnValue32 = enc424j600ExecuteOp32(RCRU, (u32) address);
		((u8*) & returnValue)[0] = ((u8*) & returnValue32)[1];
		((u8*) & returnValue)[1] = ((u8*) & returnValue32)[2];
	}

	return returnValue;
}

void enc424j600WriteReg(u16 address, u16 data) {
	u8 bank;

	// See if we need to change register banks
	bank = ((u8) address) & 0xE0;
	if (bank <= (0x3u << 5)) {
		if (bank != currentBank) {
			if (bank == (0x0u << 5))
				enc424j600ExecuteOp0(B0SEL);
			else if (bank == (0x1u << 5))
				enc424j600ExecuteOp0(B1SEL);
			else if (bank == (0x2u << 5))
				enc424j600ExecuteOp0(B2SEL);
			else if (bank == (0x3u << 5))
				enc424j600ExecuteOp0(B3SEL);

			currentBank = bank;
		}
		enc424j600ExecuteOp16(WCR | (address & 0x1F), data);
	} else {
		u32 data32;
		((u8*) & data32)[0] = (u8) address;
		((u8*) & data32)[1] = ((u8*) & data)[0];
		((u8*) & data32)[2] = ((u8*) & data)[1];
		enc424j600ExecuteOp32(WCRU, data32);
	}
}

u16 enc424j600ReadPHYReg(u8 address) {
	u16 returnValue;

	// Set the right address and start the register read operation
	enc424j600WriteReg(MIREGADR, 0x0100 | address);
	enc424j600WriteReg(MICMD, MICMD_MIIRD);

	// Loop to wait until the PHY register has been read through the MII
	// This requires 25.6us
	while (enc424j600ReadReg(MISTAT) & MISTAT_BUSY);

	// Stop reading
	enc424j600WriteReg(MICMD, 0x0000);

	// Obtain results and return
	returnValue = enc424j600ReadReg(MIRD);

	return returnValue;
}

void enc424j600WritePHYReg(u8 address, u16 Data) {
	// Write the register address
	enc424j600WriteReg(MIREGADR, 0x0100 | address);

	// Write the data
	enc424j600WriteReg(MIWR, Data);

	// Wait until the PHY register has been written
	while (enc424j600ReadReg(MISTAT) & MISTAT_BUSY);
}

/*
 * Set a bit mask to bits field set register
 */
void enc424j600BFSReg(u16 address, u16 bitMask) {
	u8 bank;

	// See if we need to change register banks
	bank = ((u8) address) & 0xE0;
	if (bank != currentBank) {
		if (bank == (0x0u << 5))
			enc424j600ExecuteOp0(B0SEL);
		else if (bank == (0x1u << 5))
			enc424j600ExecuteOp0(B1SEL);
		else if (bank == (0x2u << 5))
			enc424j600ExecuteOp0(B2SEL);
		else if (bank == (0x3u << 5))
			enc424j600ExecuteOp0(B3SEL);

		currentBank = bank;
	}

	enc424j600ExecuteOp16(BFS | (address & 0x1F), bitMask);
}

/*
 * Set a bit mask to bits field clear register
 */
void enc424j600BFCReg(u16 address, u16 bitMask) {
	u8 bank;

	// See if we need to change register banks
	bank = ((u8) address) & 0xE0;
	if (bank != currentBank) {
		if (bank == (0x0u << 5))
			enc424j600ExecuteOp0(B0SEL);
		else if (bank == (0x1u << 5))
			enc424j600ExecuteOp0(B1SEL);
		else if (bank == (0x2u << 5))
			enc424j600ExecuteOp0(B2SEL);
		else if (bank == (0x3u << 5))
			enc424j600ExecuteOp0(B3SEL);

		currentBank = bank;
	}

	enc424j600ExecuteOp16(BFC | (address & 0x1F), bitMask);
}




/*
 * Send opcode to slave to read N bytes back
 */

void enc424j600ReadN(u8 op, u8* data, u16 dataLen) {
	u32 ByteCount = (u32)(dataLen) + 1;
	u8 W_Buffer[ByteCount]; //first byte is opcode
	u8 R_Buffer[ByteCount];   //first byte is don't care
	W_Buffer[0] = op;
	// Issue read command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, R_Buffer, ByteCount);
	while (TransferInProgress);
	for (int i = 0; i < dataLen; i++){
		data[i] = R_Buffer[i + 1];
	}

}

/*
 * Send opcode to slave to write N bytes on slave
 */
void enc424j600WriteN(u8 op, u8* data, u16 dataLen) {
	u32 ByteCount = (u32)(dataLen) + 1;
	u8 W_Buffer[ByteCount]; //first byte is opcode
	W_Buffer[0] = op;

	for(int i = 0; i < dataLen; i++){
		W_Buffer[i + 1] = data[i];
	}

	// Issue write command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, NULL, ByteCount);
	while (TransferInProgress);

}

/**
 * Execute SPI operation
 * @variable <u8> op - operation
 */
void enc424j600ExecuteOp0(u8 op) {

	u8 W_Buffer[1] = {op};
	// Issue write command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, NULL, 1);
	while (TransferInProgress);
}

/**
 * Write data to SPI with operation
 * @variable <u8> op - SPI operation
 * @variable <u8> data - data
 */
u8 enc424j600ExecuteOp8(u8 op, u8 data) {
	u8 W_Buffer[2] = {op, data};
	u8 R_Buffer[2];   //first byte is don't care

	// Issue read command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, R_Buffer, 2);
	while (TransferInProgress);
	return R_Buffer[1];
}

/**
 * Write data to SPI with operation
 * @variable <u8> op - SPI operation
 * @variable <u16> data - data
 */
u16 enc424j600ExecuteOp16(u8 op, u16 data) {
	u16 returnValue;
	u8 W_Buffer[3] = {op, ((u8*) & data)[0], ((u8*) & data)[1]};
	u8 R_Buffer[3];   //first byte is don't care

	// Issue command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, R_Buffer, 3);
	while (TransferInProgress);
	// Read/write data
	for (int x = 0; x < 2; x++) {
		((u8*) & returnValue)[x] = R_Buffer[x + 1];
	}

	return returnValue;
}

/**
 * Write data to SPI with operation
 * @variable <u8> op - SPI operation
 * @variable <u32> data - data
 */
u32 enc424j600ExecuteOp32(u8 op, u32 data) {
	u32 returnValue;
	u8 W_Buffer[5] = {op, ((u8*) & data)[0], ((u8*) & data)[1], ((u8*) & data)[2], ((u8*) & data)[3]};
	u8 R_Buffer[5];   //first byte is don't care

	// Issue command
	TransferInProgress = TRUE;
	XSpi_Transfer(&SpiInstance, W_Buffer, R_Buffer, 5);
	while (TransferInProgress);
	// Read/write data
	for (int x = 0; x < 4; x++) {
		((u8*) & returnValue)[x] = R_Buffer[x + 1];
	}

	return returnValue;
}
