#include <math.h>
#include "acosd.h"

void sacosda(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sacosds(x[i]);
  }
}
