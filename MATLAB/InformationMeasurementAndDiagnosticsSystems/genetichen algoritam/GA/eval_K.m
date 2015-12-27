% Evauate the Current Regulator -> search for the best regulator
function [FitValue] = eval_K(X)

global K A B C

K = [X(1:2); X(3:4)];	% X is vector row

opt=GAopt(-2);

opt.PopulSize = 20;
opt.MaxIter = 40;
opt.Visual   = 'none';
opt.Graphics = 'off';

Bounds_S = ones(9,1)*[ -0.2 0.2 0 ];

[RGenes, RFit, RecGenes, RecFit] = GAminBC('eval_S', Bounds_S, opt);

FitValue = -RFit;