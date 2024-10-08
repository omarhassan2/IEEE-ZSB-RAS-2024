/* 
 * File:   i2c_private.h
 * Author: Omar Hassan
 *
 * Created on August 16, 2024, 2:52 PM
 */

#ifndef I2C_PRIVATE_H
#define	I2C_PRIVATE_H

static void I2C_enu_clearAndCheckFlag(void);

/* Section: Registers Addresses */
#define I2C_TWBR        *((volatile uint8*)0x20)   
#define I2C_TWCR        *((volatile uint8*)0x56)
#define I2C_TWSR        *((volatile uint8*)0x21)  
#define I2C_TWDR        *((volatile uint8*)0x23) 
#define I2C_TWAR        *((volatile uint8*)0x22)


/* Section: Registers Bits */
#define TWBR7                   7
#define TWBR6                   6
#define TWBR5                   5
#define TWBR4                   4
#define TWBR3                   3
#define TWBR2                   2
#define TWBR1                   1
#define TWBR0                   0
#define TWINT                   7                    
#define TWEA                    6
#define TWSTA                   5
#define TWSTO                   4
#define TWWC                    3
#define TWEN                    2
#define TWIE                    0
#define TWS7                    7                   
#define TWS6                    6
#define TWS5                    5
#define TWS4                    4
#define TWS3                    3 
#define TWPS1                   1 
#define TWPS0                   0
#define TWD0                    0     
#define TWGCE0                  0


/* Section: Macro Configurations */
#define I2C_MASTER                  1 
#define I2C_SLAVE                   0 
#define NONE                        1000

#define NO_PRESCALER                1 
#define _4_PRESCALER                4
#define _16_PRESCALER               16
#define _64_PRESCALER               64


#endif	/* I2C_PRIVATE_H */

