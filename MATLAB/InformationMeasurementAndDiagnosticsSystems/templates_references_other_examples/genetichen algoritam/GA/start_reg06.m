% Adjusting PID coeficients: min(e,tp,u)
% Calls:
%       eval_reg06
%       reg02.mdl

opt = GAopt(-5);
opt.MaxIter = 40;
opt.Select = 1;
opt.BestRate = 0.2; %10 Pareto optimal

global Kp Ti Td
x = [0 10 1e-4];
Bounds = [];
for i=1:3
	Bounds = [Bounds; x];
end

[RGenes, RFit, RecGenes, RecFit] = GAMOminBC ( 'eval_reg06', Bounds, opt);

RG = RGenes(10,:);
Kp = RG(1);Ti = RG(2);Td = RG(3);

sim('reg02',100);
figure;
subplot(211);plot(t_out,y_out);xlabel('time [s]');ylabel('Output y');
subplot(212);plot(t_out,u_out);xlabel('time [s]');ylabel('Contol u');