#include <math.h>
#include "acsc.h"
#include "floatComplex.h"

void cacsca(floatComplex* x, int size, floatComplex* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = cacscs(x[i]);
  }
}
