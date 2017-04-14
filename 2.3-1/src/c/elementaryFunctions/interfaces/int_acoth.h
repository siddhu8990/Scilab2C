#ifndef __INT_ACOTH_H__
#define __INT_ACOTH_H__

#include "acoth.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0acothd0(in1) dacoths(in1); 

#define d2acothd2(in1,in2,in3) dacotha(in1,in2[0]*in2[1],in3);

#define s0acoths0(in1) sacoths(in1); 

#define s2acoths2(in1,in2,in3) sacotha(in1,in2[0]*in2[1],in3);

#define c0acothc0(in1) cacoths(in1); 

#define c2acothc2(in1,in2,in3) cacotha(in1,in2[0]*in2[1],in3);

#define z0acothz0(in1) zacoths(in1); 

#define z2acothz2(in1,in2,in3) zacotha(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACOTH_H__ */

