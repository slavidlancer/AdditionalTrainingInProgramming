clc
clear
load d1.mat;
global k T1 T2 tau te he yi;
etalon2=etalon';
te=etalon2(:,1);
he=etalon2(:,2);
hms0=[6 1 1 2.48]';
hms=lsqnonlin(@optfunc,hms0);
hms
plot(te,yi,'r-',te,he,'b-')