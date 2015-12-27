N=12;
Fs=120;
t=0:0.001:1.023;
f1=100/1.024;
f2=10/1.024;
s=1+sin(2*pi*f1*t)+sin(2*pi*f2*t);
y=fft(s,N)
[s*s' (1/N)*y*y']
df=Fs/N;
f=0:df:Fs-df
py=y.*conj(y)
plot(f,py,'*');
grid