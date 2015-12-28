function Bounds = TransfGenesBC(bounds_orig, TolX)
%	TransformGenesBC
%
%	Transforms Bounds matrix and if necessary the genes	
%
%	Bounds = TransformGenesBC(bounds_original, TolX)
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
[n, m] = size(bounds_orig);
Bounds = [];

dB = bounds_orig(:,2) - bounds_orig(:,1);

%-> float variables
if ( m < 3 )       % if tolerance not set
    bounds_orig(:,3) = TolX;
end
for ( i = 1:n )
	
	if ( bounds_orig(i,3) > 0 )						% extended varaible
		tolDegree = 1/bounds_orig(i,3);					% tolerance for variable No. i
 		num_genes = ceil(log10( dB(i)*tolDegree + 1 ));	% number of genes in extended form, 
	   													% which will code the variable
	    for j=1:num_genes
	        NG = 10^(num_genes-j);
	        if ( j==1 )
	            b = floor( dB(i) / 10^floor( log10(dB(i)) ));
	            B = [b NG];
	        else
	            B = [9 NG];
	        end
	        Bounds = [Bounds; [B tolDegree bounds_orig(i,1:2) 1]];
			% [Upper_Bound  End_Flad  Multiplier  Lower_Bound  Upper_Bound  Var_Type]		
	    end

	% real number representation		
	elseif ( bounds_orig(i,3) == 0 )					% float representation
		Bounds = [Bounds; [dB(i), 1, 1, bounds_orig(i,1:2) 0] ];
	else												% integer representation
		Bounds = [Bounds; [dB(i), 1, 1, bounds_orig(i,1:2) 1] ];
		% [Distance  End_Flad  Multiplier  Lower_Bound  Upper_Bound  Var_Type]
	end
		
end

return;