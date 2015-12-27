clc
clear
t=0:1:99;
ti=0:1:1023;
tu=zeros(12,1);
tu(1)=1;
t1=ones(12);
%t1(1)=0;
a=[1 -1.11965 0.30119]
b=[0 0.10869 0.07286]
c=[1 -1 0.10]
f=1;
d=1;
th=poly2th(a,b,c,d,f,0.003,1);
u=randn(1024,1);
u2=sign(u);
ud=u.*0.003;
y=idsim(u2,th);
subplot(211)
plot(t,y(1:100),'-')
subplot(212)
plot(t,u2(1:100),'-')
pause
subplot(111)
yu2=[y u2];
[ir,R,cl]=cra(yu2,12);
yph=idsim(tu,th);
plot(t(1:12),yph,'-',t(1:12),ir,'o')
pause
yphi=cumsum(ir);
yph1=idsim(t1,th);
plot(t(1:12),yph1,'-',t(1:12),yphi,'o')
pause
[g,phiv]=spa(yu2,70);
[g1,g2]=size(g);
%pause
gm=th2ff(th);
nyqplot([g gm])
nm=armax(yu2,[2 2 2 0]);
present(nm)