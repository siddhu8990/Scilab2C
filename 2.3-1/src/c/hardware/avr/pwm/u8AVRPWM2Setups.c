#include "AVRPeripheralPWM.h"


/*
waveform_mode:
          0 for Phase correct PWM Mode
          1 for Fast PWM Mode 
          2 for CTC Mode

output_mode:
        For Phase Correct PWM Mode:
        0 for Clear OC0 on compare match when up-counting. Set OC0 on compare
        match when down-counting.
        1 for Set OC0 on compare match when up-counting. Clear OC0 on compare
        match when down-counting.
 
        For Fast PWM Mode:
        0 for non-inverted output i.e Clear OC0 on compare match, set OC0 at BOTTOM.
        1 for inverted output i.e Set OC0 on compare match, clear OC0 at BOTTOM.
        
        For CTC Mode:
        0 to Clear OC0 on compare match
        1 to Set OC0 on compare match
        2 to toggle OC0 on compare match
*/

uint8 u8AVRPWM2Setups(uint8 waveform_mode, uint8 output_mode)
{
 switch(waveform_mode)
 {
   case 0:
         TCCR2 |= (1<<WGM20);
         break;
 
   case 1:
         TCCR2 |= (1<<WGM20)|(1<<WGM21);
         break;
 
   case 2:
         TCCR2 |= (1<<WGM21);
         break;
  }
 switch(output_mode)
 {
   case 0:
         TCCR2 |= (1<<COM21);
         break;
  
   case 1:
         TCCR2 |= (1<<COM20)|(1<<COM21);
         break;
 
   case 2:
         TCCR2 |= (1<<COM20);
         break;
 }
 return 0;
}
