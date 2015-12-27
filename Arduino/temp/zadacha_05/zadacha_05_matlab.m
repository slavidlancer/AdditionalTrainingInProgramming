x=[28 47 60 75 93 116 141 171 204]';
y=[0 10 15 20 25 30 35 40 45]';
U=[1 1 1 1 1 1 1 1 1]';

for i=1:1:5
	u=[u x^i];
end
B=inv(U^(-1)*U)*(U^(-1))*y;
y_ti=U*B
gr=y-y_ti
Q_ost=sum(gr.^2)
plot(y, y_ti, '-')