function [gr]=optfunc(tp)
global k T1 T2 tau te he yi;
k=tp(1);
T1=tp(2);
T2=tp(3);
if tp(4)>=0
    tau=tp(4);
else
    tau=0;
end
[t,x,y]=sim('zadacha_18_model',70);
yi=interp1(t,y,te);
gr=he-yi;
q=sum(gr.^2)