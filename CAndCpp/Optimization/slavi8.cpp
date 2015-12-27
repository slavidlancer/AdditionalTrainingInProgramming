#include <iostream>
#include <math.h>

using namespace std;

#define SZ 50

int br,n;
float s,dx[SZ],dq[SZ],x[SZ],xmin[SZ],xmax[SZ];

float q()
{
	br++;
	return(43.62-1.16*x[1]-1.17*x[2]-1.15*(x[1]*x[1])-0.61*(x[2]*x[2])-0.31*x[1]*x[2]);
}

void ocenka()
{
	int i;
	float q1,q2;
	s=0;
	for(i=1;i<=n;i++)
	{
		x[i]=x[i]+dx[i];
		if(x[i]>xmax[i])
		{
			dq[i]=0;
			x[i]=x[i]-dx[i];
		}
		else
		{
		q1=q();
		x[i]=x[i]-2*dx[i];
		if(x[i]<xmin[i])
		{
			dq[i]=0;
			x[i]=x[i]+dx[i];
		}
		else
		{
		q2=q();
		dq[i]=(q1-q2)/(2*dx[i]);
		s=s+dq[i]*dq[i];
		x[i]=x[i]+dx[i];
		}
		}
	}
	s=sqrt(s);
	for(i=1;i<=n;i++)
		dq[i]=dq[i]/s;
}

int main()
{
	int i;
	float qe,qt,xo[SZ],xe[SZ],h,hm,ep;
	do
	{
		printf("n=");
		scanf("%d",&n);
	}
	while(n<1);
	printf("%d\n",n);
	printf("h=");
	scanf("%f",&h);
	printf("hm=");
	scanf("%f",&hm);
	printf("ep=");
	scanf("%f",&ep);
	for(i=1;i<=n;i++)
	{
		printf("xo[%d]=",i);
		scanf("%f",&xo[i]);
		printf("dx[%d]=",i);
		scanf("%f",&dx[i]);
		printf("xmin[%d]=",i);
		scanf("%f",&xmin[i]);
		printf("xmax[%d]=",i);
		scanf("%f",&xmax[i]);
		x[i]=xo[i];
		xe[i]=xo[i];
	}
	qe=q();
	do
	{
	ocenka();
	for(i=1;i<=n;i++)
	{
		x[i]=x[i]+h*dq[i];
		if(x[i]>xmax[i]) x[i]=xmax[i];
		else if(x[i]<xmin[i])	x[i]=xmin[i];
	}
	qt=q();
	if(qt>qe)
	{
		qe=qt;
		for(i=1;i<=n;i++) xe[i]=x[i];

	}
	else h=h/2;
	}
	while((2*h>hm) && (s>ep));
	printf("Qmax=%.3f\nnameren za %d iteracii\n",qe,br);
	for(i=1;i<=n;i++) printf("pri Xe[%d]=%.6f\n",i,xe[i]);
	return 0;
}
