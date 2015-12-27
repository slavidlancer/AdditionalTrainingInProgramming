function StnGenes = GenesToStandart( ExtGenes, Bounds )
% GenesToStandart
%
% Transform Extended Genes to Standard Genes
%
% 	StnGenes = GensToStandart( ExtGenes, Bounds_Ext )
%	
%   result:
%       StnGenes	- individuals with original (user defined) genes values
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
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003

StnGenes = []; % genes with standart values (float/integer - not digits)
start_pos = 1;

[ng, mg] = size(Bounds);

% float variables
for gn = 1:ng
    if Bounds(gn, 2) == 1 % the last digit from the integer is found
        Current_Var = ExtGenes(:,start_pos:gn) * Bounds(start_pos:gn,2) / Bounds(gn,3) + Bounds(gn,4);
        StnGenes = [StnGenes Current_Var];
        start_pos = gn + 1;
    end
end

return;