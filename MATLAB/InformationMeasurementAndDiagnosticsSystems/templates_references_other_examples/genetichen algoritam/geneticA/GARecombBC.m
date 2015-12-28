% GARecombBC
%
% Recombination - Blend CrossOver
%
% FPopul =  GARecombBC ( SelPar, IPopul, Num, VarType, Alfa )
%
%   result:
%       FPopul  - Offspring (population after CrossOver)
%
%   parameters:
%		SelPar  - matrix with selected parents [Parent1 Parent2]
%       IPopul  - Population with parent individuals ( P x N matrix ) 
%           	 	P - number of parents
%           	 	N - number of elements in chromosome
%       Num     - number of 'children' in next generation
%		VType	- variable type
%			 		0 - float;  1 - integer
%		Alfa	- exploration coeficient 
%       	 		Child1 = y * Parent1 + (1-y) * Parent2
%			 		Child2 = (1-y) * Parent1 + y * Parent2
%			 		y = (1 + 2*Alfa)*rand - Alfa
%
% Andrey Popov                        		www.automatics.hit.bg
% andrey.popov@gmx.net						Last update: 22.06.2003
function [result] = GARecomb ( SelParents, InitPopul, Num, VType, Alfa )

if (nargin < 5) 	Alfa = 0;
	if (nargin < 3)		error('Wrong number of input parameters');
	end 
end

if (nargin < 4 | isempty(VType))
	[n,m] = size(InitPopul);
	VType = ones(m,1);
end
result=[];
M = Num;	% number of childrens (remaining)
i = 1;		% parent couple number

while M > 0
	H = SelParents(i,1);
	K = SelParents(i,2);
	
	% random number for the crossover      
	RN = ( 1 + 2*Alfa)*rand - Alfa;
		
    cGen   = RN*InitPopul(H,:) + (1-RN)*InitPopul(K,:);   % current child
    result = [result; cGen];
	M      = M - 1;
	
	if ( M==0 )
	    break;
    end
		
    cGen   = (1-RN)*InitPopul(H,:) + RN*InitPopul(K,:); 
    result = [result; cGen];
    M      = M - 1;
	i      = i + 1;
end %while

for ( i = 1:length(VType) )
	if ( VType(i) == 1 )
		result(:,i) = round(result(:,i));
	end
end	

return