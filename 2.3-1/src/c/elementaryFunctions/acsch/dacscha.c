#include <math.h>
#include "acsch.h"

void dacscha(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dacschs(x[i]);
  }
}
