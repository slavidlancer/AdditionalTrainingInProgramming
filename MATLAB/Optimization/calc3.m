x1=0.3472;
x2=3.6244;
%x1=input('x1=')
%x2=input('x2=')
q1=3*(x1^2)+2*(x2^2)+3*x1-10
%x1=input('x1=')
%x2=input('x2=')
q2=-6*(x1^2)-3*(x2^2)-3*x1+10*x2+5
%x1=input('x1=')
%x2=input('x2=')
q3=-2*(x1^2)-3.6*(x2^2)-4*x1-1.5*x2+2
a1=[-3 -2 -3 -0.75];
a2=[6 3 3 -10 8.708];
a3=[2 3.6 4 1.5 2.156];
z1=a1./(-10.75);
z2=a2./(13.708);
z3=a3./(4.156);
a1=[-3 -2 -3 290];
a2=[-6 -3 -3 10 365];
a3=[-2 -3.6 -4 -1.5 445];
e1=a1./290.75;
e2=a2./373.708;
e3=a3./447.156;
s1=e1*0.3529;
s2=e2*0.1765;
s3=e3*0.4706;
f1=s1(1)+s2(1)+s3(1);
f2=s1(2)+s2(2)+s3(2);
f3=s1(3)+s2(3)+s3(3);
f4=s2(4)+s3(4);
f5=s1(4)+s2(5)+s3(5);