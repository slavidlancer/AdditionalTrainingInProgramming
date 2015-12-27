function F = eval_reg02(X)

global Kp Ti Td T_out
Kp = X(1);
Ti = X(2);
Td = X(3);

sim('reg02',100);

ti = 0:.05:100;
E_out = INTERP1(t_out, e_out, ti);

F = E_out*E_out';

return