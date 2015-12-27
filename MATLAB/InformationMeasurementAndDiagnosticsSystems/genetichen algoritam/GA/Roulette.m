% Roulette Wheel
%
% Calculates which parent is taken
%
%	ParentNum = Roulette( randN, Fitness, Num_Par )
%
%   result:
%       ParentNum - choosen parent chromosome
%
%   arguments:
%		randN	- random number between 0 and sum of all Fitness functions
%		Fitness - vector with fitness functions of the parents
%		Num_Par - Number of possible Parents
%
% 
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 27.06.2003
function ParentNum = Roulette( randN, fitness, Num_Par )

W = 0; 
for i = 1:Num_Par
	if ( W >= randN )
		break;
	end
	W = W + fitness(i);
end
ParentNum = i;
return