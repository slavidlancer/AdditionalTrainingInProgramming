% GAMOminBC
%
% Genetic Algorithm MultiObjective Optimization
%		  Blend CrossOver
%
% [ResultGenes, ResultFit, RecordGenes, RecordFit] = GAminBC ( Function, Bounds, Options )
%
%   Output:
%       ResultGenes - the result of the minimization
%       ResultFit   - result fitness value
%       RecordGenes - the best individual taken with step, defined in Options
%       RecordFit   - Fitness function values
%
%   Input:
%       Function    - Name of the file which evaluates the fitness function
%                     Function should return value between ( -Inf; +Inf )
%                     Small value means better gen
%                     Input of function is column vector
%       Bounds      - matrix with the upper and lower boundary of the variables
%                     N x 3 matrix  ->  [min max Tol]
%                        min - minimal value of the variable
%                        max - maximal value of the variable
%                        Tol - tolerance for the variable OR variable type
%                              (if not given default value is used)
%							   Tol = 1e-4 - tolerance 0.0001
%							   Tol = 0    - float variable
%							   Tol = -1   - integer variable
%       Options     - Options structure - use GAopt to create, load and save the
%                     structure to file. If Options is not set default options are used
%						Select:
%					  		Select - type of selection
%								1 - Non-Dominated Sorting Selection
%								2 - Pareto Optimal Selection
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
function [Result_Genes, Result_Fitness, RecordGenes, RecordFitness] = GAMOminBC (Function, bounds_orig, options)

alg_ver = '1.0'; 

if (nargin < 2)
    error('   Too few input arguments. See help "GAMOminDR" for details');
end

%================= Check the input arguments ==================%
if bounds_orig(:,1) < bounds_orig(:,2)
else
    error('   Lower bound is greater than the Upper bound\n Bounds = [min max VarType]');
end
    
%==================== Define the options ======================%
def_opt = GAopt(0);			% default options
if nargin < 3
    % no options set -> default options will be used
    options = def_opt;
else
    % update only fields which are not set
    options = CombineOpt(options,def_opt);
end
   
Comment     = options.Comment;
Num_cicles  = options.MaxIter;
populSize  = options.PopulSize;
mutatGenes  = ceil( populSize*options.MutatRate );
% Maximal number of non-dominated chromosomes
maxPareto   = max ( ceil( populSize*options.BestRate ), 3);	
newGenes    = ceil( populSize*options.NewRate );
TolX        = options.TolX;
rec_Iter    = options.RecIter;
par_Select  = options.pSelect;
par_Recomb  = options.pRecomb;
if (options.Select == 2)	type_Select = 2;	% Pareto Optimal Selection
else 						type_Select = 1;	% Non-Dominated SortingSelection
end
if ( rec_Iter == 0 )  rec_Iter = Inf;  % no record
end
visual_iter = ceil(Num_cicles/4);

val = lower( options.Visual );
if ( strcmp(val,'none') )      visualize = -1; % no visualization at all
elseif ( strcmp(val,'no') )    visualize =  0; % no temporary results
elseif ( strcmp(val,'all') )   visualize =  2; % all temporary results
else                           visualize =  1; % some temporary results
end
val = lower( options.Graphics );
if ( strcmp(val,'on') )       	graph = 1;   % graphics on
elseif ( strcmp(val,'final') )  graph = 0;   % graphics only when done
else         					graph = -1;  % graphics off
end

clear def_opt val;

%============== Transform Bounds to extended form ===============%
Bounds = TransfGenesBC(bounds_orig, TolX);
[ng, mg] = size(Bounds);
ng_ = ng+1;
[ngo,mgo] = size(bounds_orig);

% Updating Mutation Rate with the Gen's extention rate
mutatGenes = mutatGenes*floor(ng/ngo);

clear ngo mgo;

%=================== Display Start Message ======================%
if ( visualize >= 0 )
    disp(' ');
    clk = clock;
    disp([' GENETIC ALGORITHM for MATLAB, ver ',alg_ver]);
    disp([' MultiObjective Minimization of function "',Function,'"']);
    V = sprintf(' ->Iter:%d Popul:%d<-',Num_cicles, populSize); disp(V);
    clk = sprintf(' Started at %d:%d:%d  %d.%d.%d',clk(4),clk(5),floor(clk(6)),clk(3),clk(2),clk(1));
    disp(clk);
