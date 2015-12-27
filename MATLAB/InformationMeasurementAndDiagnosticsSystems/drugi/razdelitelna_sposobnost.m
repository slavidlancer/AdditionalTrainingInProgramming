t=0:0.001:0.799;
f1=100/1.023;
f2=10/1.023;
s1=1+sin(2*pi*f1*t)+sin(2*pi*f2*t); 
y1=fft(s1,800)
Py1=y1.*conj(y1);
figure(2)
plot(Py1),grid;


t=0.8:0.001:1.023
s2=0
y2=fft(s2,224)
Py2=y2.*conj(y2); 
figure(2)
plot(Py2),grid;



s=s1+s2
plot (s)

y=fft(s,1024)
Py=y.*conj(y); 
figure(2)
plot(Py),grid;