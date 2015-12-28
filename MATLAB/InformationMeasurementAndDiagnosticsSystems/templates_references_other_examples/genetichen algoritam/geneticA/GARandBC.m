% GARandBC
%
% Generates Random strings when Blend CrossOver is used
%
% FPopul =  GARandBC ( Bounds_Ext, Bounds_Stn, Num_Ind )
%
%   result:
%       FPopul 		- population of random individuals
%
%   parameters:
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
%       Num_Ind - number of randomly created individuals
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003
function [result] = GARandBC(BoundsE, BoundsS, num)

if nargin < 3
    error('Wrong number of input parameters');
end

result=[];
[nb, mb] = size(BoundsE);

BoundsS = BoundsS';

while (num > 0)
	RandStn = BoundsS(2,:) + 1;				% RANDom STaNdart chromosome (individual)
	while ( any(RandStn > BoundsS(2,:) ) )
         % the gen is out of boundaries
	    RandExt = rand(1,nb).*BoundsE(:,1)'.*1;   		% RANDom EXTended chromosome
 
		for ( i = 1:nb )
			if ( BoundsE(i,6) ~= 0 )				% the gen is not float
				RandExt(i) = round( RandExt(i) );  				
			end
		end

		RandStn = GenesToStandart( RandExt, BoundsE );         % Standart Genes
	end
	
    result = [result; RandExt];
    num = num - 1;
end

return