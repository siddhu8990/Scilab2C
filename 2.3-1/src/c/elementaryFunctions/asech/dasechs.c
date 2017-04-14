#include <math.h>
#include "asech.h"
#include "log.h"

double dasechs(double x) 
{
 return  log(sqrt((1/x)+1)*sqrt((1/x)-1)+(1/x));
}
