function [it]=func(argx,eps)
iz=1;
b=1;
p=1;
while (abs(i)>eps)
   p=p*b;
   i=(argx^b)/p;
   iz=iz+i;
   b=b+1;
end
it=b;
