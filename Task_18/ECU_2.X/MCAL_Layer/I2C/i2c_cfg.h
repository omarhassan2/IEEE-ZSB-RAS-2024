/* 
 * File:   i2c_cfg.h
 * Author: Omar Hassan
 *
 * Created on August 16, 2024, 2:50 PM
 */

#ifndef I2C_CFG_H
#define	I2C_CFG_H

#define F_CPU       16000000UL
#define I2C_SPEED   200 //KHZ

/*Option For Mode:
    1-I2C_MASTER
    2-I2C_SLAVE 
*/
#define I2C_MODE    I2C_MASTER

/*Option For Prescaler:
    1-NO_PRESCALER
    2-_4_PRESCALER 
    2-_16_PRESCALER 
    2-_64_PRESCALER 
*/
#define I2C_PRESCALER   NO_PRESCALER

#endif	/* I2C_CFG_H */

