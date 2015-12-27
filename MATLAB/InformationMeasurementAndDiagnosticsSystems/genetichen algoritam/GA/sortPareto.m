function [Pareto_Set, Pareto_Fit, NPareto_Set, NPareto_Fit]  = ...
					sortPareto( Popul_Set, Popul_Fit, Pareto_Set, Pareto_Fit )
% sortPareto
%
% Sorting Genes acording to Pareto's criteria
%
% [Pareto_Set, Pareto_Fit, NPareto_Set, NPareto_Fit]  = ...
%					sortPareto( Popul_Set, Popul_Fit, iPareto_Set, iParetoFit )
% 
%   result:
%       Pareto_Set   - result individuals in Pareto set
%       Pareto_Fit	 - Fitness functions of current Pareto Set
%       NPareto_Set  - individuals which are non in Pareto set
%		NPareto_Fit  - Fintess functions of non Pareto individuals
%
%   arguments:
%       Popul_Set    - initial Population
%       Popul_Fit    - Fitness Function of initial Population
%       iPatero_Set  - initial members of Pareto_Set
%       iPatero_Fit  - initial fitness functions of Pareto_Set members
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 22.06.2003

[num_individ, num_genes] = size(Popul_Set);
[num_indiv, num_fitness] = size(Popul_Fit);
[num_pareto, num_fit] 	 = size(Pareto_Fit);
% num_pareto  - number of strings in Pareto Set
% num_individ - number of strings in the set
% num_fitness - number of evaluated fitness functions

NPareto_Set = [];	% Non-Pareto set (dominated solutions)
NPareto_Fit = [];

start_num = 1;
if num_pareto == 0 % if no previous Pareto Set is available
    Pareto_Fit = Popul_Fit(1,:);
    Pareto_Set = Popul_Set(1,:);
    num_pareto = 1;
    start_num  = 2;
elseif  num_fitness ~= num_fit
    error('Number of fitness functions in Popul_Fit and Pareto_Set is different');
end

for i = start_num : num_individ
    
    count_better = zeros(1,num_fitness);
    to_be_removed = [];
    flag_worst = 0;
    Equal_min  = 0;      % there are few minimumums with equal fitness values but different Popul_Set
    
    for h = 1 : num_pareto
        count_btcp = 0; % better than current pareto
        count_wtcp = 0; % worst than current pareto
        
        for k = 1 : num_fitness
            if Popul_Fit(i,k) < Pareto_Fit(h,k)
                count_better(k) = count_better(k) + 1;
                count_btcp = count_btcp + 1;
            elseif Popul_Fit(i,k) > Pareto_Fit(h,k)
                count_wtcp = count_wtcp + 1;
            else
                count_better(k) = count_better(k) + 1;
                count_btcp = count_btcp + 1;
                count_wtcp = count_wtcp + 1;
            end
        end

        if count_btcp == num_fitness            % the currently checked element in Pareto Set is totaly dominated
            to_be_removed = [to_be_removed h];
        elseif count_wtcp == num_fitness
            flag_worst = 1;
        end
        
        if Popul_Fit(i,:) == Pareto_Fit(h,:)     % The Function sets are identical
            if Popul_Set(i,:) == Pareto_Set(h,:)
            else                                % The Genes are identical
                Equal_min = 1;
                to_be_removed = to_be_removed(1:(length(to_be_removed)-1));
            end
        end
        
    end
    
    if sum(count_better) >= num_fitness*num_pareto & Equal_min == 0
        % Current Popul_Fit is better than all from Pareto_Fit
        NPareto_Set = [Pareto_Set; NPareto_Set];
        NPareto_Fit = [Pareto_Fit; NPareto_Fit];
        Pareto_Set = Popul_Set(i,:);
		Pareto_Fit = Popul_Fit(i,:);
        num_pareto = 1;
        
    elseif ( max(count_better) >= 1 & flag_worst == 0) | Equal_min
        % Current_Popul_Fit is better than some and worst than others from Pareto_Fit
        num_to_rem = length(to_be_removed);
        
        if num_to_rem ~= 0      % removing the dominated Genes from Pareto_Set
            for v = num_to_rem:-1:1
		        NPareto_Set = [NPareto_Set; Pareto_Set( to_be_removed(v),: )];
		        NPareto_Fit = [NPareto_Fit; Pareto_Fit( to_be_removed(v),: )];
                Pareto_Set( to_be_removed(v),: ) = [];
                Pareto_Fit( to_be_removed(v),: ) = [];
                num_pareto = num_pareto - 1;
            end
        end
        
        Pareto_Fit = [Pareto_Fit; Popul_Fit(i,:)];
        Pareto_Set = [Pareto_Set; Popul_Set(i,:)];
        num_pareto = num_pareto + 1;
    else
        NPareto_Set = [NPareto_Set; Popul_Set(i,:)];
        NPareto_Fit = [NPareto_Fit; Popul_Fit(i,:)];
    end

end

return