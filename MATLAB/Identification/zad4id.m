x=[1 1.05 1.09 1.14 1.18 1.22 1.25 1.28 1.31 1.34 1.36 1.38 1.39 1.40 1.41 1.41 1.41 1.41 1.40 1.40 1.38 1.36 1.34 1.32 1.29 1.26 ...
    1.23 1.19 1.16 1.11 1.07 1.02 0.97 0.92 0.86 0.81 0.75 0.69 0.62 0.56 0.49 0.43 0.36 0.29 0.22 0.15 0.08 0.01 -0.06 -0.13 -0.20 ...
    -0.27 -0.34 -0.41 -0.48 -0.54 -0.61 -0.67 -0.73 -0.79 -0.85 -0.9 -0.96];
t0=input('�������� �0:')
taum=input('�������� ���_����:')
[m,N]=size(x);
mx=mean(x);
x0=x-mx;
for k=1:1:taum
   rx(k)=0;
   for i=1:1:(N-k)
       rx(k)=rx(k)+x0(i)*x0(i+k-1);
   end
   rx(k)=rx(k)/(N-k);
end
ro=rx/rx(1);
t=0:t0:t0*(taum-1);
plot(t,ro,'-black')
grid
[x,y]=ginput(1)
v1x=[0 x]; v2x=[x x]; v1y=[y y]; v2y=[0 y];
plot(t,ro,'-black',v1x,v1y,'-black',v2x,v2y,'-black')
grid
xlabel('���,[s]')
ylabel('��_x(���)')
title('������������ ���������� �� ������������������ �������')
text(10.3,0.04,'���_{��}=10s')