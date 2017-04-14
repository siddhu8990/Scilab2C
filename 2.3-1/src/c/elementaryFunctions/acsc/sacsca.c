#include <math.h>
#include "acsc.h"

void sacsca(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sacscs(x[i]);
  }
}
