% GARandSC
%
% Generates Random strings when Standard CrossOver is Used
%
% FPopul =  GARandSC ( Bounds, Num_Ind )
%
%   result:
%       FPopul 	- population of random individuals
%
%   parameters:
%       Bounds 	- extendet matrix of the boundaries
%					[ Distance Lower_Bound Upper_Bound Var_Type]
%					Distance = Upper_Bound - Lower_Bound
%  				    VarType: 1 - integer;  0 - float
%       Num_Ind - number of randomly created individuals
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003
function [result] = GARandSC(Bounds, num)

if nargin < 2
    error('Wrong number of input parameters');
end

[nb, mb] = size(Bounds);

result = zeros(num, nb);

result(:,1:nb) = ( ones(num,1)*Bounds(:,1)' ).*rand(num,nb) + ( ones(num,1)*Bounds(:,2)' );

for ( i = 1:nb )
	if ( Bounds(i,4) == 1 )				% the gen is integer
		result(:,i) = round( result(:,i) );  				
	end
end

return