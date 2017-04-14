#ifndef __ACSCH_H__
#define __ACSCH_H__
#include "types.h"

#ifdef  __cplusplus
extern "C" {
#endif

double dacschs(double x);

void dacscha(double* x, int size, double* y); 

double sacschs(float x);

void sacscha(float* x, int size, float* y); 

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACSCH_H__ */

