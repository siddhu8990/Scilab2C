#include <math.h>
#include "acsc.h"
#include "floatComplex.h"
#include "asin.h"
#include "division.h"

floatComplex cacscs(floatComplex x) 
{
 floatComplex xinv;
 xinv = crdivs(FloatComplex(1,0),x);
 return  casins(xinv);
}
