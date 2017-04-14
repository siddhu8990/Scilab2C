#include <math.h>
#include "acscd.h"

void sacscda(float* x, int size, float* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = sacscds(x[i]);
  }
}
