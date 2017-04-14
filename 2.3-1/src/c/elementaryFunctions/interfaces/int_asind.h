#ifndef __INT_ASIND_H__
#define __INT_ASIND_H__

#include "asind.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0asindd0(in1) dasinds(in1); 

#define d2asindd2(in1,in2,in3) dasinda(in1,in2[0]*in2[1],in3);

#define s0asinds0(in1) sasinds(in1); 

#define s2asinds2(in1,in2,in3) sasinda(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ASIND_H__ */

