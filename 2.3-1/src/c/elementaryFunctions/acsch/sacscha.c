#include <math.h>
#include "acsch.h"

void sacscha(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sacschs(x[i]);
  }
}
