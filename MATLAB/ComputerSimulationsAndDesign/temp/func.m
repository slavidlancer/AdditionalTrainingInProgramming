function [it,i2,iz2]=func(x2,t2)
iz=1;
b=1;
p=1;
i=t2;
while(abs(i)>=t2)
    p=p*b;
    i=(x2^b)/p;
    i2=i;
    iz=iz+i;
    iz2=iz;
    b=b+1;
end
it=b;