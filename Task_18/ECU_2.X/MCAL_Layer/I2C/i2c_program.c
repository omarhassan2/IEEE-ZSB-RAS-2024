/* 
 * File:   i2c_program.c
 * Author: Omar Hassan
 *
 * Created on August 16, 2024, 2:54 PM
 */

#include "../bit_math.h"
#include "../mcal_std_types.h"
#include "i2c_cfg.h"
#include "i2c_private.h"
#include "i2c_interface.h"


static void I2C_ClearAndCheckFlag(void){
    //Clear Flag
    SET_BIT(I2C_TWCR,TWINT);
    //Wait Flag
    while((!READ_BIT(I2C_TWCR,TWINT)));
}
Std_ReturnType I2C_Init(void){
    /*  1-Select Prescaler
    2- Set TWBR REG
    3- Enable ACK
    4- Enable I2C
*/
    #if I2C_MODE == I2C_MASTER
    //1-Select Prescaler
    CLEAR_BIT(I2C_TWSR,TWPS0);
    CLEAR_BIT(I2C_TWSR,TWPS1);
    //2-Set TWBR REG
    I2C_TWBR = ((F_CPU/I2C_SPEED)-16)/(2*I2C_PRESCALER);
    //3- Enable ACK
    SET_BIT(I2C_TWCR,TWEA);
    //4- Enable I2C
    SET_BIT(I2C_TWCR,TWEN);
    #elif I2C_MODE == I2C_SLAVE
    //1- Enable ACK
    SET_BIT(I2C_TWCR,TWEA);
    //2- Enable I2C
    SET_BIT(I2C_TWCR,TWEN);
    #endif
    return E_OK;
}
Std_ReturnType I2C_SetSlaveAddress(uint8 Copy_u8_slaveAddress){
    // Set Slave Address
    I2C_TWAR = (Copy_u8_slaveAddress<<1);
    return E_OK;
}
Std_ReturnType I2C_Start(void){
    //1- Enable Start Condition
    SET_BIT(I2C_TWCR,TWSTA);
    I2C_ClearAndCheckFlag();
    return E_OK;
}
Std_ReturnType I2C_Stop(void){
    //1- Enable Stop Condition
    SET_BIT(I2C_TWCR,TWSTO);
    //2- Clear Flag
    SET_BIT(I2C_TWCR,TWINT);
    return E_OK;
}
Std_ReturnType I2C_WriteData(uint16 Copy_u8_slaveAddress ,uint8 Copy_u8_Data){
    if (Copy_u8_slaveAddress != NONE)
    {
        // 1- Write Slave Address
        I2C_TWDR = (Copy_u8_slaveAddress << 1);
        // 2-Set Write Operation
        CLEAR_BIT(I2C_TWDR, TWD0);
        // 3-Start Bit
        CLEAR_BIT(I2C_TWCR, TWSTA);
        I2C_ClearAndCheckFlag();
    }
        // 4- Write Data
        I2C_TWDR = Copy_u8_Data;
        I2C_ClearAndCheckFlag();
    return E_OK;
}
Std_ReturnType I2C_ReadData(uint8 Copy_u8_slaveAddress,uint8 *Copy_pu8_receivedByte){
    uint8 Local_u8_errorState = E_OK;
    if(Copy_pu8_receivedByte != NULL){
        #if I2C_MODE == I2C_MASTER
        //1- Write Slave Address
        I2C_TWDR = (Copy_u8_slaveAddress<<1);
        //2- Set Read Operation
        SET_BIT(I2C_TWDR,TWD0);
        //3-Start Bit
        CLEAR_BIT(I2C_TWCR,TWSTA);
        I2C_ClearAndCheckFlag();
        //4- Check Data Received
        I2C_ClearAndCheckFlag();
        //5-Read Data
        *Copy_pu8_receivedByte= I2C_TWDR;
        //6- Send NACK
        CLEAR_BIT(I2C_TWCR,TWEA);
        //7- Check Flag
        I2C_ClearAndCheckFlag();
        #elif I2C_MODE == I2C_SLAVE
        //Wait to recieve Slave Address
        while( (TWSR & 0xf8) != 0x60);
        I2C_ClearAndCheckFlag();
        //Wait to recieve Data
        while( (TWSR & 0xf8) != 0x80);
        *Copy_pu8_receivedByte = I2C_TWDR;
        #endif
    }else{
        Local_u8_errorState = E_NOT_OK;
    }
    return Local_u8_errorState;
}