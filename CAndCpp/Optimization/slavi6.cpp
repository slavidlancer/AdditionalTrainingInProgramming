#include <stdio.h>

#define SZ 100

int br;
float x[SZ];


float q()
{
	br++;
	return(43.62-1.16*x[1]-1.17*x[2]-1.15*(x[1]*x[1])-0.61*(x[2]*x[2])-0.31*x[1]*x[2]);
}

int main()
{
	int i,c,n,f,bn,os,us,fl;
	float qe,qt,d[SZ],dm[SZ],x0[SZ],xe[SZ];
	do
	{
	    printf("n=");
	    scanf("%d",&n);
	}
	while(n<2);
	for(i=1;i<=n;i++)
    {
        printf("X0[%d]=",i); scanf("%f",&x0[i]);
        printf("delta[%d]=",i); scanf("%f",&d[i]);
        printf("delta_min[%d]=",i); scanf("%f",&dm[i]);
        x[i]=x0[i];xe[i]=x0[i];
    }
	br=0;qe=q();
	do
	{
        f=1;c=1;os=0;us=0;bn=0;
        do
        {
            x[f]=xe[f]+c*d[f];qt=q();
            if(qt>qe)
            {
                qe=qt;xe[f]=x[f];bn=0;us=1;
            }
            else if(os==0 && us==0)
            {
                c=-c;os=1;
            }
            else
            {
                f=f+1;
                if(f>n) f=1;
                us=0;os=0;bn++;
            }
        }
        while(bn<n);
        fl=0;
        for(i=1;i<=n;i++)
            if(d[i]>dm[i])
            {
                d[i]=d[i]/2;
                fl=1;
            }
	}
	while(fl);
    printf("Qmax=%.3f\nnameren za %d iteracii\n",qe,br);
    for(i=1;i<=n;i++)
        printf("pri Xe[%d]=%.6f\n",i,xe[i]);
    return 0;
}
