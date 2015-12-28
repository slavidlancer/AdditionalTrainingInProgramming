% Adjusting PID coeficients: min(e)
% Calls:
%       eval_reg02
%       reg02.mdl

opt = GAopt(-6);
opt.MaxIter = 50;
opt.Graphics = 'no';
opt.Select = 3;
opt.pSelect = 0.8;

global Kp Ti Td

Bounds = [];
for i=1:3
	Bounds = [Bounds; 0 10 1e-4];
end

RG = [];
RF = [];

for i=1:10
	[RGenes, RFit, RecGenes, RecFit] = GAminBC ( 'eval_reg02', Bounds, opt);
	RG = [RG; RGenes];
	RF = [RF; RFit];
	
	Kp = RGenes(1);
	Ti = RGenes(2);
	Td = RGenes(3);

	sim('reg02',100);
	figure(1);
	plot(t_out,y_out);xlabel('time [s]');ylabel('Output y');hold on
	figure(2);
	plot(RecFit);xlabel('iteration');ylabel('Fitness value');hold on
end