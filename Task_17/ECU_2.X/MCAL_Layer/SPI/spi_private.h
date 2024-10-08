/* 
 * File:   spi_private.h
 * Author: Omar Hassan
 *
 * Created on August 13, 2024, 7:36 PM
 */

#ifndef SPI_PRIVATE_H
#define	SPI_PRIVATE_H

/* Section : Registers Addresses */
#define SPI_SPCR       *((volatile uint8*)0x2D)
#define SPI_SPSR       *((volatile uint8*)0x2E)
#define SPI_SPDR       *((volatile uint8*)0x2F)


/* Section : Registers Bits */
#define SPIE            7
#define SPE             6
#define DORD            5
#define MSTR            4
#define CPOL            3
#define CPHA            2
#define SPR1            1
#define SPR0            0
#define SPIF            7
#define WCOL            6
#define SPI2X           0 

/* Section : Interface Macro Declarations */
#define SPI_MASTER              1
#define SPI_SLAVE               0

#define LSB                     0
#define MSB                     1

#define LEADING_RISING          0
#define LEADING_FALLING         1

#define LEADING_SAMPLE          0
#define LEADING_SETUP           1

#define DIV_2                   0
#define DIV_4                   1
#define DIV_8                   2
#define DIV_16                  3
#define DIV_32                  4
#define DIV_64                  5
#define DIV_128                 6

#endif	/* SPI_PRIVATE_H */

