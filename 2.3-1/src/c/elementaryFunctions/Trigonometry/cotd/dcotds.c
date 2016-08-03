#include <math.h>
#include "cotd.h"

double dcotds(double in)
{
  return (1/tan((M_PI/180.0)*in));
}
