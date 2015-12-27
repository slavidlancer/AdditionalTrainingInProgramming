function [gr]=pidfunc(fp)
global P I D te he yi;
P=fp(1);
I=fp(2);
D=fp(3);
[t,x,y]=sim('zadacha_03_model',100);
yi=interp1(t,y,te);
gr=he-yi;
q=sum(gr.^2)
plot(te,he,'o',te,yi,'-')
pause