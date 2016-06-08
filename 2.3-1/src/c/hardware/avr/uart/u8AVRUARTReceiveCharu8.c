#include "AVRPeripheralUART.h"


uint8 u8AVRUSARTReceiveCharu8()
{
 while ( !(UCSRA & (1<<RXC)) ) ;  // Wait for data to be received 
 return UDR;                      // Get and return received data from buffer 
}
