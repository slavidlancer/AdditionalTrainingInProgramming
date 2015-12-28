X=[-10 5;-5 10]
clusters=33
points=33
std_dev=0.05
P=nngenc(X,clusters,points,std_dev)
plot(P(1,:),P(2,:),'+g')
title('imput vectors')
xlabel('p(1)')
net=newc([-10 5;-5 10],33,.01)
net=init(net);
