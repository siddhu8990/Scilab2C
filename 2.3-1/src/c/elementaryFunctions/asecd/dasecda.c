#include <math.h>
#include "asecd.h"

void dasecda(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dasecds(x[i]);
  }
}
