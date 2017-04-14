#include <math.h>
#include "acosd.h"

void dacosda(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dacosds(x[i]);
  }
}
