#include <stdio.h>
#include <math.h>
#include "factorial.h"

float sfactorials(float in)
{
	int i,n,factorial=1;
	n=(int)in;
    if (n < 0)
        printf("Error! Factorial of a negative number doesn't exist.");
    else
    {
        for(i=1; i<=n; i++)
        {
            factorial *= i;
        }
    }

    return factorial;
}
