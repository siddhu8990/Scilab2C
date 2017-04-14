#include <math.h>
#include "acscd.h"

double dacscds(double x) 
{
 return  ((asin(1/x)*180)/3.14159265359);
}
