function [gr]=pidfunc(fp)
global P I D t ti ph;
P=fp(1);
I=fp(2);
D=fp(3);
ti=0:0.10:200;
[t,x,y]=sim('ksp_zad19_ms',200);
%z=[t y];
%ph=table1(z,ti);
ph=interp1(t,y,ti,'linear');
%plot(t,y)
%pause
gr=1-ph;
q=sum((gr.^2))