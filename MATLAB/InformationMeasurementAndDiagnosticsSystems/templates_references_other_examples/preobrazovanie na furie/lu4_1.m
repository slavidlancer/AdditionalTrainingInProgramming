x=[0.50 1 1 0.50];
N=4;
y=fft(x,N)
z=ifft(x,N)
[x*x' (1/N)*y*y']
[sum(x) y(1)]
Fs=200;
df=Fs/N;
f=0:df:Fs-df
py=y.*conj(y)
plot(f,py,'*');
grid