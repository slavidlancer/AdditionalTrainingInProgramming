y=[-37.61;-20.17;7.31;8.39;2.79;26.60;11.10;12.78];
y1=[-38.14;-37.27;-38.31;-37.27;-36.87;-37.19];
[N,M]=size(y);
x=[-1 -1 -1; 1 -1 -1; -1 1 -1; 1 1 -1; -1 -1 1; 1 -1 1; -1 1 1; 1 1 1];
x1k=x(1:N,1:1);
x2k=x(1:N,2:2);
x3k=x(1:N,3:3);
v1=ones(N,1);
x12k=x1k.*x2k;
x13k=x1k.*x3k;
x23k=x2k.*x3k;
u=[v1 x1k x2k x3k x12k x13k x23k]
[r,e]=size(u);
b=(u'*y)/N
my1=mean(y1)
se=((y1-my1).^2)
[g,h]=size(y1)
se2=(sum(se))/(g-1)
bx=min(abs(b))
cii=1/N
ti=bx/(sqrt(se2*cii))
tt=input('T_tabli4no:');
e2=0;
for i=1:1:e
	if ti<tt 
		b(i)=0;
		e2=e2+1;
		disp('Nezna4im koeficient')
	else
		disp('Zna4im koeficient')
	end
end
yt=u*b
qs=(y-yt).^2
q=sum(qs)
sost=q/(N-(e-e2))
fi=sost/se2
ft=input('F_tabli4no:');
if fi<ft
	disp('Modela e adekvaten')	
else
	disp('Modela ne e adekvaten')
end