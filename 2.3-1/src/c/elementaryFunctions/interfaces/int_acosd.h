#ifndef __INT_ACOSD_H__
#define __INT_ACOSD_H__

#include "acosd.h"

#ifdef  __cplusplus
extern "C" {
#endif

#define d0acosdd0(in1) dacosds(in1); 

#define d2acosdd2(in1,in2,in3) dacosda(in1,in2[0]*in2[1],in3);

#define s0acosds0(in1) sacosds(in1); 

#define s2acosds2(in1,in2,in3) sacosda(in1,in2[0]*in2[1],in3);


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACOSD_H__ */

