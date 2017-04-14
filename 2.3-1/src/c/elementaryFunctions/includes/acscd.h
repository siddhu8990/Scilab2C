#ifndef __ACSCD_H__
#define __ACSCD_H__
#include "types.h"
#include "floatComplex.h"
#include "doubleComplex.h"

#ifdef  __cplusplus
extern "C" {
#endif

double dacscds(double x);

void dacscda(double* x, int size, double* y); 

float sacscds(float x);

void sacscda(float* x, int size, float* y); 

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACSCD_H__ */

