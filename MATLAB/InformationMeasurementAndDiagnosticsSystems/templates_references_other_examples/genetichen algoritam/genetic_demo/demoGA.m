function demoGA
% Genetic Algorithm - Demo
%
% To start the demo program call: demoGA
%
%   Andrey Popov                            andrey.popov@mail.bg      
%   www.automatics.hit.bg                   Last update: 28.06.2003

clc
fprintf('\n Demo of Genetic Algorithm\n\n Please choose demo\n');
fprintf('  (1) - Trigonometrical function\n  (2) - Rosenbrock - 1 objective function\n');
fprintf('  (3) - Rosenbrock - 2 objective functions\n\n  Other - Exit\n\n');

C = 0;

while ( C~=-1 )
    
C = [];
while (isempty(C))
    C = input(' Your choice: ');
end
if (C == 1 | C == 2 | C == 3 )
else C = -1;
end

if (C == 1) % trigonometrical function
    clc;
    fprintf('\n <-- Trigonometircal function --> \n\n');
    fprintf(' Find the global minimum of the function:\n');
    fprintf('   f = 5 + x/20 + 5*sin(8*x)+5*cos(3*x);');
    fprintf('\n\nThe file evaluating the function is:\n');
        type eval_sincos;
    fprintf('\n -> press key');pause
    fprintf('\n\nLoad the settings:');
    fprintf('\n   opt = GAopt(-2)');
        opt = GAopt(-2)
    fprintf('\n -> press key');pause
    fprintf('\nThe graphics settings are set to final plot:');
    fprintf('\n   opt.Graphics = ''final'';');
        opt.Graphics = 'final';
    fprintf('\n -> press key');pause
    fprintf('\n\nThe lower and upper bounds for x are set:');    
    fprintf('\n   LB = 0; UB = 20\n;');
        LB = 0; UB = 20;
    fprintf('\n -> press key');pause
    fprintf('\n\nThe computation precision is set:');    
    fprintf('\n   csi = 1e-4\n;');
        csi = 1e-4;
    fprintf('\n -> press key');pause
    fprintf('\n\nLet''s draw the graphic of the function in those bounds:');
    fprintf('\n    figure(1);\n    fplot(''5 + x/20 + 5*sin(8*x)+5*cos(3*x)'',[LB UB]);\n    drawnow;');
        figure(1);
        fplot('5 + x/20 + 5*sin(8*x)+5*cos(3*x)',[LB UB])
        drawnow;
    fprintf('\n -> press key');pause
    fprintf('\n\nStart the minimization:');
    fprintf('\n       [RGenes, RFit, recGenes, recFit] = GAminBC(''eval_sincos'', [LB UB csi], opt);\n');
    fprintf('\n -> press key');pause
        [RGenes, RFit, recGenes, recFit] = GAminBC('eval_sincos', [LB UB csi], opt);
    fprintf('\n -> press key');pause
    fprintf('Now show the result on the graphics');
    fprintf('\n    figure(1); hold on;\n	plot(RGenes, RFit,''ro'');');
    fprintf('\n -> press key');pause
    	figure(1); hold on;	plot(RGenes, RFit,'ro');
    fprintf('\n -> press key');pause
    fprintf('\n\nNow change the precision to floating point');
    fprintf('\n   csi = 0\n;');
        csi = 0;
    fprintf('\n\nStarting again the minimization:');
    fprintf('\n -> press key');pause
        [RGenes, RFit, recGenes, recFit] = GAminBC('eval_sincos', [LB UB csi], opt);
    	figure(1); hold on;	plot(RGenes, RFit,'bo');
    fprintf('\n -> press key');pause
    fprintf('\n\n\n');        
    
elseif (C==2)   % Rosenbrock
    clc;
    fprintf('\n <-- Rosenbrock function  - 2 objective functions--> \n\n');
    fprintf(' Find the global minimum of the function of Rosenbrock:\n');
    fprintf('   f = 100*(x2-x1^2)^2 + (1-x1)^2 ;');
    fprintf('\n\nThe file evaluating the function is:\n');
        type eval_rosen;
    fprintf('\n -> press key');pause
    fprintf('\n\nLoad the settings:');
    fprintf('\n   opt = GAopt(-6)');
        opt = GAopt(-6)
    fprintf('\nNB. The maximal number of Pareto optimal solutions is 100% from the\nsize of the population');
    fprintf('\n -> press key');pause
    fprintf('\n\nThe lower and upper bounds for x1 and x2 are set:');    
    fprintf('\n   LB = -10; UB = 10\n;');
        LB = -10; UB = 10;
    fprintf('\n -> press key');pause
    fprintf('\n\nFirst Standart Crossover is used');
    fprintf('\nStart the minimization (floating point variables):');
    fprintf('\n       [RGenes, RFit, recGenes, recFit] = GAminSC(''eval_rosen'', [LB UB 0; LB UB 0], opt);\n');
    fprintf('\n -> press key');pause
        [RGenes, RFit, recGenes1, recFit1] = GAminSC('eval_rosen', [LB UB 0;LB UB 0], opt);
    fprintf('\n -> press key');pause
    fprintf('\n\nNow let''s use Blend Crossover');
    fprintf('\nStart the minimization (floating point variables):\n');
        [RGenes, RFit, recGenes2, recFit2] = GAminBC('eval_rosen', [LB UB 0;LB UB 0], opt);
    fprintf('\n -> press key');pause
    fprintf('\n\nThe graphic of the fitness value in both cases is:');
    figure; semilogy(recFit1,'r-'); hold on; semilogy(recFit2,'b-');title('Standart Crossover (red), Blend Crossover (blue)');
    fprintf('\n -> press key');pause
    fprintf('\n\n\n');    
    
elseif (C==3)
    clc;
    fprintf('\n <-- Rosenbrock function --> \n\n');
    fprintf(' The stanard problem Rosenbrock problem (f = 100*(x2-x1^2)^2 + (1-x1)^2;)\n');
    fprintf(' is devided in 2 objective function problem\n');
    fprintf('\nThe file evaluating the function is:\n');
        type eval_rosen2;
    fprintf('\n -> press key');pause
    fprintf('\n\nLoad the settings:');
    fprintf('\n   opt = GAopt(-5)');
        opt = GAopt(-5)
    fprintf('\n -> press key');pause
    fprintf('\n\nThe lower and upper bounds for x1 and x2 are set:');    
    fprintf('\n   LB = -10; UB = 10\n;');
        LB = -10; UB = 10;
    fprintf('\n -> press key');pause
    fprintf('\n\nFirst Standart Crossover is used');
    fprintf('\nStart the minimization (floating point variables):');
    fprintf('\n       [RGenes, RFit, recGenes, recFit] = GAMOminSC(''eval_rosen2'', [LB UB 0; LB UB 0], opt);\n');
    fprintf('\n -> press key');pause
        [RGenes, RFit, recGenes1, recFit1] = GAMOminSC('eval_rosen2', [LB UB 0;LB UB 0], opt);
    fprintf('\n -> press key');pause
    fprintf('\n\nNow let''s use Blend Crossover');
    fprintf('\nStart the minimization (floating point variables):\n');
        [RGenes, RFit, recGenes2, recFit2] = GAMOminBC('eval_rosen2', [LB UB 0;LB UB 0], opt);
    fprintf('\n -> press key');pause
    fprintf('\n\n\n');      
    
end

end % while
