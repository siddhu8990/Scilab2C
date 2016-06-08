#include "AVRPeripheralUART.h"

uint8 dAVRUARTTransmitu8(uint8 data)
{
 while ( !( UCSRA & (1<<UDRE)) ) ; // Wait for empty transmit buffer 
 UDR = data; // Put data into buffer, sends the data 
}
