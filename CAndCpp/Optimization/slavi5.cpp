#include <stdio.h>

int br;

float q(float x)
{
	br++;
	return(-4*x*x+64*x+50);
}

int main()
{
	int c,k,n,f[90];
	float a,b,d,dm,M,x,xe,qe,qt;
	printf("a="); scanf("%f",&a);
	printf("b="); scanf("%f",&b);
	printf("d_min="); scanf("%f",&dm);
	br=0;M=(b-a)/dm;f[1]=1;f[2]=1;n=2;
	do
	{
        n=n+1;
        f[n]=f[n-1]+f[n-2];
	}
	while(f[n]<M);
	if(f[n]>M) d=(b-a)/f[n];
	else d=dm;
	xe=a;qe=q(a);c=1;k=n-2;
	do
	{
        x=xe+c*d*f[k];qt=q(x);
        if(qt>qe)
        {
            qe=qt;xe=x;k=k-1;
        }
        else if(xe>a)
        {
            k=k-1;c=-c;
        }
        else
        {
            k=k-2;c=1;
        }
	}
	while(k>0);
    printf("Qmax=%.3f\nnameren pri x=%.6f\nza %d iteracii\n",qe,xe,br);
    return 0;
}
