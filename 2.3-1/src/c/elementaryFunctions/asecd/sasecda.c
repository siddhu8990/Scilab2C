#include <math.h>
#include "asecd.h"

void sasecda(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sasecds(x[i]);
  }
}
