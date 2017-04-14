#include <math.h>
#include "asech.h"
#include "log.h"

double sasechs(float x) 
{
 return log(sqrt((1/x)+1)*sqrt((1/x)-1)+(1/x));
}
