j1=10;
c12=100;
j2=20;
na1=1;
da1=[j1 0];
na2=c12;
da2=[1 0];
na3=1;
da3=[j2 0];
na4=[j2 0];
da4=[0 1];
[nb1,db1]=series(na2,da2,na3,da3);
[nb2,db2]=cloop(nb1,db1);
[nb3,db3]=series(na1,da1,nb2,db2);
[nb4,db4]=feedback(nb3,db3,na4,da4);
t=0:0.01:5;
y=step(nb4,db4,t);
plot(t,y,'-b')