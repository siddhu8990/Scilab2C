#ifndef __INT_ASECD_H__
#define __INT_ASECD_H__

#include "asecd.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0asecdd0(in1) dasecds(in1); 

#define d2asecdd2(in1,in2,in3) dasecda(in1,in2[0]*in2[1],in3);

#define s0asecds0(in1) sasecds(in1); 

#define s2asecds2(in1,in2,in3) sasecda(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ASECD_H__ */

