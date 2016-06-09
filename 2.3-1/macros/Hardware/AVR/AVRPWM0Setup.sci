function AVRPWM0Setup(waveform_mode,output_mode)
//Function to Setup OC0 pin for required PWM mode
//Description
//	Every Micro controller has PWM pins which can generate varying voltages
//	from 0V-5V.This function helps to use OC0 pin to produce required 
//	output waveform by setting the waveform mode and otput mode.
//
//Parameters
//	waveform_mode:
//                   0 for Phase correct PWM Mode
//                   1 for Fast PWM Mode 
//                   2 for CTC Mode
//      output_mode:
//            For Phase Correct PWM Mode:
//                   0 for Clear OC0 on compare match when up-counting. Set OC0 on compare
//                   match when down-counting.
//                   1 for Set OC0 on compare match when up-counting. Clear OC0 on compare
//                   match when down-counting.
// 
//            For Fast PWM Mode:
//                   0 for non-inverted output i.e Clear OC0 on compare match, set OC0 at BOTTOM.
//                   1 for inverted output i.e Set OC0 on compare match, clear OC0 at BOTTOM.
//        
//            For CTC Mode:
//                   0 to Clear OC0 on compare match
//                   1 to Set OC0 on compare match
//                   2 to toggle OC0 on compare match
//    
//Example
//    AVRPWM0Setup(2,0);     //This function will select CTC waveform mode and will clear OC0 on    
//                           compare match 
//See also
//     AVRPWM0SetDuty
//
//Authors
//     Ashish Kamble
//
//This is curretly dummy function. It provides no functionality but is required 
//for providing support for generating C code for AVR.
endfunction
