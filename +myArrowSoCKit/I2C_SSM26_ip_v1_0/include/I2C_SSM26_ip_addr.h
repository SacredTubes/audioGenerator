/*
 * File Name:         hdl_prj_i2c\ipcore\I2C_SSM26_ip_v1_0\include\I2C_SSM26_ip_addr.h
 * Description:       C Header File
 * Created:           2020-11-10 18:30:19
*/

#ifndef I2C_SSM26_IP_H_
#define I2C_SSM26_IP_H_

#define  IPCore_Reset_I2C_SSM26_ip       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_I2C_SSM26_ip      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_I2C_SSM26_ip   0x8  //contains unique IP timestamp (yymmddHHMM): 2011101830

#endif /* I2C_SSM26_IP_H_ */
