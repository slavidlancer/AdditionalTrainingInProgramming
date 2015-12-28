function [Pareto_Set, Pareto_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, Max_Number);
% ReducePareto
%
% Reducing the number of Pareto Optimal Solutions
%
% [New_P_Set, New_P_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, Max_Number)
%
%   Output:
%       New_P_Set  - reduced Pareto Set
%       New_P_Fit  - reduced Pareto Fitness
%
%   Input:
%		Pareto_Set - Pareto Set to be reduced
%       Pareto_Fit - Pareto Fitness
%		Max_Number - Number of solutions to remain
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
[num_Pareto, num_Fit] = size (Pareto_Fit);

while (num_Pareto > Max_Number)
	D = zeros(num_Pareto, 1);	% vector with the neighbor distance
	M = zeros(num_Pareto, num_Pareto);	% matrix with distance to the other solutions
	for i = 1:num_Pareto
		for k = i:num_Pareto
			if k == i
				M(k,k) = Inf;
			else	% Euclidian distance
				M(k,i) = norm( Pareto_Fit(i,:) - Pareto_Fit(k,:) );
				M(i,k) = M(k,i);
			end
		end
	end
	for i = 1:num_Pareto
		[m1, ind1] = min(M(i,:));
		M(i,ind1) = Inf;
		[m2, ind2] = min(M(i,:));
		D(i) = ( m1 + m2 )/2;
	end
	[d, ind] = min(D);
	Pareto_Fit(ind, :) = [];
	Pareto_Set(ind, :) = [];
	num_Pareto = num_Pareto - 1;	
end

return