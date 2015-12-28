N=16;
Fs=1024;
len_auto=1024;
t=0:0.001:1.023;
f1=100/1.024;
f2=10/1.024;
s=1+sin(2*pi*f1*t)+sin(2*pi*f2*t);
y=fft(s,N)
df=Fs/N;
f=0:df:Fs-df
py=y.*conj(y)
qy=ifft(py,N);
subplot 211;
plot(f,qy);
grid
auto=Autocorr(s,1024,len_auto);
subplot 212;
plot(0:len_auto-1,auto);
grid