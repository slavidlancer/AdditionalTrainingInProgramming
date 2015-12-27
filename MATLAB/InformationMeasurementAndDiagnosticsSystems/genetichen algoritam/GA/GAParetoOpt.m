function [SelParents, Pareto_Set_total] = GAParetoOpt (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize)
%	Genetic Algorithm
%			Pareto Optimality Selection
%
%	[PARENTS, GENES_ALL] = GAParetoOpt (Pareto_Set, Pareto_Fit, ...
%							Non_Pareto_Set, Non_Pareto_Fit, populSize)
%
%   result:
%       PARENTS    - choosen parent chromosomes
% 				     matrix with couples [Parent1 Parent2]
%		GENES_ALL  - List of all Genes
%
%   arguments:
%		Pareto_Set 	   - Pareto Optimal Set
%		Pareto_Fit 	   - Pareto Otpimal Fitness Values
%		Non_Pareto_Set - The other genes
%		Non_Pareto_Fit - Fitness value of Non_Pareto_Set
%       populSize 	   - Population Size
%
%   Andrey Popov                  		www.automatics.hit.bg
%   andrey.popov@gmx.net          		Last update: 27.06.2003
[numPareto, x] = size(Pareto_Set);
	
if (numPareto <= 2)		% only one member in Pareto set
	[Pareto_Set2, Pareto_Fit2, Non_Pareto_Set, Non_Pareto_Fit]  = ...
				sortPareto( Non_Pareto_Set, Non_Pareto_Fit, [], [] );
	Pareto_Fit_total = [Pareto_Fit; Pareto_Fit2];
	Pareto_Set_total = [Pareto_Set; Pareto_Set2];
else
	Pareto_Fit_total = Pareto_Fit;
	Pareto_Set_total = Pareto_Set;
end

%XXXXXXXXXXX Selection
SelParents  = GAMOSelect ( Pareto_Fit_total, populSize, numPareto );

return