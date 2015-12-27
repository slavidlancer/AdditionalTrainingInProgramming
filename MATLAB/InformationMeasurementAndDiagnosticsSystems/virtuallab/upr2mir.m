P=[+0.3 +0.0 +0.1 +0.7 +0.8 +0.8 +1.0 +0.3 +0.0 -0.3 -0.5 -1.5 +0.1 +0.7 +0.8;
   +0.3 +0.0 +0.1 +0.7 +0.8 +0.8 +1.0 +0.3 +0.0 -0.3 -0.5 -1.5 +1.2 +1.8 +1.6;
   +0.5 +0.2 +1.2 +1.8 +1.6 +0.6 +0.8 +0.5 +0.2 +0.8 -1.5 -1.3 +0.3 +0.0 -0.3 ]
T=[1 0 0 0 1 0 0 1 0 1 0 1 0 1 1;0 1 1 1 0 1 0 1 0 0 1 1 1 1 1 ]
T1=[1 0 0 0 1 0 0 1 0 0 1 1 1 1 1;1 1 1 0 1 0 0 1 0 1 1 0 1 0 1]
plotpv(P,T)
net=newp([-2 2;-2 2;-2 2],2)
plotpv(P,T)
linehandle=plot(net.IW{1},net.b{1})
plotpv(P,T)
linehandle=plotpc(net.IW{1},net.b{1})
E=1
net=init(net)
linehandle=plotpc(net.IW{1},net.b{1})
while (sse(E))
   [net,Y,E]=adapt(net,P,T)
   linehandle=plotpc(net.IW{1},net.b{1},linehandle)
   drawnow
   end
 