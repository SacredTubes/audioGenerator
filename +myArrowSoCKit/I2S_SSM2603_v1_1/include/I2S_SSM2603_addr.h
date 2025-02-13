/*
 * File Name:         hdl_prj\ipcore\I2S_SSM2603_v1_1\include\I2S_SSM2603_addr.h
 * Description:       C Header File
 * Created:           2020-11-19 16:00:38
*/

#ifndef I2S_SSM2603_H_
#define I2S_SSM2603_H_

#define  IPCore_Reset_I2S_SSM2603                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_I2S_SSM2603                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_I2S_SSM2603   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_I2S_SSM2603                       0xC  //contains unique IP timestamp (yymmddHHMM): 2011191600
#define  Dammy_Data_I2S_SSM2603                             0x100  //data register for Outport Dammy

#endif /* I2S_SSM2603_H_ */
