N=16;
Fs=1024;
len_auto=1024;
t=0:0.001:1.023;
f1=100/1.024;
f2=10/1.024;
s=1+sin(2*pi*f1*t)+sin(2*pi*f2*t);
n=randn(1,1024);
s=s+n;
y=fft(s,N)
df=Fs/N;
f=0:df:Fs-df
py=y.*conj(y)
subplot 221;
plot(f,py);
title('spektralna platnost');
grid
auto=Autocorr(s,1024,1024);
subplot 222;
plot(0:len_auto-1,auto);
title('avtokorelacionna funkciq');
grid
subplot 223;
plot(0:len_auto-1,s(1:len_auto));
title('signal');
grid
qy=fft(auto,N);
subplot 224;
plot(f,qy);
title('spektralna platnost (po avtokorelacionnata funkciq)');
grid