#include <math.h>
#include "acscd.h"

void dacscda(double* x, int size, double* y) 
{
  int i = 0;
  for (i = 0; i < size; ++i) 
  {
    y[i] = dacscds(x[i]);
  }
}
