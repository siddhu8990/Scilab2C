#include<stdio.h>
#include "primes.h"
void dprimess(double in, double* out)
{
     int i,j,k,n,counter=0;
     n=(int)in;
     for(i=2;i<=n;i++)
     {
             counter=0;
             for(j=2;j<i;j++)
             {
                     if(i%j==0)
                     {
                               counter=1;
                               break;
                     }
             }
             if(counter==0)
             {
                 out[k]=i;
		 k++;
		 //printf("%f \t",out[k]);
             }
     }
}
