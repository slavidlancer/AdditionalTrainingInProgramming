function Bounds = TransfGenesSC(bounds_orig, TolX)
%	TransformGenesSC
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
Bounds = [];

for ( i = 1:n )
	if ( bounds_orig(i,3) == -1 )						% integer representation
		Bounds = [Bounds; [dB(i) bounds_orig(i,1:2) 1]];
	else
		Bounds = [Bounds; [dB(i) bounds_orig(i,1:2) 0]];
	end
end

return;