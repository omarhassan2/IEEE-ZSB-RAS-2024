/* 
 * File:   bit_math.h
 * Author: Omar Hassan
 *
 * Created on July 10, 2024, 2:02 AM
 */

#ifndef BIT_MATH_H
#define	BIT_MATH_H

/* Section : Includes */

/* Section : Macro Declarations */
#define HWREG(_x)       (*((volatile uint8_t *)(_x)))
#define BIT_MASK    ((uint8)1)

/* Section : Macro Functions Declarations */
#define SET_BIT(REG, BIT_POSN)      (REG |= (BIT_MASK << BIT_POSN))
#define CLEAR_BIT(REG, BIT_POSN)    (REG &= ~(BIT_MASK << BIT_POSN))
#define TOGGLE_BIT(REG, BIT_POSN)   (REG ^= (BIT_MASK << BIT_POSN))
#define READ_BIT(REG, BIT_POSN)     ((REG >> BIT_POSN) & BIT_MASK)
#define IS_BIT_SET(REG,BIT_POSN)    (REG&(BIT_MASK<<BIT_POSN))>>BIT_POSN
#define IS_BIT_CLR(REG,BIT_POSN)    !((REG & (BIT_MASK << BIT_POSN )) >> BIT_POSN)
#define ROR(REG,NUM)                REG = ((REG << (REGISTER_SIZE - NUM))|(REG >> (NUM)))
#define ROL(REG,NUM)                REG = ((REG >> (REGISTER_SIZE - NUM))|(REG << (NUM)))

/* Section : Data Type Declarations */

/* Section : Function Declarations */

#endif	/* BIT_MATH_H */

