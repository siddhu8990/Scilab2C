#ifndef __INT_ACOTD_H__
#define __INT_ACOTD_H__

#include "acotd.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0acotdd0(in1) dacotds(in1); 

#define d2acotdd2(in1,in2,in3) dacotda(in1,in2[0]*in2[1],in3);

#define s0acotds0(in1) sacotds(in1); 

#define s2acotds2(in1,in2,in3) sacotda(in1,in2[0]*in2[1],in3);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACOTD_H__ */

