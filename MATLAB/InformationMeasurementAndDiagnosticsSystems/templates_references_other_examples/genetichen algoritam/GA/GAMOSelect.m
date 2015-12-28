function [result] = GAMOSelect ( Pareto_Fit, populSize, numPareto )
% GAMOSelect
%
% MultiObjective Select
%
% PARENTS =  GAMOSelect ( Pareto_Fit, Num_Ind, Num_Pareto )
%
%   result:
%       PARENTS 	- choosen parent chromosomes
%				  		matrix with couples [Parent1 Parent2]
%
%   arguments:
%		Pareto_Fit 	- Fitness Values of all Parents 
%       populSize   - number of couples (respectively number of children)
%		Num_Pareto  - number of individuals in Pareto Set
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003

[np,mp] = size( Pareto_Fit );

if ( np > numPareto )
	numA = numPareto;			% number of individuals in 1st Pareto Set
	numB = np - numPareto;		% number of individuals in 2nd Pareto Set
	D = numPareto;				% distance between 1st and 2nd sets
else
	numA = numPareto;
	numB = numPareto;	
	D = 0;
end

result=[];
M =  ceil(populSize/2);

while M > 0
	% random number with uniform distribution
	H = ceil(rand*numA);
	K = H;
	while (K == H)
		K = D + ceil(rand*numB);
	end

	M = M - 1;
	result = [result; H, K];
end %while

return