end
if (graph > 0)
    FigHandle = figure; 
else
    FigHandle = 0;
end

%%%%%%%%%%%%%%%%% Generate initial population %%%%%%%%%%%%%%%%%%%%
Popul_Genes = GARandBC(Bounds, bounds_orig, populSize);   

iteration = 0;

RecordFitness 		 = [];%NaN*ones(Num_cicles,1); 	% record - every 'rec_Iter' iterations a new "best" fitness value is added
RecordGenes    		 = [];%NaN*ones(Num_cicles,ng); 	% record - every 'rec_Iter' iterations a new "best" gen is added

Pareto_Set 			 = [];
Pareto_Fit 			 = [];
Non_Pareto_Set		 = [];
Non_Pareto_Fit		 = [];
top_Pareto 	  		 = Inf;
top_Pareto_old 		 = Inf;
TD				 	 = 0; % flag: 1 is there have been a total
						  %	dominating individual in current population

%%%%%%%%%%%%%%%%%%%%%%%%%%% Start the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while iteration < Num_cicles
    iteration = iteration + 1; 
	
    %+++++++++++ Transform genes to standart type
    GenesStandart = GenesToStandart( Popul_Genes, Bounds );

	Fitness_Value 		 = [];
    %+++++++++++ Evaluating the genes
    for i = 1:populSize
        ff = feval(Function, GenesStandart(i,:));
        Fitness_Value = [ Fitness_Value; ff ];
    end
    
    %+++++++++++ finding the individuals in Pareto set
	[Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit]  = ...
					sortPareto( Popul_Genes, Fitness_Value, Pareto_Set, Pareto_Fit );

    %+++++++++++ Make a record
 	RecordFitness = [ RecordFitness; Pareto_Fit(1,:) ];
	RecordGenes   = [ RecordGenes; GenesToStandart( Popul_Genes, Bounds ) ];

    %+++++++++++ Printing some results
	Pareto_Set_Stn = GenesToStandart( Pareto_Set, Bounds );
	if (iteration == 1)
		old_Pareto_best		 = Inf*ones(size(Pareto_Fit(1,:)));
	else
		old_Pareto_best = VisualMO ( visualize, graph, iteration, visual_iter, ...
							Pareto_Set_Stn, Pareto_Fit, old_Pareto_best, FigHandle);
	end

	%XXXXXXXXXXX Selection
	if ( type_Select == 2)
		[SelParents, Pareto_Set_total] = GAParetoOpt (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize);
	else
		[SelParents, Pareto_Set_total] = GANDominSort (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize);
	end		
	
	%XXXXXXXXXXX Recombination
    Cross_Genes = GARecombBC ( SelParents, Pareto_Set_total , populSize - newGenes, Bounds(:,6), par_Recomb );

	%XXXXXXXXXXX Mutation
	GMut = GAMutatBC ( Cross_Genes, Bounds, bounds_orig, mutatGenes );

	%XXXXXXXXXXX New
	GNew = GARandBC ( Bounds, bounds_orig, newGenes );

	%XXXXXXXXXXX Reducing number of Pareto optimal solutions
	[Pareto_Set, Pareto_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, maxPareto); 
	
	Popul_Genes = [GNew; GMut];
    
end % while
%%%%%%%%%%%%%%%%%%%%%%%%%%% End the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Result_Fitness = Pareto_Fit;
Result_Genes   = GenesToStandart (Pareto_Set, Bounds);
RecordFitness  = RecordFitness (1:rec_Iter:Num_cicles, :);
RecordGenes    = RecordGenes (1:rec_Iter:Num_cicles, :);

fprintf('\n');
if ( visualize >= 0 )
    fprintf (' Fitness Values:\n');
	disp(Result_Fitness);
    fprintf ('\n Genes Values:\n');
    disp(Result_Genes);
    fprintf ('\n');
	if (graph >= 0)
		if (graph == 0) 		FigHandle = figure;
		end
 		PlotResultsMO( iteration, FigHandle, Pareto_Fit );
	end
end
return