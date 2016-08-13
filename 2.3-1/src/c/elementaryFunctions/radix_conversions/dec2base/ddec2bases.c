#include <string.h>
#include <math.h>
#include "dec2base.h"
#include <stdio.h>

void ddec2bases(double in,int base,int n,char* out)
{
    int quot;
    int i=0,j=0,k=0,tmp,temp;
    quot=(int)in;
    while(quot!=0)
    {
         temp=quot%base;
      if(temp < 10)
           temp = temp + 48;
      else
         temp = temp + 55;
      out[i++]=temp;
      quot = quot/base;
    }

	if(n>i-1)
	{
		for(j=i;j<=n;j++)
		{	out[j]='0';
		//	printf("\n %c   %c ",out[j],out[i]);
		}
	}
	if(n==0)
		j=i-1;
	else
		j=n-1;
		//i=0;

	out[n]='\0';
	//for(k=0;k<=n;k++)
	//printf("\n%c",out[k]);
	//j=i-1;
	i=0;
	while(i<j)
	{
		tmp=out[i];
		//printf("\n %c",out[i]);
		out[i]=out[j];
		out[j]=tmp;
		//printf("\n %c",out[j]);
		i++;
		j--;
	}
}
