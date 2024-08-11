/* 
 * File:   USART_interface.h
 * Author: User
 *
 * Created on August 4, 2024, 12:27 AM
 */

#ifndef USART_INTERFACE_H
#define	USART_INTERFACE_H

#include "../mcal_std_types.h"

void USART_voidInit (void);
uint8 USART_u8SendData (uint8 Copy_u8Data);
uint8 USART_u8RecevieData (uint8 * Copy_u8ReceviedData);
uint8 USART_u8SendStringSynch (const uint8 * Copy_pchString);
uint8 USART_u8SendStringAsynch (const uint8 * Copy_pchString , void (* NotificationFunc)(void));
uint8 USART_u8ReceiveBufferSynch (uint8 * Copy_pchString , uint32 Copy_uint32BufferSize);
uint8 USART_u8ReceiveBufferAsynch (uint8 * Copy_pchString , uint32 Copy_uint32BufferSize, void (* NotificationFunc)(void));



#endif	/* USART_INTERFACE_H */

