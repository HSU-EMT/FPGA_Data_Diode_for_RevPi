
//* EMT Datadiode
//


#include <linux/printk.h>
#include <linux/netdevice.h>
#include <linux/vmalloc.h>

#include "common_define.h"
#include "piControl.h"
#include "data_diode.h"
#include "RevPiDevice.h"
#include "revpi_gate.h"
#include "piControlMain.h"
 
#define DEBUG_SESSION

SDeviceInfo *dev_infos;
INT8U devcount = 0;


int dd_write_to_process_image(INT8U* array, INT16U len, INT8U* image_ready) {

    INT8U device_num = (INT8U)(array[0] & DEVICE_NUM_MASK);
    INT8U gateway_present = (INT8U)(array[0] & GATEWAY_PRESENT_MASK >> 7); // 1 means present
    INT8U index, dev, addr, in_out, status;
    INT16U cum_plen = 0, plen = 0;



    if (*image_ready != 1){

        devcount = RevPiDevice_getDevCnt();
        
	    if (devcount < 0) {
            pr_err("Cannot retrieve device list\n");
		    return DD_FAILED;
	    }
	    if ((devcount - 1) != device_num) { //the controller is ignored
            pr_err("The number of device is not correct\n");
		    return DD_FAILED;
	    }


	    // Get device info
	    dev_infos = kcalloc(devcount, sizeof(SDeviceInfo), GFP_KERNEL);
	    if (!dev_infos){
            pr_err("Out of memory\n");
            return DD_FAILED;
        }
	    dd_get_connected_device_info(devcount, dev_infos); 
        //dd_print_connected_device_info(devcount, dev_infos); //test
        *image_ready = 1;
    }


    if (*image_ready == 1) {
        for (index = 1; index <= 2*(devcount-1-gateway_present); index++) { // count from 1 because the controller is ignored
            
            addr = (INT8U)(array[IO_ENTRY_INDEX+cum_plen] & ADDRESS_MASK);  //ignored first 1 bytes of header (dev num)
            in_out = (INT8U)((array[IO_ENTRY_INDEX+cum_plen] & RESPONSE_MASK) >> 7); //request or response packet
            plen = (INT16U)(array[IO_ENTRY_INDEX+cum_plen+1] & DATA_LENGTH_MASK);
            dev = ((index-1)/2 + 1);
            
            status = dd_write_process_data(dev_infos[dev], addr, in_out, &array[IO_ENTRY_INDEX+cum_plen+HEADER_IO_PKT_SIZE], plen);
            if ( status != DD_SUCCESS) {
                *image_ready = 0;
                kfree(dev_infos);
                return DD_FAILED;
            }
            
            cum_plen += (plen + HEADER_IO_PKT_SIZE); 

        } 
        if (gateway_present){
            for (index = 0; index <= 1; index++){

                addr = (INT8U)(array[IO_ENTRY_INDEX+cum_plen] & ADDRESS_MASK);
                in_out = (INT8U)((array[IO_ENTRY_INDEX+cum_plen] & RESPONSE_MASK) >> 7);
                plen = (INT16U)((array[IO_ENTRY_INDEX+cum_plen+2] << 8 ) | array[IO_ENTRY_INDEX+cum_plen+1]);

                status = dd_write_process_data(dev_infos[devcount-1], addr, in_out, &array[IO_ENTRY_INDEX+cum_plen+HEADER_GATEWAY_PKT_SIZE], plen);
                if ( status != DD_SUCCESS) {
                    *image_ready = 0;
                    kfree(dev_infos);
                    return DD_FAILED;
                }
                cum_plen += (plen + HEADER_GATEWAY_PKT_SIZE); 

            }

        }


#ifdef DEBUG_SESSION
        if (array[IO_ENTRY_INDEX+HEADER_GATEWAY_PKT_SIZE] != 0x00) { //change first byte in packet payload of gateway
            rt_mutex_lock(&piDev_g.lockPI); 
			memset(&piDev_g.ai8uPI[dev_infos[0].i16uOutputOffset], 0x40, 1);	// is the offset of variable RevPiLED, change bit 6 to 
	        rt_mutex_unlock(&piDev_g.lockPI);
        }else{
            rt_mutex_lock(&piDev_g.lockPI); 
			memset(&piDev_g.ai8uPI[dev_infos[0].i16uOutputOffset], 0x00, 1);	// is the offset of variable RevPiLED, change bit 6 to 
	        rt_mutex_unlock(&piDev_g.lockPI);      
        }

#endif

        
        if ((cum_plen + 1) > len) {
            pr_err("The number of elements in data array is not correct\n");
            *image_ready = 0;
            kfree(dev_infos);
		    return DD_FAILED;
        }

    }
    return DD_SUCCESS;

}

