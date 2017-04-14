#ifndef __INT_ASECH_H__
#define __INT_ASECH_H__

#include "asech.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0asechd0(in1) dasechs(in1); 

#define d2asechd2(in1,in2,in3) dasecha(in1,in2[0]*in2[1],in3);

#define s0asechs0(in1) sasechs(in1); 

#define s2asechs2(in1,in2,in3) sasecha(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ASECH_H__ */

