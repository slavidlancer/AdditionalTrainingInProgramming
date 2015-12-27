function [gr]=optfunc(tp)
global k T1 T2 tau te he yi;
k=tp(1);
T1=tp(2);
T2=tp(3);
tau=tp(4);
[t,x,y]=sim('ksp_zad18_ms',90);
z=[t y];
yi=table1(z,te);
gr=he-yi;
q=sum(gr.^2)
