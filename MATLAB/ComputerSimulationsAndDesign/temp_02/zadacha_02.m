clc
clear
m=[];
H=[0.80 3.50 0
    0.50 1.70 0
    0 0.80 3.50];
[r,c]=size(H);
for i=1:1:r
    mt=H(1:i,1:i)
    m=[m det(mt)]
end
p=find(m<0)
[r2,c2]=size(p);
if (r2>0)|(not(isempty(p)))
    disp('sistemata e neustoichiva')
else%(r2==0)|(isempty(p))
        disp('sistemata e ustoichiva')
end