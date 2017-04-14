#include <math.h>
#include "asec.h"

void daseca(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dasecs(x[i]);
  }
}
