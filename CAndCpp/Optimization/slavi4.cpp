#include <stdio.h>
#include <math.h>

int br;

float q(float x)
{
	br++;
	return(-4*x*x+64*x+50);
}

int main()
{
	float a,b,dm,x1,x2,q1,q2,z1,z2;
	printf("a="); scanf("%f",&a);
	printf("b="); scanf("%f",&b);
	printf("d_min="); scanf("%f",&dm);
	br=0;z2=(float(sqrt(5))-1)/2;z1=1-z2;
	x1=a+(b-a)*z1;x2=a+(b-a)*z2;
	q1=q(x1);q2=q(x2);
	do
	{
		if(q1>q2)
		{
			b=x2;x2=x1;q2=q1;x1=a+(b-a)*z1;q1=q(x1);
		}
		else if(q1<q2)
		{
			a=x1;x1=x2;q1=q2;x2=a+(b-a)*z2;q2=q(x2);
		}
		else
		{
			a=x1;b=x2;
			x1=a+(b-a)*z1;
			x2=a+(b-a)*z2;
			q1=q(x1);q2=q(x2);
		}
	}
	while((x1-a)>dm);
	if(q1>q2) printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",q1,x1,br);
	else printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",q2,x2,br);
    return 0;
}
