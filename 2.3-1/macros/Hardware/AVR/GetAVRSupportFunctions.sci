function AVRSupportFunctions = GetAVRSupportFunctions()
// -----------------------------------------------------------------
// Get list of AVR peripherals supported 
//
// Input data:
//    None
//
// Output data:
//    None
//
// Author: Siddhesh Wani  
// -----------------------------------------------------------------

AVRSupportFunctions = [
						"AVRADCSetup"
						"AVRDigitalIn"
						"AVRDigitalOut"
						"AVRDigitalSetup"
						"AVRDigitalPortSetup"
                                                "AVRTimerSetup"
						"AVRGetTimerValue"
						"AVRPWM0Setup"
						"AVRPWM0SetDuty"
						"AVRPWM1Setup"
						"AVRPWM1SetDuty"
						"AVRPWM2Setup"
						"AVRPWM2SetDuty"
						"AVRReadADC"
                                                "AVRSleep"
						"AVRUARTSetup"
						];

endfunction
