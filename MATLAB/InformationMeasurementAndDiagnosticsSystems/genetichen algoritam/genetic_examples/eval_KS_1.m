% Evaluating the current regulator for the system
function [FValue] = eval_KS_1(xvec)

global A B C D

K = [xvec(1) xvec(2);xvec(3) xvec(4)];

X = A+B*K*C;
X = eig(X);
R = sort(X);

GOAL = [-5; -3; -1];

f1 = norm(R(1) - GOAL(1));
f2 = norm(R(2) - GOAL(2));
f3 = norm(R(3) - GOAL(3));

FValue = f1 + f2 + f3;