/*
 * File Name:         hdl_prj\ipcore\I2C_SSM2603_v1_1\include\I2C_SSM2603_addr.h
 * Description:       C Header File
 * Created:           2020-11-19 16:10:08
*/

#ifndef I2C_SSM2603_H_
#define I2C_SSM2603_H_

#define  IPCore_Reset_I2C_SSM2603       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_I2C_SSM2603      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_I2C_SSM2603   0x8  //contains unique IP timestamp (yymmddHHMM): 2011191610
#define  Dammy_Data_I2C_SSM2603         0x104  //data register for Outport Dammy

#endif /* I2C_SSM2603_H_ */
