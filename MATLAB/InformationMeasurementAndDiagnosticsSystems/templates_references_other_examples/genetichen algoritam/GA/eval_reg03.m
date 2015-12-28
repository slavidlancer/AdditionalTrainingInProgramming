function F = eval_reg03(X)

global Kp Ti Td

Kp = X(1);
Ti = X(2);
Td = X(3);

sim('reg02',100);

ti = 0:.05:100;
E_out = INTERP1(t_out, e_out, ti);
U_out = INTERP1(t_out, U_out, ti);

F = E_out*E_out';

F = [];

F(1) = E_out*E_out';
F(2) = U_out*U_out';

return