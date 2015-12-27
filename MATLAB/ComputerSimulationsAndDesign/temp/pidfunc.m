function [gr]=pidfunc(fp)
global P I D t ti ph;
P=fp(1);
I=fp(2);
D=fp(3);
ti=0:0.10:200;
[t,x,y]=sim('zadacha_19_model',200);
ph=interp1(t,y,ti);
gr=1-ph;
q=sum(gr.^2);