int dd_write_process_data(SDeviceInfo device, INT8U addr, INT8U in_out, INT8U* io_pd_packet, INT8U plen){
    

    //pr_err("device.i8uAddress %d, addr %d, in_out %d, plen %d, device.i16uOutputLength %d, device.i16uInputLength %d",device.i8uAddress, addr, in_out, plen, device.i16uOutputLength, device.i16uInputLength);

    

    if (device.i8uAddress != addr){

        pr_err("The address of device is not the same as the address in process image\n");
        return DD_FAILED;

    } else {
        if ((in_out == IO_PKT_REQUEST_BIT)&&(plen <= device.i16uOutputLength)){

            rt_mutex_lock(&piDev_g.lockPI); 
			memcpy(&piDev_g.ai8uPI[device.i16uOutputOffset], io_pd_packet, plen);	
	        rt_mutex_unlock(&piDev_g.lockPI);     

        }
        else if ((in_out == IO_PKT_RESPONSE_BIT)&&(plen <= device.i16uInputLength)){

            rt_mutex_lock(&piDev_g.lockPI); 
			memcpy(&piDev_g.ai8uPI[device.i16uInputOffset], io_pd_packet, plen);	
	        rt_mutex_unlock(&piDev_g.lockPI);

        } else {
            return DD_FAILED;
        }

        
        
    } 
    return DD_SUCCESS;
}


void dd_get_connected_device_info(INT8U devcount, SDeviceInfo *dev_infos){
    int i;
    
	for (i = 0; i < devcount; i++) {
		dev_infos[i].i8uAddress = RevPiDevice_getDev(i)->i8uAddress;
		dev_infos[i].i8uActive = RevPiDevice_getDev(i)->i8uActive;
		dev_infos[i].i32uSerialnumber = RevPiDevice_getDev(i)->sId.i32uSerialnumber;
		dev_infos[i].i16uModuleType = RevPiDevice_getDev(i)->sId.i16uModulType;
		dev_infos[i].i16uHW_Revision = RevPiDevice_getDev(i)->sId.i16uHW_Revision;
		dev_infos[i].i16uSW_Major = RevPiDevice_getDev(i)->sId.i16uSW_Major;
		dev_infos[i].i16uSW_Minor = RevPiDevice_getDev(i)->sId.i16uSW_Minor;
		dev_infos[i].i32uSVN_Revision = RevPiDevice_getDev(i)->sId.i32uSVN_Revision;
		dev_infos[i].i16uInputLength = RevPiDevice_getDev(i)->sId.i16uFBS_InputLength;
		dev_infos[i].i16uInputOffset = RevPiDevice_getDev(i)->i16uInputOffset;
		dev_infos[i].i16uOutputLength = RevPiDevice_getDev(i)->sId.i16uFBS_OutputLength;
		dev_infos[i].i16uOutputOffset = RevPiDevice_getDev(i)->i16uOutputOffset;
		dev_infos[i].i16uConfigLength = RevPiDevice_getDev(i)->i16uConfigLength;
		dev_infos[i].i16uConfigOffset = RevPiDevice_getDev(i)->i16uConfigOffset;
		dev_infos[i].i8uModuleState = RevPiDevice_getDev(i)->i8uModuleState;
    }
    
}

void dd_print_connected_device_info(INT8U devcount, SDeviceInfo *dev_infos){
    int i;
    pr_err("start device informations\n");
	for (i = 0; i < devcount; i++) {
        pr_warn("i8uAddress %d i8uActive %d i16uInputOffset %d i16uOutputOffset %d\n", dev_infos[i].i8uAddress,dev_infos[i].i8uActive,dev_infos[i].i16uInputOffset,dev_infos[i].i16uOutputOffset);
    }
    pr_err("end device informations\n");
    
}
