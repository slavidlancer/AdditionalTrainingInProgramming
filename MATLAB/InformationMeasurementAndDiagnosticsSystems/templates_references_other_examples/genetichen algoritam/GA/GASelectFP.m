% GASelectFP
%
% Fitness Proportional Select + Roulette Wheel
%
% Parents  =  GASelectFP ( Fitness, Num )
%
%   result:
%       Parents - choosen parent chromosomes
%				  matrix with couples [Parent1 Parent2]
%
%   arguments:
%		Fitness - Fitness Values of all Parents 
%       Num     - number of children chromosomes to be produced
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 19.06.2003
function [result] = GASelectFP ( Fitness, Num, param )

if (nargin < 2)
    error('Wrong number of input parameters');
end

% we need just half of the pairs --> 1 pair = 2 children
Num = ceil(Num/2);

[ num, N ] = size(Fitness);

% finding the sum of positiv and negative Fitness functions 
LB=0; UB=0;    % Lower and Upper Boundary
for i = 1:num
	if ( Fitness(i) > 0 )
		UB = UB + Fitness(i);
	else
		LB = LB + Fitness(i);
	end
end

% recalculating the Fitness values
fit_new = (UB - LB)*ones(num,1) - Fitness;
Scale = sum(fit_new);

result=[];
M = Num;

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, fit_new, num );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, fit_new, num );
	end

	M = M - 1;
	result = [result; H, K];
end %while

return