/* 
 * File:   GIE.h
 * Author: Omar Hassan
 *
 * Created on July 17, 2024, 8:56 PM
 */

#ifndef GIE_H
#define	GIE_H

/* Section : Includes */
#include "../../mcal_std_types.h"
#include "../../bit_math.h"

/* Section : Macro Declarations */
#define SREG    HWREG(0x5F)
#define SREG_I  7

/* Section : Macro Functions Declarations */

/* Section : Data Type Declarations */

/* Section : Function Declarations */
void GIE_VoidEnable(void);
void GIE_VoidDisable(void);

#endif	/* GIE_H */

