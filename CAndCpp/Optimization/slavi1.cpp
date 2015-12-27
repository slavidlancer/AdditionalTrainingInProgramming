#include <stdio.h>

int br;

float q(float x)
{
	br++;
	return(-4*x*x+64*x+50);
}

int main()
{
	float a,b,dm,x,xe,qe,qt;
	printf("a="); scanf("%f",&a);
	printf("b="); scanf("%f",&b);
	printf("d_min="); scanf("%f",&dm);
	br=0;x=a;qe=q(x);xe=a;
	while((x+dm)<=b)
	{
		x=x+dm;qt=q(x);
		if(qt>qe)
		{
			qe=qt;xe=x;
		}
	}
	printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",qe,xe,br);
	return 0;
}
