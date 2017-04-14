#ifndef __ACOSD_H__
#define __ACOSD_H__
#include "types.h"

#ifdef  __cplusplus
extern "C" {
#endif

double dacosds(double x);

void dacosda(double* x, int size, double* y); 

double sacosds(float x);

void sacosda(float* x, int size, float* y); 

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACOSD_H__ */

