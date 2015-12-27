% GAMutatBC
%
% Generates random Mutations when Blend CrossOver is Used
%
% FPopul = GAMutatBC ( IPopul, Bounds_Ext, Bounds_Stn, Num_Mut )
%
%   result:
%       FPopul 	   - population after the mutation
%
%   parameters:
%       IPopul     - initial population
%       Bounds_Ext - extendet matrix of the boundaries
%                    [Dist  End_Flag  Multiplier  L_Bound  U_Bound  Var_Type]
%					 Dist = U_Bound - L_Bound     or    Dist = U_Bound
%					 End_Flag = 1 if this is the end of original gene
%					 Multiplier - gain for the subgene
%					 L_Bound  -  lower bound
%					 U_Bound  -  upper bound
%					 Var_Type:  0 - float;  -1 - integer;   
%       Bounds_Stn - standart matrix of the boundaries
%                   [Low High]
%       Num_Mut  - total number of mutations for the population
%
%   Andrey Popov							www.automatics.hit.bg
%   andrey.popov@gmx.net                    Last update: 22.06.2003
function [result] = GAMutatBC(InitPopul, BoundsE, BoundsS, num)

if nargin < 3
    error('Wrong number of input parameters. See "help GAmutatBC"');
end

result   = InitPopul;
[nb, mb] = size(BoundsE);
[mg, ng] = size(InitPopul);
% mg - number of InitPopul   
% ng - number of strings in a gen

if (nb ~=  ng)
    error('Number of bounds NOT equal to number of elements in the string');
end
BoundsS = BoundsS';

while ( num > 0 )
	n = ceil(rand*ng);   	% number of the gen to mutate
    m = ceil(rand*mg);   	% number of the chromosome to mutate
	GEN = InitPopul(m,:);	% taking the gen to mutate
    
	GenStn = BoundsS(2,:) + 1;

    while ( any(GenStn > BoundsS(2,:) ) )			   	% the upper boundary is exceeded
       % the gen is out of boundaries
		GEN(1,n) = rand*BoundsE(n,1);  				% mutation of the gen
		if ( BoundsE(n, 6) ~= 0 )					% extended type
	 	   GEN(1,n) = round ( GEN(1,n) );  			% gen to integer
		end
    
	    GenStn = GenesToStandart( GEN, BoundsE );    % Transform to standart InitPopul
	end    
    
    result(m,:) = GEN;
    
    num = num - 1;
end

return
