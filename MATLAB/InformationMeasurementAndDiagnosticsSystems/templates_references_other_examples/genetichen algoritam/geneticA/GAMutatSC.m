% GAMutatSC
%
% Generates random Mutations when Standard CrossOver is Used
%
% FPopul = GAMutatSC ( IPopul, Bounds, Num_Mut )
%
%   result:
%       FPopul 	 - population after the mutation
%
%   parameters:
%       IPopul   - initial population
%       Bounds 	 - extendet matrix of the boundaries
%					  [ Distance Lower_Bound Upper_Bound Var_Type]
%						Distance = Upper_Bound - Lower_Bound
%						VarType: 1 - integer;  0 - float
%       Num_Mut  - total number of mutations for the population
%
%   Andrey Popov							www.automatics.hit.bg
%   andrey.popov@gmx.net                    Last update: 20.06.2003
function result = GAMutatSC(InitPopul, Bounds, num)

if nargin < 3
    error('Wrong number of input parameters. See "help GAMutatSC"');
end

result   = InitPopul;
[nb, mb] = size(Bounds);
[mg, ng] = size(InitPopul);
% mg - number of chromosomes
% ng - number of genes in a chromosome

if (nb ~=  ng)
    error('Number of bounds NOT equal to number of elements in the string');
end

while ( num > 0 )
	n = ceil(rand*ng);   % number of the gen to mutate
    m = ceil(rand*mg);   % number of the chromosome to mutate

	if ( Bounds(n,4) == 1 )	% integer
		R = round( Bounds(n,1)*rand ) + Bounds(n,2);
	else					% float
		R = Bounds(n,1)*rand + Bounds(n,2);
	end
   
    result(m,n) = R;
    
    num = num - 1;
end

return
