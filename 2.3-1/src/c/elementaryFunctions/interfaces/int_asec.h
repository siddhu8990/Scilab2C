#ifndef __INT_ASEC_H__
#define __INT_ASEC_H__

#include "asec.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0asecd0(in1) dasecs(in1); 

#define d2asecd2(in1,in2,in3) daseca(in1,in2[0]*in2[1],in3);

#define s0asecs0(in1) sasecs(in1); 

#define s2asecs2(in1,in2,in3) saseca(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ASEC_H__ */

