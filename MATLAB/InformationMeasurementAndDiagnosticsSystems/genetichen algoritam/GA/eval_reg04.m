function F = eval_reg04(X)

global Kp Ti Td

Kp = X(1);Ti = X(2);Td = X(3);

sim('reg02',100);

F = [];

ti = 0:.05:100;
E_out = INTERP1(t_out, e_out, ti);
U_out = INTERP1(t_out, u_out, ti);

U = U_out > 1;	% 1 only when u_out > 1
U_OUT = U.*U_out;

F(1) = E_out*E_out';
F(2) = U_OUT*U_OUT';

return