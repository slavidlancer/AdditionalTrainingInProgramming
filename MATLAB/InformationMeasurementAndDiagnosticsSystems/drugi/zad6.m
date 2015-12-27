n=1024
t=0:0.001:1.023;

fs=1000; fs_2=fs/2;
f=fs_2*(0:n/2)/(n/2)

f1=100/1.023;
f2=10/1.023;

s=1+sin(2*pi*f1*t)+sin(2*pi*f2*t);
n=randn(1,length(t))
s=s+n

y=fft(s,1024)
Py=y.*conj(y); 

figure(2)
plot(Py1),grid;

y1=fft(s(1:101),1024)/100;
py1=y1.*conj(y1);
auto=autocor(s,1024,1000);
y2=fft(auto,1024)/1000;
py2=y2.*conj(y2);
f=fs_2*(0:n/2)/(n/2)

