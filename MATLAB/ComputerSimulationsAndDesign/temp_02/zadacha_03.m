clc
clear
global P I D te he yi;
load data;
etalon2=etalon';
te=etalon2(:,1);
he=etalon2(:,2);
hms0=[1 15 2];
hms=lsqnonlin(@pidfunc,hms0);
hms
plot(te,he,'o',te,yi,'-')