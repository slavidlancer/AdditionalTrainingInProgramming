% GAminSC
%
% Genetic Algorithm Optimization
%		  Conventional CrossOver
%
% [ResultGenes, ResultFit, RecordGenes, RecordFit] = GAminSC ( Function, Bounds, Options, Mask )
%
%   Output:
%       ResultGenes - the result of the minimization
%       ResultFit  - result fitness value
%       RecordGenes - the best element (gen) taken with step, defined in Options
%       RecordFit  - Fitness function values
%
%   Input:
%       Function    - Name of the file which evaluates the fitness function
%                     Function should return value between ( -Inf; +Inf )
%                     Small value means better gen
%                     Input of function is column vector
%       Bounds      - matrix with the upper and lower boundary of the variables
%                     N x 3 matrix  ->  [min max VT]
%                        min - minimal value of the variable
%                        max - maximal value of the variable
%                        VT  - variable type
%							   VT = 1  - integer variable
%							   VT = 0  - float varaible
%       Options     - Options structure - use GAopt to create, load and save the
%                     structure to file. If Options is not set default options are used
%						Select:
%							1 - Fitness Proportional Selection
%							2 - Gausinan Selection
%							3 - Ranking Selection
%       Mask        - boolean mask used for the crossover
%                     [NULL] - random mask is used
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 20.06.20003
function [Result_Genes, Result_Fitness, RecordGenes, RecordFitness] = GAminSC(Function, bounds_orig, options, mask)

alg_ver = '1.0'; 

if (nargin < 2)
    error('   Too few input arguments. See help "GAminDR" for details');
end

%================= Check the input arguments ==================%
if nargin < 4 | isempty(mask) == 1
    mask = [];
end
if bounds_orig(:,1) < bounds_orig(:,2)
else
    error('   Lower bound is greater than the Upper bound\n Bounds = [min max]');
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
populSize   = options.PopulSize;
mutatGenes   = ceil( populSize*options.MutatRate );
bestGenes    = ceil( populSize*options.BestRate );
newGenes     = ceil( populSize*options.NewRate );
TolX        = options.TolX;
rec_Iter    = options.RecIter;
par_Select  = options.pSelect;
par_Recomb  = options.pRecomb;
if (options.Select == 2) 		type_Select = 2;	% Gausian law selection
elseif (options.Select == 3)	type_Select = 3;	% Ranking Selection
else type_Select = 1;								% Fitness Proportional Selection
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
elseif ( strcmp(val,'final') )  graph = 0;   % only final graphics
else         					graph = -1;  % graphics off
end

clear def_opt val;

%============== Transform Bounds to extended form ===============%
Bounds = TransfGenesSC(bounds_orig, TolX);
[ng, mg] = size(Bounds);
ng_ = ng+1;
[ngo,mgo] = size(bounds_orig);

%---------- Update Mask
Mask = [];
if ~isempty(mask)
    start_pos = 0;
    original  = 1;
    for i = 1:ng
        if Bounds(i,2) == 1
            Mask = [Mask mask(original)*ones(1,(i-start_pos))];
            start_pos = i;
            original = original + 1;
        end
    end
end
    
Result_Genes			 = [];               	% Result of the optimization
bestFitnessValue     = Inf;     			% Best evaluation
bestFitnessValue_old = Inf;
RecordFitness = NaN*ones(Num_cicles,1); 	% record - every 'rec_Iter' iterations a new "best" fitness value is added
RecordGenes    = NaN*ones(Num_cicles,ngo); 	% record - every 'rec_Iter' iterations a new "best" gen is added

clear ngo mgo;

%=================== Display Start Message ======================%
if ( visualize >= 0 )
    disp(' ');
    clk = clock;
    disp([' GENETIC ALGORITHM for MATLAB, ver ',alg_ver]);
    disp([' Minimization of function "',Function,'"']);
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
Popul_Genes = GARandSC(Bounds, populSize);   
GBEST = Popul_Genes(1,:);                     % best result;

iteration = 0;

if visualize == 1
    fprintf('\n    Iter:      Fit:      Gen:\n');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%% Start the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while iteration < Num_cicles
    Popul_Fit_Genes = [];
    iteration = iteration + 1; 

    %+++++++++++ Evaluating the genes
    for i = 1:populSize
        ff = [ feval(Function, Popul_Genes(i,:)),  Popul_Genes(i,:) ];
        Popul_Fit_Genes = [ Popul_Fit_Genes; ff ];
    end
    
    %++++++++++++ sorting the genes according to Fitnes Function
    Popul_Fit_Genes = sortrows ( Popul_Fit_Genes, 1); 
    
    GBEST = Popul_Fit_Genes ( 1:bestGenes, 2:ng_ );
    bestFitnessValue = Popul_Fit_Genes(1,1);    

    BESTGenes = Popul_Fit_Genes(1,2:ng_);
    
    %++++++++++++ Make a record
 	RecordFitness(iteration) = Popul_Fit_Genes(1,1);
	RecordGenes(iteration,:)  = BESTGenes;

    %+++++++++++ Printing some results
	[bestFitnessValue_old] = VisualSO( visualize, graph, iteration, visual_iter, ...
											bestFitnessValue, bestFitnessValue_old, ...
											BESTGenes, FigHandle, RecordFitness);

	%XXXXXXXXXXX Selection
	if ( type_Select == 2)  	% Normal Gausian Selection
		SelParents = GASelectN ( populSize, populSize - bestGenes - newGenes, par_Select );
	elseif ( type_Select == 3)  % Ranking Selection
		SelParents = GASelectRS ( populSize, populSize - bestGenes - newGenes, par_Select );
	else 						% Fitness Proportional Selection + Roulette Wheel
		SelParents = GASelectFP ( Popul_Fit_Genes(:,1), populSize - bestGenes - newGenes );
	end

	%XXXXXXXXXXX Recombination
	Cross_Genes = GACrossSC ( SelParents, Popul_Fit_Genes(:,2:ng_), populSize - bestGenes - newGenes, Mask );
	%XXXXXXXXXXX Mutation
	GMut = GAMutatSC ( Cross_Genes, Bounds, mutatGenes );
	%XXXXXXXXXXX New
	GNew = GARandSC( Bounds, newGenes );

	Popul_Genes = [GBEST; GNew; GMut];
    
end % while
%%%%%%%%%%%%%%%%%%%%%%%%%%% End the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Result_Fitness = Popul_Fit_Genes(1,1);
Result_Genes   = Popul_Fit_Genes(1,2:ng_);

if ( visualize >= 0 )
    fprintf ('\n Fitness Value: %f\n ', Result_Fitness);
    fprintf ('\n Result Genes:\n');disp(Result_Genes);
    fprintf ('\n');
	if (graph >= 0)
		if (graph == 0) 		FigHandle = figure;
		end
		PlotResultsSO( iteration, FigHandle, RecordFitness );
	end
end

RecordFitness  = RecordFitness(1:rec_Iter:Num_cicles);
RecordGenes     = RecordGenes(1:rec_Iter:Num_cicles,:);

return