clc
clear
t=input('tochnost=')
%m=0;
for x=1:0.10:50
   bri=func(x,t);
   m=[m bri];
end
x=1:0.10:50;
plot(x,m,'-')