#include <math.h>
#include "asech.h"

void dasecha(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dasechs(x[i]);
  }
}
