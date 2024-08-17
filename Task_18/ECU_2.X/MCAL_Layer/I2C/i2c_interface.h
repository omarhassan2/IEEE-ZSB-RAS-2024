/* 
 * File:   i2c_interface.h
 * Author: Omar Hassan
 *
 * Created on August 16, 2024, 2:54 PM
 */

#ifndef I2C_INTERFACE_H
#define	I2C_INTERFACE_H

/* Section : Includes */

/* Section : Macro Declarations */
#define NONE  1000

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
Std_ReturnType I2C_Init(void);
Std_ReturnType I2C_SetSlaveAddress(uint8 Copy_u8_slaveAddress);
Std_ReturnType I2C_Start(void);
Std_ReturnType I2C_Stop(void);
Std_ReturnType I2C_WriteData(uint16 Copy_u8_slaveAddress ,uint8 Copy_u8_Data);
Std_ReturnType I2C_ReadData(uint8 Copy_u8_slaveAddress,uint8 *Copy_pu8_receivedByte);

#endif	/* I2C_INTERFACE_H */

