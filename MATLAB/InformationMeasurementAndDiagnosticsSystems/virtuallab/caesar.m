P=[0.1000    0.7000    0.8000    0.8000    1.0000    0.3000 0 -0.3000   -0.5000   -1.5000;0.1000    0.7000    0.8000    0.8000    1.0000    0.3000         0 -0.3000   -0.5000   -1.5000;1.2000    1.8000    1.6000    0.6000    0.8000    0.5000    0.2000  0.8000   -1.5000   -1.3000];
T1=[ 1     1     1     0     0     1     1     1     1     1; 0     0     0     0     0     1     1     1     1     1];
T2=[ 0     0     0     0     0     1     1     1     1     1; 0     0     0     0     0     1     1     1     1     1];
T3=[T1.*T2];
%plotpv(P,T1)
net=newp([-1.5 1;-1.5 1; -1.5,1.2],2);
linehandle=plotpc(net.IW{1},net.b{1})
%plotpv(P,T1)
linehandle=plotpc(net.IW{1},net.b{1})
E=1;
net=init(net);
linehandle=plotpc(net.IW{1},net.b{1})
while(sse(E))
   [net,Y,E]=adapt(net,P,T1)
 [net,Y,E]=adapt(net,P,T2)
    %net.adaptParam.passes = 10;
   linehandle= plotpc(net.IW{1},net.b{1},linehandle)
   drawnow
end









