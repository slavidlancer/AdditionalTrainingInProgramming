clc
clear
t=[0 3 7 9 10 10.50 11 13 15 16.50 19 23 24];
tm=[-3 -7 -6 0 2 4 7 9 12 8 5 3 1];
to=[0 3 7 9 10 10.50 11 13 15 16.50 19 23 24;
   -3 -7 -6 0 2 4 7 9 12 8 5 3 1];
tz=input('t_zad=')
[ti]=find(tm==tz);
tmp=tm(ti)
vr=t(ti)
[s,sz]=size(tm);
for i=1:1:(sz-1)
   if(((tm(i)<tz)&(tm(i+1)>tz))|((tm(i)>tz)&(tm(i+1)<tz)))
      i
      it=t(i)+(t(i+1)-t(i))*(abs(tz-tm(i)))/(abs(tm(i+1)-tm(i)))
   end
end
%xi=0:0.20:24;
%yil=interp1(t,tm,xi,'linear');
%yis=interp1(t,tm,xi,'spline');
%yic=interp1(t,tm,xi,'cubic');
%plot(t,tm,'X',xi,yil,'-',xi,yis,'.',xi,yic,'o')