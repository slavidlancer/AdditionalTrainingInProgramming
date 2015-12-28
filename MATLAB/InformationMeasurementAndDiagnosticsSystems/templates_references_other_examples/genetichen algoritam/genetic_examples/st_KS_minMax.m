opt=GAopt(-6);
opt.PopulSize = 20;
opt.Visual = 'some';
opt.BestRate = 0.15;

Bounds_K = ones(4,1)*[ -4 4 1e-3 ];

global K A B C

A =  [ -0.5  0  0;  0  -2  10;  0  1  -2 ];
B =  [ 1  0;  -2  2;  0  1 ];
C =  [ 1  0  0;  0  0  1 ];

[RGenes, RFit, RecGenes, RecFit] = GAminBC('eval_K', Bounds_K, opt);

save robast4

K = [RGenes(1:2); RGenes(3:4)];
G = sort(eig(A+B*K*C))'

try
    sim('mdl_K');
catch
    disp('Simulation unable');
end
