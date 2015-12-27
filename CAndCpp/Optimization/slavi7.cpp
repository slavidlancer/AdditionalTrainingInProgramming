#include <iostream>
#include <time.h>
#include <math.h>

using namespace std;

#define SZ 50

int br;
float b[SZ];
float x[SZ];
int n;

float q()
{
	br++;
	return(43.62-1.16*x[1]-1.17*x[2]-1.15*(x[1]*x[1])-0.61*(x[2]*x[2])-0.31*x[1]*x[2]);
}

void vector ()
{
	int i;
	float r;
	float s=0;
	for(i=1;i<=n;i++)
	{
		r=(rand()%1001/1000.-0.5)*2;
		b[i]=r;
		s=s+r*r;
	}
	s=sqrt(s);
	for(i=1;i<=n;i++)
		b[i]=b[i]/s;
}

int main()
{
	srand((unsigned)time(NULL));
	int i,m,sp,us,bn,flag,p;
	float qe,qt,xo[SZ],h[SZ],hm[SZ],xmin[SZ],xmax[SZ];
	do
	{
		printf("n=");
		scanf("%d",&n);
	}
	while(n<1);
	printf("%d\n",n);
	for(i=1;i<=n;i++)
	{
		printf("xo[%d]=",i);
		scanf("%f",&xo[i]);
		printf("h[%d]=",i);
		scanf("%f",&h[i]);
		printf("hm[%d]=",i);
		scanf("%f",&hm[i]);
		printf("xmin[%d]=",i);
		scanf("%f",&xmin[i]);
		printf("xmax[%d]=",i);
		scanf("%f",&xmax[i]);
		x[i]=xo[i];
	}
	qe=q();
	if(n==3) m=12;
	else m=2*n+4;
	do
	{
	bn=0;sp=0;us=0;
	vector();
	do
	{
	for(i=1;i<=n;i++)
	{
		x[i]=xo[i]+h[i]*b[i];
		if(x[i]>xmax[i]) x[i]=xmax[i];
		else if(x[i]<xmin[i])	x[i]=xmin[i];
	}
	qt=q();
	for(i=1;i<=n;i++)
	if(qt>qe)
	{
		bn=0; qe=qt;
		for(i=1;i<=n;i++) xo[i]=x[i];
		us=1;

	}
	else if((us==1) || ((us==0 )&& (sp==1)))
	{
		bn++; vector(); us=0; sp=0;
	}
	else
	{
		for(i=1;i<=n;i++) b[i]=-b[i];
		sp=1;
	}
	}
	while(bn<n);
	flag=0;
	for(i=1;i<=n;i++)
	{
		if(h[i]>hm[i])
		{
			h[i]=h[i]/2;
			flag=1;
		}
	}
	}
	while(flag==1);
	printf("Qmax=%.3f\nnameren za %d iteracii\n",qe,br);
	for(i=1;i<=n;i++) printf("pri Xo[%d]=%.6f\n",i,xo[i]);
	return 0;
}
