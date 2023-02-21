
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
 

SDeviceInfo *dev_infos;


int dd_write_to_process_image(INT8U* array, INT16U len, INT8U* image_ready) {

    INT8U device_num = array[0];
    INT8U cum_plen = 0, index, dev, addr, in_out, plen, devcount = 0;


    if (*image_ready != 1){

        devcount = RevPiDevice_getDevCnt();
        pr_err("devcount = %d\n", devcount);
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
        for (index = 1; index <= 2*(devcount-1); index++) { // count from 1 because the controller is ignored
            
            addr = (INT8U)(array[IO_ENTRY_INDEX+cum_plen] & ADDRESS_MASK);  //ignored first 1 bytes of header (dev num)
            in_out = (INT8U)((array[IO_ENTRY_INDEX+cum_plen] & RESPONSE_MASK) >> 7); //request or response packet
            plen = (INT8U)(array[IO_ENTRY_INDEX+cum_plen+1] & DATA_LENGTH_MASK);
            dev = ((index-1)/2 + 1);
            
            if (dd_write_process_data(dev_infos[dev], addr, in_out, &array[IO_ENTRY_INDEX+cum_plen+HEADER_IO_PKT_SIZE], plen) != DD_SUCCESS) {

                *image_ready = 0;
                kfree(dev_infos);
                return DD_FAILED;
            }

            cum_plen += (plen + HEADER_IO_PKT_SIZE);

            /*
            pr_err("addr %d, in_out %d, plen %d, cum_plen %d, dev %d len %d\n",addr,in_out,plen,cum_plen,dev,len);
            for(j=0;j<plen;j++){
                pr_err("io_pd_packet[%d]=%d\n",j,io_pd_packet[j]);
            } */

        } 
        
    
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