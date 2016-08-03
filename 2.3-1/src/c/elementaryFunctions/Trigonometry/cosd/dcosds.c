#include <math.h>
#include "cos.h"
#include "cosd.h"

double	       dcosds(double in) {
  return (cos((M_PI/180.0)*in));
}
