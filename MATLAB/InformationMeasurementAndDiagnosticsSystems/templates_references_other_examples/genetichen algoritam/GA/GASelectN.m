% GASelectN
%
% Normal Law Distribution Selection (Gaussian Selection)
%
% Parents =  GASelectN ( populSize, Num, StDev )
%
%   result:
%       Parents   - choosen parent chromosomes
%				    matrix with couples [Parent1 Parent2]
%
%   arguments:
%		populSize - Number of possible Parents
%       Num       - number of couples (respectively number of children)
%		StDev     - Standart Deviation
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 19.06.20003
function [result] = GASelectN ( populSize, Num, StDev )

if (nargin < 2)
    error('Wrong number of input parameters');
elseif (nargin < 3)
	StDev = 1;
end

M_C = populSize*StDev;

result=[];
num = ceil(Num/2);

while num > 0
		% random number with normal distribution
        rn = 2;
        while rn > 1
            rn = abs(randn)/4;
        end
        H = ceil ( rn * M_C);
        K = H;
        while ( K == H )
            rn = 2;
            while rn > 1
                rn = abs(randn)/4;
            end
            K = ceil ( rn * M_C);
        end
		
		result = [result; H, K];
		num=num-1;
		
end %while

return