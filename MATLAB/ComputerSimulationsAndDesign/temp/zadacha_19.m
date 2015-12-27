clc
clear
global P I D t ti ph;
op0=[1 15 2]';
op=lsqnonlin(@pidfunc,op0);
op
plot(ti,ph,'-')