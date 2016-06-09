// Function to decide direction of a digital pin on AVR
//
// Calling Sequence
//     AVRDigitalPortSetup(port,direction)
//
// Parameters
//     port : port of microcontroller to be used (1 for PORTA, 2 for PORTB,...)
//     direction : direction to be set for pin (0 for input, 1 for output)
//
// Description
//     Each AVR microcontroller has pins which can be configured as digital
//     outputs/inputs. These are normally divided among some 'ports' (group of pins).
//     User has to select one of these port and which pin of that port to be 
//     used as digital output/input. Also, desired direction must be specified as 
//     'INPUT' or 'OUTPUT'.     
//
// Examples
//     AVRDigitalPortSetup(1,0);  //this function will PortA as input Port
//
// Authors
//     Siddhesh Wani
//


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
 
