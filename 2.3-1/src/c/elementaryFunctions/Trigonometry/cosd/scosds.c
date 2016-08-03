#include <math.h>
#include "cosd.h"
#include "cos.h"

float		scosds(float in) {
  return (cosf((M_PI/180.0)*in));
}
