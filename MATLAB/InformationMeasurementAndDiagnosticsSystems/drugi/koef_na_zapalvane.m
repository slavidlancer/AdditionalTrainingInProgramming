n=1024;
fs=1000; fs_2=fs/2;
s=zeros(1,1024);
%zadaite koeficient na zapulvane K:
K=0;
%zadaite postoqnna sustavka A:
A=0.70;
p=K*40; step=2; j=0;
for i= 1:1024    
    if j == p
        step=-step;
    end
    if j == 40
        step=-step;
        j=0;
    end
    j=j+1;
    s(i)=step+A;
end
figure(6)
plot((0:100),s(1:101));grid on;
figure(5)
y=fft(s, 1024);
py=y.*conj(y);
f=fs_2*(0:n/2)/(n/2);
plot(f, py(1:(n/2)+1),'k');grid on;