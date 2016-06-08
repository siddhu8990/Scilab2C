//This file defines functions prototypes related to Timer.
//
// Authors
//     Siddhesh Wani
//

#ifndef __AVRPERIPHERALUART_H__
#define __AVRPERIPHERALUART_H__

#include <avr/io.h>
#include "types.h"

#ifdef  __cplusplus
extern "C" {
#endif

//Function prototypes
uint8 u8AVRUARTSetups(uint8 mode, uint32 baudrate, uint8 stopbits, uint8 parity);

uint8 dAVRUARTTransmitu8(uint8 data);

uint8 gAVRUARTTransmitu8(uint8 *msg);

uint8 u16AVRUARTTransmitu8(uint16 data);

uint8 i16AVRUARTTransmitu8(int16 data);

uint8 u8AVRUSARTReceiveCharu8();

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__AVRUART_H__ */


