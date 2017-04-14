#include <math.h>
#include "acsc.h"
#include "doubleComplex.h"
#include "division.h"
#include "asin.h"

doubleComplex zacscs(doubleComplex x) 
{
 doubleComplex xinv;
 xinv = zrdivs(DoubleComplex(1,0),x);
 return  zasins(xinv);
}
