clc
clear
n=input('n=')
x=input('x=')
st=1:1:n;
den=cumprod(st)
num=x.^st
i=num./den
iz=1+sum(i)
e=exp(x)
as=abs(iz-e)
