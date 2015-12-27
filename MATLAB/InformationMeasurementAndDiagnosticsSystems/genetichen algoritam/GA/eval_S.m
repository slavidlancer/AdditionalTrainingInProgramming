% Evauate the Current System -> search for the worst system
function [FValue] = eval_S(X)

global K A B C

Ao =  [ X(1:3); X(4:6); X(7:9) ];

Ar = A + Ao;

Asys = Ar + B*K*C;
Psys = eig(Asys);
R = sort(Psys);

GOAL = [-5; -3; -1];

f1 = norm(R(1) - GOAL(1));
f2 = norm(R(2) - GOAL(2));
f3 = norm(R(3) - GOAL(3));

FValue = -(f1 + f2 + f3);	% Maximization Problem