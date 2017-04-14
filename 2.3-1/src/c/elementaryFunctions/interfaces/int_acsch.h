#ifndef __INT_ACSCH_H__
#define __INT_ACSCH_H__

#include "acsch.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0acschd0(in1) dacschs(in1); 

#define d2acschd2(in1,in2,in3) dacscha(in1,in2[0]*in2[1],in3);

#define s0acschs0(in1) sacschs(in1); 

#define s2acschs2(in1,in2,in3) sacscha(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACSCH_H__ */

