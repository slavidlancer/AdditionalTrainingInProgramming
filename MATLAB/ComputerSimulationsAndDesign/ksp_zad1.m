clc
clear
load data1;
t=0:0.50:24;
x=y(1:49);
[n,m]=size(y)
plot(t,x,'-')
grid on
pause
hist(y,20)
my=sum(y)/n
myf=mean(y)
so=(1/(n-1))*sum((y-my).^2)
sof=std(y)^2
