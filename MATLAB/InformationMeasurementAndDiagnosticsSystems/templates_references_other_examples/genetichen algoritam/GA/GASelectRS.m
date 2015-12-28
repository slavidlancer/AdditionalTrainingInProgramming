% GASelectRS
%
% Ranking Selection + Roulette Wheel
%
% Parents =  GASelectRS ( populSize, Num, b )
%
%   result:
%       Parents   - choosen parent chromosomes
%				    matrix with couples [Parent1 Parent2]
%
%   arguments:
%		populSize - Number of possible Parents
%       Num       - number of couples (respectively number of children)
%		b		  - parameter betta
%
%	Selection probability is evaluated by:
%		P = b*(1-b)^(rank-1)
%			where rank = 1 for the best individual, 2 for the second, etc.
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 27.06.2003
function [result] = GASelectRS ( populSize, Num, b )

if (nargin < 3)
    error('Wrong number of input parameters');
end
if (b==0 | b==1)
    error ('Parameter b could not be 0 or 1. Please change options.pSelect');
end

% we need just half of the pairs --> 1 pair = 2 children
Num = ceil(Num/2);

Fit = b*(1-b).^(0:populSize - 1);

Scale = sum(Fit);

result=[];
M = Num;

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, Fit, populSize );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, Fit, populSize );
	end

	M = M - 1;
	result = [result; H, K];
end %while

return