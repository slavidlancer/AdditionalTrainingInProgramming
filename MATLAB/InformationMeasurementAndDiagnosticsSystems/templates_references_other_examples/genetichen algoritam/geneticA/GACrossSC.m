% GACrossSC
%
% CrossOver Operation - Standard Crossover
%
% FPopul =  GACrossSC ( SelPar, IPopul, Num, Mask )
%
%   result:
%       FPopul  - Offspring (population after CrossOver)
%
%   parameters:
%		SelPar  - matrix with selected parents [Parent1 Parent2]
%       IPopul  - Population with parent individuals ( P x N matrix ) 
%           	 	P - number of parents
%           	 	N - number of elements in chromosome
%       Num     - number in 'children' in next generation
%       Mask    - 1xN boolean vector - mask showing which elements are changed in gen
%               	if MASK is empty or missing than random mask is used
%
%   Andrey Popov							www.automatics.hit.bg
%   andrey.popov@gmx.net                    Last update: 22.06.2003
function [result] = GACrossSC ( SelParents, InitPopul, Num, Mask )

	if (nargin < 3)
 	   error('Wrong number of input parameters in GACrossSC');
	end

	[ m,N ] = size(InitPopul);
	if (m==1)
		error('Only 1 gen in GENS matrix');
	end
	result=[];

	if ( nargin == 3 & ~isempty(Mask) ) | ( N == 2 )
		% Used Defined crossover Mask is used
		if (N == 2)
			Mask = [1 0];
		else
			[ u,n ] = size(Mask);   
			if (n ~= N)
		        error(' GENS and MASK matrix are not with the same dimension');
		    end
		end
		MaskType = 0;	
	    Mask_ = Mask < 0.5;
	else
		MaskType = 1;
	end
		
	i = 1;
	while Num > 0
		H = SelParents(i,1);
		K = SelParents(i,2);
	
		if ( MaskType == 1 )	% random mask is used
	        Mask = rand(1,N) < 0.5;
	        Mask_ = Mask < 0.5;
		end
		
		Q = Mask.*InitPopul(H,:);
	 	W = Mask_.*InitPopul(K,:); 
	    result = [result; Q + W];
	    Num = Num - 1;
		
	    if ( Num==0 ) 
			break;
	    end
	
	    Q = Mask.*InitPopul(K,:);
	    W = Mask_.*InitPopul(H,:); 
	
	    result = [result; Q + W];
	    Num = Num - 1;
		i = i + 1;
	end %while

return