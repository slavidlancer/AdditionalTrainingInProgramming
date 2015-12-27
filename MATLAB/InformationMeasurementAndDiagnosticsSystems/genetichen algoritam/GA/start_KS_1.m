% Matrix Gain Feedback
% Calls:
%		eval_KS_1
%		mdl_K

opt=GAopt(-4);
opt.MaxIter = 200;
opt.Visual = 'some';

A = [ -0.5  0  0;  0  -2  10;  0  1  -2 ];
B = [ 1  0;  -2  2;  0  1 ];
C = [ 1  0  0;  0  0  1 ];
D = [0 0; 0 0];

global A B C D

Bounds=ones(4,1)*[ -4 4 1e-4 ];

[RGenes, RFit, RecGenes, RecFit] = GAminBC('eval_KS_2', Bounds, opt);

K = [RGenes(1:2); RGenes(3:4)];
G = sort(eig(A+B*K*C))'

sim('mdl_K');

plot(RecFit);
xlabel('iteration');
ylabel('Fitness')