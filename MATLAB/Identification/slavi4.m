l=input('�������� ����� l:')
t0=input('�������� t0:')
z=[0.3505 0.0546 0.3757 0.8959 1.3692 1.3485 1.8359 2.2935 2.0888 3.0764 2.8600 3.4809 3.2462 3.6561 ...
3.7952 3.6780 3.8911 3.8050 3.9820 3.6835 3.7813 4.2274 3.8367 4.0191 3.6624 3.9056 3.8362 3.9410 ...
4.1911 4.1930 4.2326 4.0312 4.0998 3.7891 3.9102 4.2545 4.1802 4.0882 3.7510 4.0653 4.0784 ];
while(rem(l,2)>0)
l=input('�������� ����� l:')
end
h=z
[n,m]=size(z)
for i=1:1:(m-l)
b=z(i:i+l)
c=mean(b)
h(i+l/2)=c
end
t=0:t0:((m-1)*t0)
plot(t,z,'-black',t,h,'-black')
xlabel('t[s]')
ylabel('z(t),h(t)')
title('�������� � ��������� ��������������')