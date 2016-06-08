

#include "AVRPeripheralGPIO.h"

uint8 u8AVRDigitalPortSetups(uint8 port,uint8 direction)
{
 if(direction == INPUT)
  {
   /*Set port as input*/      
   if(port == PORT_A)
    {
     DDRA = 0x00;
    }
   if(port == PORT_B)
    {
     DDRB = 0x00;
    }
   if(port == PORT_C)
    {
     DDRC = 0x00;
    }
   if(port == PORT_D)
    {
     DDRD = 0x00;
    }
   }
 else
  {
   /*Set port as output*/      
   if(port == PORT_A)
    {
     DDRA = 0xFF;
    }
   if(port == PORT_B)
    {
     DDRB = 0xFF;
    }
   if(port == PORT_C)
    {
     DDRC = 0xFF;
    }
   if(port == PORT_D)
    {
     DDRD = 0xFF;
    }
   }
}   
 
