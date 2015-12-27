n=1024;
fs=1000; fs_2=fs/2;
s=zeros(1,1024);
hs=2; ls=-2; step=0.2;
for i= 1:1023
    if s(i) >hs
        s(i) = ls;
    end
    s(i+1)=s(i)+step;
end
figure(4)
plot((0:100),s(1:101));grid on;
figure(5)
y=fft(s, 1024);
py=y.*conj(y);
f=fs_2*(0:n/2)/(n/2);
plot(f, py(1:(n/2)+1),'k');grid on;
