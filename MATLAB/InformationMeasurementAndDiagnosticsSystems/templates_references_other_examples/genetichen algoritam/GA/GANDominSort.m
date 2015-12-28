function [SelParents, Pareto_Set_total] = GANDominSort (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize)
%	Genetic Algorithm
%			Non-Dominated Sorting Selection
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
[numPareto, x] = size(Pareto_Fit);
Fitness = ones(numPareto, 1);	% assigning rank to the Pareto optimal solutions
Pareto_Set_total = Pareto_Set;

i = 2;
[numNonPareto, x] = size(Non_Pareto_Set);

while ( numNonPareto>0 )
	[Pareto_Set_, Pareto_Fit_, Non_Pareto_Set, Non_Pareto_Fit]  = ...
				sortPareto( Non_Pareto_Set, Non_Pareto_Fit, [], [] );
	
	[numPareto, x] = size(Pareto_Fit_);
	Fitness = [Fitness; ones(numPareto,1)*i];
	Pareto_Set_total = [Pareto_Set_total; Pareto_Set_];
	
	[numNonPareto, x] = size(Non_Pareto_Set);

	i = i + 1;
end
	
Fitness = i - Fitness; 
% renumbering (Pareto optimal solutions receive heightest rank)

SelParents = [];

M = ceil(populSize/2);
Scale = sum(Fitness);
[Num_Par,x] = size(Fitness);

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, Fitness, Num_Par );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, Fitness, Num_Par );
	end

	M = M - 1;
	SelParents = [SelParents; H, K];
end %while

return