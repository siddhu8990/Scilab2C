#include "sec.h"
#include "cos.h"
#include <math.h>
#include "doubleComplex.h"
#include "division.h"

doubleComplex zsecs(doubleComplex z)
{
	
	doubleComplex out;
	out = zrdivs(DoubleComplex(1,0),zcoss(z));
	return out;
}
