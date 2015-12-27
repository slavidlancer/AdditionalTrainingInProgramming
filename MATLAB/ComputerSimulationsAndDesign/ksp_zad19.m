clc
clear
global P I D t ti ph;
op=[1 15 2];
op=leastsq('pidfunc',op);
op
plot(ti,ph,'-')