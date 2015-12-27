n=1024;
fs=1000; fs_2=fs/2;
f1=200; f2=300;
t=0:0.001:1.023;
s=2*sin(2*pi*f1*t)+sin(2*pi*f2*t)+0.5;
s=s+2*randn(1,length(t));
y=fft(s, 1024)/n;
py=y.*conj(y);
y1=fft(s(1:101),1024)/100;
py1=y1.*conj(y1);
auto=autocor(s,1024,50);
y2=fft(auto,1024)/50;
py2=y2.*conj(y2);
f=fs_2*(0:n/2)/(n/2);
figure(3)
plot(f,sqrt(py(1:(n/2)+1)),'m',f,sqrt(py1(1:(n/2)+1)),'.',f,sqrt(py2(1:(n/2)+1)),'-.');grid on;
title('m -  fft(1024), ... fft(100), -.- fft(autocor)');
xlabel('f, Hz');
