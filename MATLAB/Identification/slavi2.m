h=[0.0000 0.3734 1.0330 1.6848 2.2549 2.7347 3.1330 3.4621 3.7333 3.9568 4.1408 4.2925 4.4173 4.5201 ...
4.6047 4.6746 4.7320 4.7792 4.8181 4.8503 4.8767 4.8984 4.9163 4.9311 4.9433 4.9532 4.9614 4.9683 4.9739 ...
4.9784 4.9822 4.9854 4.9880 4.9900 4.9918 4.9933 4.9945 4.9953 4.9962 4.9969 4.9975 4.9978 4.9982 4.9986 ...
4.9989 4.9989 4.9991 4.9994 4.9995 4.9994 4.9995];
T0=4;
u=1;
[m,n]=size(h);
a0=u/h(n)
y=h(n)-h;
y(n+1)=0;
p(n+1)=0;
for i=n:-1:1
p(i)=p(i+1)+((y(i)+y(i+1))*T0)/2;
end
a1=(a0*p(1))/h(n)
k(n+1)=0;
p(n+1)=0;
for i=n:-1:1
k(i)=k(i+1)+((p(i)+p(i+1))*T0)/2;
end
a2=(-a0*k(1)+a1*p(1))/h(n)
m(n+1)=0;
k(n+1)=0;
for i=n:-1:1
m(i)=m(i+1)+((k(i)+k(i+1))*T0)/2;
end
a3=(a0*m(1)-a1*k(1)+a2*p(1))/h(n)
k=1/a0
a1=a1/a0
a2=a2/a0
a3=a3/a0