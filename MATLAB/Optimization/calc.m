x=[0.98;
    5.5];
a=[0 -44;
    -44 91.16];
b=[-118;
    229];
c=inv(a)*b;
d=x+c
q=3*d(1)-4*d(1)*(d(2)^2)+3*(d(2)^3)-6
d=x-c
q=3*d(1)-4*d(1)*(d(2)^2)+3*(d(2)^3)-6
d=x+2*c
q=3*d(1)-4*d(1)*(d(2)^2)+3*(d(2)^3)-6
d=x-2*c
q=3*d(1)-4*d(1)*(d(2)^2)+3*(d(2)^3)-6