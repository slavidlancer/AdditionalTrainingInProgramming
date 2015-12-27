h=[0.0000 0.3734 1.0330 1.6848 2.2549 2.7347 3.1330 3.4621 3.7333 3.9568 4.1408 4.2925 4.4173 4.5201 ...
4.6047 4.6746 4.7320 4.7792 4.8181 4.8503 4.8767 4.8984 4.9163 4.9311 4.9433 4.9532 4.9614 4.9683 4.9739 ...
4.9784 4.9822 4.9854 4.9880 4.9900 4.9918 4.9933 4.9945 4.9953 4.9962 4.9969 4.9975 4.9978 4.9982 4.9986 ...
4.9989 4.9989 4.9991 4.9994 4.9995 4.9994 4.9995];
[m,n]=size(h);
tau=3.36;
t0=4;
d1=[5];
n1=[20.75 1];
t=0:t0:(n-1)*t0;
[dp1,np1]=pade(tau,3);
[nr,dr]=series(d1,n1,dp1,np1);
y=step(nr,dr,t);
plot(t,y,'-black',t,h,'-black')
xlabel('t,[s]')
ylabel('h(t),y(t)')
title('Sravnenie na prehodnite harakteristiki:Metod na Streic')
pause
d2=[5];
n2=[100 23.886 1];
y=step(d2,n2,t);
plot(t,y,'-black',t,h,'-black')
xlabel('t,[s]')
ylabel('h(t),y(t)')
title('Sravnenie na prehodnite harakteristiki:Grafo-analiti4en metod')
pause
d3=[5];
n3=[80.3270 24.17 1];
y=step(d3,n3,t);
plot(t,y,'-black',t,h,'-black')
xlabel('t,[s]')
ylabel('h(t),y(t)')
title('Sravnenie na prehodnite harakteristiki:Metod na Ormans')
pause
d4=[4.9995];
n4=[98.3990 68.6750 23.9846 1];
y=step(d4,n4,t);
plot(t,y,'-black',t,h,'-black')
xlabel('t,[s]')
ylabel('h(t),y(t)')
title('Sravnenie na prehodnite harakteristiki:Metod na plo6tite')