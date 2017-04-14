#include <math.h>
#include "acsch.h"
#include "floatComplex.h"
#include "asin.h"
#include "division.h"

floatComplex cacschs(floatComplex x) 
{
 floatComplex xinv;
 floatComplex temp;
 xinv = crdivs(FloatComplex(1,0),x);
 temp = sqrt(1+cmuls(xinv*xinv))

}





log(sqrt(1+(1/(x*x)))+(1/x));
