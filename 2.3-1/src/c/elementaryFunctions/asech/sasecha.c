#include <math.h>
#include "asech.h"

void sasecha(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sasechs(x[i]);
  }
}
