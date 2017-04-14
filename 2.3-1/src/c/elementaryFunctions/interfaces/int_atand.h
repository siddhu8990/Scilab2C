#ifndef __INT_ATAND_H__
#define __INT_ATAND_H__

#include "atand.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0atandd0(in1) datands(in1); 

#define d2atandd2(in1,in2,in3) datanda(in1,in2[0]*in2[1],in3);

#define s0atands0(in1) satands(in1); 

#define s2atands2(in1,in2,in3) satanda(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ATAND_H__ */

