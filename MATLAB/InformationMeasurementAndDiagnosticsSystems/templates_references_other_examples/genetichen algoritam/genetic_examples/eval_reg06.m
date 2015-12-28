function F = eval_reg06(X)

global Kp Ti Td

Kp = X(1);Ti = X(2);Td = X(3);

sim('reg02',100);

F = [];

F(1) = e_out'*e_out;

ti = 0:.05:100;
E_out = INTERP1(t_out, e_out, ti);
U_out = INTERP1(t_out, U_out, ti);
Y_out = INTERP1(t_out, Y_out, ti);

ylen = length(Y_out);
for i = ylen:-1:1
	if (Y_out(i) > 1.05 | Y_out(i) < 0.95)
		break;
	end
end

F(1) = E_out*E_out';
F(2) = ti(i);

U = U_out > 1;	% 1 only when u_out > 1
U_OUT = U.*U_out;

F(3) = U_out*U_out';

return