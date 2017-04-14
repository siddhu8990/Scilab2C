#include <math.h>
#include "asec.h"

void saseca(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sasecs(x[i]);
  }
}
