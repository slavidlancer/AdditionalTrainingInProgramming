

w=[2 2 3 2 1];
X=rand(5,30);
b=2;
T1=X(1,:).^4./w(1,1).*X(1,:)+b;
T2=X(2,:).^4./w(1,2).*X(2,:)+b;
T3=X(3,:).^4./w(1,3).*X(3,:)+b;
T4=X(4,:).^4./w(1,4).*X(4,:)+b;
T5=X(5,:).^4./w(1,5).*X(5,:)+b;

T=[T1;T2;T3;T4;T5];

nn=newff(minmax(X),[3 5],{'tansig' 'purelin'});
nn.trainParam.epochs=1500;
nn.trainParam.goal=0.01;

[nn,tr]=train(nn,X,T);
 
 