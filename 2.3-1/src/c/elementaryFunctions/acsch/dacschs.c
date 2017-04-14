#include <math.h>
#include "acsch.h"

double dacschs(double x) 
{
 return  log(sqrt(1+(1/(x*x)))+(1/x));
}
