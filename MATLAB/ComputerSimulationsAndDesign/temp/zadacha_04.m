clc
clear
H=[0.80 3.50 0;
    0.01 1.70 0;
    0 0.80 3.50];
[r,s]=size(H)
m=[]
for i=1:1:r
    mt=H(1:i,1:i)
    m=[m det(mt)]
end
p=find(m<0)
[rm,sm]=size(p)
if (rm>0)&(not(isempty(p)))
    disp('sistemata e neustoichiva')
else if (rm==0)|(isempty(p))
    disp('sistemata e ustoichiva')
    end
end