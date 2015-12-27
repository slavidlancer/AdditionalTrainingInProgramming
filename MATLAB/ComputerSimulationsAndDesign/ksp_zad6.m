clc
clear
load data6;
[sz,s]=size(hs);
t=0:0.04:((sz-1)*0.04);
plot(t,hs,'-')
L=-1;
disp('diskretni intervali L')
while ((L<=0)|(rem(L,2)~=0))
L=input('L=')
end
i=0;
d=1/(L+1);
h=hs;
for j=1:1:(sz-L)
%   z=0;
%   for i=0:1:L
%      z=z+hs(i+j);
%   end
%--------------------
%   z=sum(hs(j:j+L));
%   h(j+(L/2))=d*z;
%--------------------
   h(j+(L/2))=mean(hs(j:j+L));
end
hmin=mean(h(1:L))
hmx=mean(h(sz-L:sz))
k=(hmx-hmin)/50
plot(t,hs,t,h,'*')
pause
hn=h-hmin;
hmax=mean(hn(sz-L:sz));
hnm=hn./hmax;
plot(t,hnm,'*')
maxn=zeros(sz,1);
for i=(L+1):1:(sz-L-1)
   maxn(i)=hnm(i+1)-hnm(i);
end
[a,mxni]=max(maxn);
a
ta=(mxni-1)*0.04
[vi,vis]=find(hnm>0.85);
v=hnm(vi(1))
tv=(vi(1)-1)*0.04
tau=((tv*log(1-a))-(ta*log(1-v)))/(log(1-a)-log(1-v))
tvk=-((ta-tau)/log(1-a))
numd=[k];
dend=[tvk 1];
[nump,denp]=pade(tau,3);
[numr,denr]=series(nump,denp,numd,dend);
y=step(numr,denr,t);
hnmk=hnm*k;
plot(t,y,'-',t,hnmk,'*')
