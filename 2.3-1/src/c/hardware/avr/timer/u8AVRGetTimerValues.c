// Function to get timer count
//
// Calling Sequence
//     u8AVRGetTimerValues(timer)
//
// Parameters
//     timer: timer whose current count is to be returned (0,1,2)
//     ***Refer datasheet for more description about timer
//              
// Description
//     This function returns the count of timer specified 
//
//
// Authors
//     Ashish Kamble
//


#include "AVRPeripheralTimer.h"
#include <avr/interrupt.h>


uint16 u8AVRGetTimerValues(uint16 timer)
{   uint16_t x;
    switch(timer)
	{
		case 0:
		     {
                      x = TCNT0; 
		      break;
		     }	
		case 1:
		    {
                     unsigned char sreg;
 		     unsigned int val;
 		     sreg = SREG;
 		     cli();
 		     val = TCNT1;
 		     SREG = sreg;	
 		     sei();
                     x = val;
                     break;		   
                    }
		case 2:
		     {
                      x = TCNT2;
  		      break;
		     }
	}	    
return x;
}

