#ifndef DATA_DIODE_H_INC
#define DATA_DIODE_H_INC



#define EMT_DATA_DIODE                              (INT16U)99
#define DATA_DIODE_PD_MAX_LEN                       (INT16U)2048 // 4 x 512

#define DATA_DIODE_ACK                              0x1

#define DD_SUCCESS		                            0	
#define DD_FAILED		                            1	

#define ADDRESS_MASK 								0x3F //last 6 bits
#define DATA_LENGTH_MASK 							0x1F //last 5 bits
#define COMMAND_MASK 							    0xE0 //first 3 bits
#define RESPONSE_MASK 							    0x80 //first 1 bits

#define IO_PKT_REQUEST_BIT                          0
#define IO_PKT_RESPONSE_BIT                         1

#define HEADER_IO_PKT_SIZE 							2
#define IO_ENTRY_INDEX               		        1


int dd_write_to_process_image(INT8U* array, INT16U len, INT8U* image_ready);
int dd_write_process_data(SDeviceInfo device, INT8U addr, INT8U in_out, INT8U* io_pd_packet, INT8U len);
void dd_get_connected_device_info(INT8U devcount, SDeviceInfo *dev_infos);
void dd_print_connected_device_info(INT8U devcount, SDeviceInfo *dev_infos);





























#endif // DATA_DIODE_H_INC