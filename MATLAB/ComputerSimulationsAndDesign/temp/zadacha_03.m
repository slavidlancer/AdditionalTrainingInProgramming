clc
clear
t=input('tochnost=')
m=[];
ia=[];
iza=[];
for x=1:0.10:50
    [bri,i,iz]=func(x,t);
    ia=[ia i];
    iza=[iza iz];
    m=[m bri];
end
x=1:0.10:50;
plot(x,m,'-')
pause
plot(ia,iza,'o')