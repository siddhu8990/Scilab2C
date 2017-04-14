#include <math.h>
#include "acsc.h"

void dacsca(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dacscs(x[i]);
  }
}
