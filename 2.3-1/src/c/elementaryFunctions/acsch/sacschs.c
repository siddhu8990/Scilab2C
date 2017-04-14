#include <math.h>
#include "acsch.h"

double sacschs(float x) 
{
 return  log(sqrt(1+(1/(x*x)))+(1/x));
}
