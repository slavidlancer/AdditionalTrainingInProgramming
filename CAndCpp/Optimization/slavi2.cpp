#include <stdio.h>

int br;

float q(float x)
{
	br++;
	return(-4*x*x+64*x+50);
}

int main()
{
	float a,b,d,dm,x,xe,qe,qt;
	int L;
	printf("a="); scanf("%f",&a);
	printf("b="); scanf("%f",&b);
	printf("L="); scanf("%d",&L);
	printf("d_min="); scanf("%f",&dm);
	br=0;xe=a;qe=q(a);
	do
	{
		x=a;d=(b-a)/L;
		while ((x+d)<=b)
		{
		x=x+d;qt=q(x);
		if(qt>qe)
		{
			qe=qt;xe=x;
		}
		}
		if((xe-d)>a) a=xe-d;
		if ((xe+d)<b) b=xe+d;
	}
	while(d>dm);
	printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",qe,xe,br);
	return 0;
}
