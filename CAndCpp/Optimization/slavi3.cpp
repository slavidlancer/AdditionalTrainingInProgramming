#include <stdio.h>

int br;

float q(float x)
{
	br++;
	return(-4*x*x+64*x+50);
}

int main()
{
	float dm,x0,d,xe,qe,qold,qnew,c,x;
	printf("x0="); scanf("%f",&x0);
	printf("d="); scanf("%f",&d);
	printf("d_min="); scanf("%f",&dm);
	br=0;xe=x0;qe=q(x0);qold=qe;x=x0;c=1;
	do
	{
		x=x+d*c;qnew=q(x);
		if(qnew>qe)
		{
			qe=qnew;xe=x;
		}
		if(qnew<=qold)
		{
			c=-c;d=d/3;
		}
		qold=qnew;
	}
	while((d*3)>dm);
	printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",qe,xe,br);
	return 0;
}
