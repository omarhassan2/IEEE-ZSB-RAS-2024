/* 
 * File:   spi_interface.h
 * Author: Omar Hassan
 *
 * Created on August 13, 2024, 7:37 PM
 */

#ifndef SPI_INTERFACE_H
#define	SPI_INTERFACE_H

/* Section : Includes */
#include "spi_cfg.h"
#include "spi_private.h"

/* Section : Macro Declarations */

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
Std_ReturnType SPI_Init(void);
Std_ReturnType SPI_Transceive(uint8 Copy_u8_Data ,uint8 *Copy_u8_recievedData);
Std_ReturnType SPI_Disable(void);

#endif	/* SPI_INTERFACE_H */

