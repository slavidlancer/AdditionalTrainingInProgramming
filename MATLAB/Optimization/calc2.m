q1=[24.44 24.85 24.73 24.88 24.55];
q2=[24.76 24.51 24.38 24.98 24.49];
q3=[22.28 21.69 21.83 22.39 22.53];
q4=[21.66 22.17 22.10 22 21.60];
qm1=mean(q1)
qm2=mean(q2)
qm3=mean(q3)
qm4=mean(q4)
qs1=std(q1)^2
qs2=std(q2)^2
qs3=std(q3)^2
qs4=std(q4)^2
qst=qs1+qs2+qs3+qs4
qs=(qs1+qs2+qs3+qs4)/4
qn=(qm1+qm2+qm3+qm4)/4
qn1=(qm1-qm2+qm3-qm4)/4
qn2=(qm1+qm2-qm3-qm4)/4
x2=input('x2=')
y=qn+qn2*x2