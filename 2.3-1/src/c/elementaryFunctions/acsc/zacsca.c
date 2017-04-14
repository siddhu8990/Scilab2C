#include <math.h>
#include "acsc.h"
#include "doubleComplex.h"

void zacsca(doubleComplex* x, int size, doubleComplex* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = zacscs(x[i]);
  }
}
