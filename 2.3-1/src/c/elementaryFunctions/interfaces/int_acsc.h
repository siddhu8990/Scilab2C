#ifndef __INT_ACSC_H__
#define __INT_ACSC_H__

#include "acsc.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0acscd0(in1) dacscs(in1); 

#define d2acscd2(in1,in2,in3) dacsca(in1,in2[0]*in2[1],in3);

#define s0acscs0(in1) sacscs(in1); 

#define s2acscs2(in1,in2,in3) sacsca(in1,in2[0]*in2[1],in3);

#define c0acscc0(in1) cacscs(in1); 

#define c2acscc2(in1,in2,in3) cacsca(in1,in2[0]*in2[1],in3);

#define z0acscz0(in1) zacscs(in1); 

#define z2acscz2(in1,in2,in3) zacsca(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACSC_H__ */

