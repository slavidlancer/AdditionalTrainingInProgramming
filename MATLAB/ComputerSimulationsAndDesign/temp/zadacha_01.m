clc
clear
load data1.mat;
y;
[r,c]=size(y);
t=0:0.50:24;
y2=y(1:49);
plot(t,y2,'-')
pause
hist(y,20)
my=sum(y)/r
myf=mean(y)
sy2=sum((y-my).^2)/(r-1)
sy2f=std(y)^2