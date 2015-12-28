% GAMOminSC
%
% Genetic Algorithm MultiObjective Optimization
%		  Conventional CrossOver
%
% [ResultGenes, ResultFit, RecordGenes, RecordFit] = GAminSC ( Function, Bounds, Options, Mask )
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
%                     N x 3 matrix  ->  [min max VT]
%                        min - minimal value of the variable
%                        max - maximal value of the variable
%                        VT  - variable type
%							   VT = -1 - integer variable
%							   VT = 0  - float varaible
%       Options     - Options structure - use GAopt to create, load and save the
%                     structure to file. If Options is not set default options are used
%					  		Select - type of selection
%								1 - Non-Dominated Sorting Selection
%								2 - Pareto Optimal Selection
%       Mask        - boolean mask used for the crossover
%                     [NULL] - random mask is used
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 20.06.2003
function [Result_Genes, Result_Fitness, RecordGenes, RecordFitness] = GAMOminSC(Function, bounds_orig, options, mask)

alg_ver = '1.0'; 

if (nargin < 2)
    error('   Too few input arguments. See help "GAMOminDR" for details');
end

%================= Check the input arguments ==================%
if nargin < 4 | isempty(mask) == 1
    mask = [];
end
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
type_Select = 1; % options.Select;
if ( rec_Iter == 0 )  rec_Iter = Inf;  % no record
end
visual_iter = ceil(Num_cicles/5);

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
Bounds = TransfGenesSC(bounds_orig, TolX);
[ng, mg] = size(Bounds);
ng_ = ng+1;

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
Popul_Genes = GARandSC(Bounds, populSize);   

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
	
	Fitness_Value 		 = [];
    %+++++++++++ Evaluating the genes
    for i = 1:populSize
        ff = feval(Function, Popul_Genes(i,:));
        Fitness_Value = [ Fitness_Value; ff ];
    end
    
    %+++++++++++ finding the individuals in Pareto set
	[Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit]  = ...
					sortPareto( Popul_Genes, Fitness_Value, Pareto_Set, Pareto_Fit );

    %+++++++++++ Make a record
 	RecordFitness = [ RecordFitness; Pareto_Fit(1,:) ];
	RecordGenes   = [ RecordGenes; Pareto_Set(1,:) ];

    %+++++++++++ Printing some results
	if (iteration == 1)
		old_Pareto_best		 = Inf*ones(size(Pareto_Fit(1,:)));
	else
		old_Pareto_best = VisualMO ( visualize, graph, iteration, visual_iter, Pareto_Set, Pareto_Fit, old_Pareto_best, FigHandle);
	end

	%XXXXXXXXXXX Selection
	if ( type_Select == 2)
		[SelParents, Pareto_Set_total] = GAParetoOpt (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize);
	else
		[SelParents, Pareto_Set_total] = GANDominSort (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize);
	end		

	%XXXXXXXXXXX CrossOver
	Cross_Genes = GACrossSC ( SelParents, Pareto_Set_total, populSize-newGenes, Mask );

	%XXXXXXXXXXX Mutation
    GMut = GAMutatSC ( Cross_Genes, Bounds, mutatGenes );

	%XXXXXXXXXXX New
	GNew = GARandSC( Bounds, newGenes );
	
	%XXXXXXXXXXX Reducing number of Pareto optimal solutions
	[Pareto_Set, Pareto_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, maxPareto); 

	Popul_Genes = [GNew; GMut];
    
end % while
%%%%%%%%%%%%%%%%%%%%%%%%%%% End the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Result_Fitness = Pareto_Fit;
Result_Genes   = Pareto_Set;
RecordFitness  = RecordFitness(1:rec_Iter:Num_cicles, :);
RecordGenes    = RecordGenes(1:rec_Iter:Num_cicles, :);

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
 		PlotResultsMO( iteration, FigHandle, Pareto_Fit);
	end
end
return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  COMBINEOPT - combines options from Default and User Set  %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CombineOpt
% 
% Combines User Options with Default Options
%
%	result_Options = CombineOpt (User_options, Default_options)
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
function result = CombineOpt(options,def_opt)

result = def_opt;
% Empty options structure
result.Comment = 'Combination of User defined and Default options';
REAL_STRUCT = struct(  ...
        'Comment',[], ...
        'MaxIter', [], ...
        'PopulSize', [], ...
        'MutatRate', [], ...
        'BestRate', [], ...
        'NewRate', [], ...
        'TolX', [], ...
		'pSelect', [], ...
		'pRecomb', [], ...
		'Select', [], ...
        'RecIter', [], ...
        'Visual', [], ...
        'Graphics',[]);
    
Names = fieldnames(REAL_STRUCT);
[m,n] = size(Names);
names = lower(Names);
    
opt_names = lower(fieldnames(options));
try    
    for i = 1:m
        k = strmatch(opt_names(i), names);
        if ( k )
            % Identical fields names
            Real_Field_Name = Names{k};
            Value = getfield(options, Real_Field_Name);
            if exist('Value')
                % the parameter is set in options
                if (strcmp(opt_names(i),'visual') | strcmp(opt_names(i),'graphics') | strcmp(opt_names(i),'select'))
                    value = lower(Value);
                    result = setfield(result, Real_Field_Name, value);
                else
                    result = setfield(result, Real_Field_Name, Value);
                end
            end
        end
    end
catch
    V = sprintf('Options structure is not correct.\nSee: help GAopt for detail about option settings');
    disp(V);
end
return;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  TRANSFORMGENS - transforms genes to extended form  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	TransfGenesSC
%
%	Transforms Bounds matrix and if necessary the genes	
%
%	Bounds = TransformGenesBC(bounds_original, TolX)
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
function Bounds = TransfGenesSC(bounds_orig, TolX)

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

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  GARAND - generates initial random population  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GARandSC
%
% Generates Random strings when Standard CrossOver is Used
%
% FPopul =  GARandSC ( Bounds, Num_Ind )
%
%   result:
%       FPopul 	- population of random individuals
%
%   parameters:
%       Bounds 	- extendet matrix of the boundaries
%					[ Distance Lower_Bound Upper_Bound Var_Type]
%					Distance = Upper_Bound - Lower_Bound
%  				    VarType: 1 - integer;  0 - float
%       Num_Ind - number of randomly created individuals
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003
function [result] = GARandSC(Bounds, num)

if nargin < 2
    error('Wrong number of input parameters');
end

[nb, mb] = size(Bounds);

result = zeros(num, nb);

result(:,1:nb) = ( ones(num,1)*Bounds(:,1)' ).*rand(num,nb) + ( ones(num,1)*Bounds(:,2)' );

for ( i = 1:nb )
	if ( Bounds(i,4) == 1 )				% the gen is integer
		result(:,i) = round( result(:,i) );  				
	end
end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  GAMUTAT - mutation of randomly choosen genes  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GAMutatSC
%
% Generates random Mutations when Standard CrossOver is Used
%
% FPopul = GAMutatSC ( IPopul, Bounds, Num_Mut )
%
%   result:
%       FPopul 	 - population after the mutation
%
%   parameters:
%       IPopul   - initial population
%       Bounds 	 - extendet matrix of the boundaries
%					  [ Distance Lower_Bound Upper_Bound Var_Type]
%						Distance = Upper_Bound - Lower_Bound
%						VarType: 1 - integer;  0 - float
%       Num_Mut  - total number of mutations for the population
%
%   Andrey Popov							www.automatics.hit.bg
%   andrey.popov@gmx.net                    Last update: 20.06.2003
function result = GAMutatSC(InitPopul, Bounds, num)

if nargin < 3
    error('Wrong number of input parameters. See "help GAMutatSC"');
end

result   = InitPopul;
[nb, mb] = size(Bounds);
[mg, ng] = size(InitPopul);
% mg - number of chromosomes
% ng - number of genes in a chromosome

if (nb ~=  ng)
    error('Number of bounds NOT equal to number of elements in the string');
end

while ( num > 0 )
	n = ceil(rand*ng);   % number of the gen to mutate
    m = ceil(rand*mg);   % number of the chromosome to mutate

	if ( Bounds(n,4) == 1 )	% integer
		R = round( Bounds(n,1)*rand ) + Bounds(n,2);
	else					% float
		R = Bounds(n,1)*rand + Bounds(n,2);
	end
   
    result(m,n) = R;
    
    num = num - 1;
end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  SortPareto - finding the Pareto optimal solutions  %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sortPareto
%
% Sorting Genes acording to Pareto's criteria
%
% [Pareto_Set, Pareto_Fit, NPareto_Set, NPareto_Fit]  = ...
%					sortPareto( Popul_Set, Popul_Fit, iPareto_Set, iParetoFit )
% 
%   result:
%       Pareto_Set   - result individuals in Pareto set
%       Pareto_Fit	 - Fitness functions of current Pareto Set
%       NPareto_Set  - individuals which are non in Pareto set
%		NPareto_Fit  - Fintess functions of non Pareto individuals
%
%   arguments:
%       Popul_Set    - initial Population
%       Popul_Fit    - Fitness Function of initial Population
%       iPatero_Set  - initial members of Pareto_Set
%       iPatero_Fit  - initial fitness functions of Pareto_Set members
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 22.06.2003
function [Pareto_Set, Pareto_Fit, NPareto_Set, NPareto_Fit]  = ...
					sortPareto( Popul_Set, Popul_Fit, Pareto_Set, Pareto_Fit )

[num_individ, num_genes] = size(Popul_Set);
[num_indiv, num_fitness] = size(Popul_Fit);
[num_pareto, num_fit] 	 = size(Pareto_Fit);
% num_pareto  - number of strings in Pareto Set
% num_individ - number of strings in the set
% num_fitness - number of evaluated fitness functions

NPareto_Set = [];	% Non-Pareto set (dominated solutions)
NPareto_Fit = [];

start_num = 1;
if num_pareto == 0 % if no previous Pareto Set is available
    Pareto_Fit = Popul_Fit(1,:);
    Pareto_Set = Popul_Set(1,:);
    num_pareto = 1;
    start_num  = 2;
elseif  num_fitness ~= num_fit
    error('Number of fitness functions in Popul_Fit and Pareto_Set is different');
end

for i = start_num : num_individ
    
    count_better = zeros(1,num_fitness);
    to_be_removed = [];
    flag_worst = 0;
    Equal_min  = 0;      % there are few minimumums with equal fitness values but different Popul_Set
    
    for h = 1 : num_pareto
        count_btcp = 0; % better than current pareto
        count_wtcp = 0; % worst than current pareto
        
        for k = 1 : num_fitness
            if Popul_Fit(i,k) < Pareto_Fit(h,k)
                count_better(k) = count_better(k) + 1;
                count_btcp = count_btcp + 1;
            elseif Popul_Fit(i,k) > Pareto_Fit(h,k)
                count_wtcp = count_wtcp + 1;
            else
                count_better(k) = count_better(k) + 1;
                count_btcp = count_btcp + 1;
                count_wtcp = count_wtcp + 1;
            end
        end

        if count_btcp == num_fitness            % the currently checked element in Pareto Set is totaly dominated
            to_be_removed = [to_be_removed h];
        elseif count_wtcp == num_fitness
            flag_worst = 1;
        end
        
        if Popul_Fit(i,:) == Pareto_Fit(h,:)     % The Function sets are identical
            if Popul_Set(i,:) == Pareto_Set(h,:)
            else                                % The Genes are identical
                Equal_min = 1;
                to_be_removed = to_be_removed(1:(length(to_be_removed)-1));
            end
        end
        
    end
    
    if sum(count_better) >= num_fitness*num_pareto & Equal_min == 0
        % Current Popul_Fit is better than all from Pareto_Fit
        NPareto_Set = [Pareto_Set; NPareto_Set];
        NPareto_Fit = [Pareto_Fit; NPareto_Fit];
        Pareto_Set = Popul_Set(i,:);
		Pareto_Fit = Popul_Fit(i,:);
        num_pareto = 1;
        
    elseif ( max(count_better) >= 1 & flag_worst == 0) | Equal_min
        % Current_Popul_Fit is better than some and worst than others from Pareto_Fit
        num_to_rem = length(to_be_removed);
        
        if num_to_rem ~= 0      % removing the dominated Genes from Pareto_Set
            for v = num_to_rem:-1:1
		        NPareto_Set = [NPareto_Set; Pareto_Set( to_be_removed(v),: )];
		        NPareto_Fit = [NPareto_Fit; Pareto_Fit( to_be_removed(v),: )];
                Pareto_Set( to_be_removed(v),: ) = [];
                Pareto_Fit( to_be_removed(v),: ) = [];
                num_pareto = num_pareto - 1;
            end
        end
        
        Pareto_Fit = [Pareto_Fit; Popul_Fit(i,:)];
        Pareto_Set = [Pareto_Set; Popul_Set(i,:)];
        num_pareto = num_pareto + 1;
    else
        NPareto_Set = [NPareto_Set; Popul_Set(i,:)];
        NPareto_Fit = [NPareto_Fit; Popul_Fit(i,:)];
    end

end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  NonDominated Sorting Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Genetic Algorithm
%			Non-Dominated Sorting Selection
%
%	[PARENTS, GENES_ALL] = GAParetoOpt (Pareto_Set, Pareto_Fit, ...
%							Non_Pareto_Set, Non_Pareto_Fit, populSize)
%
%   result:
%       PARENTS    - choosen parent chromosomes
% 				     matrix with couples [Parent1 Parent2]
%		GENES_ALL  - List of all Genes
%
%   arguments:
%		Pareto_Set 	   - Pareto Optimal Set
%		Pareto_Fit 	   - Pareto Otpimal Fitness Values
%		Non_Pareto_Set - The other genes
%		Non_Pareto_Fit - Fitness value of Non_Pareto_Set
%       populSize 	   - Population Size
%
%   Andrey Popov                  		www.automatics.hit.bg
%   andrey.popov@gmx.net          		Last update: 27.06.2003
function [SelParents, Pareto_Set_total] = GANDominSort (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize)

[numPareto, x] = size(Pareto_Fit);
Fitness = ones(numPareto, 1);	% assigning rank to the Pareto optimal solutions
Pareto_Set_total = Pareto_Set;

i = 2;
[numNonPareto, x] = size(Non_Pareto_Set);

while ( numNonPareto>0 )
	[Pareto_Set_, Pareto_Fit_, Non_Pareto_Set, Non_Pareto_Fit]  = ...
				sortPareto( Non_Pareto_Set, Non_Pareto_Fit, [], [] );
	
	[numPareto, x] = size(Pareto_Fit_);
	Fitness = [Fitness; ones(numPareto,1)*i];
	Pareto_Set_total = [Pareto_Set_total; Pareto_Set_];
	
	[numNonPareto, x] = size(Non_Pareto_Set);

	i = i + 1;
end
	
Fitness = i - Fitness; 
% renumbering (Pareto optimal solutions receive heightest rank)

SelParents = [];

M = ceil(populSize/2);
Scale = sum(Fitness);
[Num_Par,x] = size(Fitness);

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, Fitness, Num_Par );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, Fitness, Num_Par );
	end

	M = M - 1;
	SelParents = [SelParents; H, K];
end %while

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Pareto Optimal Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Genetic Algorithm
%			Pareto Optimality Selection
%
%	[PARENTS, GENES_ALL] = GAParetoOpt (Pareto_Set, Pareto_Fit, ...
%							Non_Pareto_Set, Non_Pareto_Fit, populSize)
%
%   result:
%       PARENTS    - choosen parent chromosomes
% 				     matrix with couples [Parent1 Parent2]
%		GENES_ALL  - List of all Genes
%
%   arguments:
%		Pareto_Set 	   - Pareto Optimal Set
%		Pareto_Fit 	   - Pareto Otpimal Fitness Values
%		Non_Pareto_Set - The other genes
%		Non_Pareto_Fit - Fitness value of Non_Pareto_Set
%       populSize 	   - Population Size
%
%   Andrey Popov                  		www.automatics.hit.bg
%   andrey.popov@gmx.net          		Last update: 27.06.2003
function [SelParents, Pareto_Set_total] = GAParetoOpt (Pareto_Set, Pareto_Fit, Non_Pareto_Set, Non_Pareto_Fit, populSize)

[numPareto, x] = size(Pareto_Set);
	
if (numPareto <= 2)		% only one member in Pareto set
	[Pareto_Set2, Pareto_Fit2, Non_Pareto_Set, Non_Pareto_Fit]  = ...
				sortPareto( Non_Pareto_Set, Non_Pareto_Fit, [], [] );
	Pareto_Fit_total = [Pareto_Fit; Pareto_Fit2];
	Pareto_Set_total = [Pareto_Set; Pareto_Set2];
else
	Pareto_Fit_total = Pareto_Fit;
	Pareto_Set_total = Pareto_Set;
end

%XXXXXXXXXXX Selection
SelParents  = GAMOSelect ( Pareto_Fit_total, populSize, numPareto );

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Pareto Optimal Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GAMOSelect
%
% MultiObjective Select
%
% PARENTS =  GAMOSelect ( Pareto_Fit, Num_Ind, Num_Pareto )
%
%   result:
%       PARENTS 	- choosen parent chromosomes
%				  		matrix with couples [Parent1 Parent2]
%
%   arguments:
%		Pareto_Fit 	- Fitness Values of all Parents 
%       populSize   - number of couples (respectively number of children)
%		Num_Pareto  - number of individuals in Pareto Set
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003
function [result] = GAMOSelect ( Pareto_Fit, populSize, numPareto )

[np,mp] = size( Pareto_Fit );

if ( np > numPareto )
	numA = numPareto;			% number of individuals in 1st Pareto Set
	numB = np - numPareto;		% number of individuals in 2nd Pareto Set
	D = numPareto;				% distance between 1st and 2nd sets
else
	numA = numPareto;
	numB = numPareto;	
	D = 0;
end

result=[];
M =  ceil(populSize/2);

while M > 0
	% random number with uniform distribution
	H = ceil(rand*numA);
	K = H;
	while (K == H)
		K = D + ceil(rand*numB);
	end

	M = M - 1;
	result = [result; H, K];
end %while

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Roulette Wheel Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Roulette Wheel
%
% Calculates which parent is taken
%
%	ParentNum = Roulette( randN, Fitness, Num_Par )
%
%   result:
%       ParentNum - choosen parent chromosome
%
%   arguments:
%		randN	- random number between 0 and sum of all Fitness functions
%		Fitness - vector with fitness functions of the parents
%		Num_Par - Number of possible Parents
%
% 
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 27.06.2003
function ParentNum = Roulette( randN, fitness, Num_Par )

W = 0; 
for i = 1:Num_Par
	if ( W >= randN )
		break;
	end
	W = W + fitness(i);
end
ParentNum = i;
return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Recombination - Standart CrossOver  %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  VISUALIZATION  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ReducePareto
%
% Reducing the number of Pareto Optimal Solutions
%
% [New_P_Set, New_P_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, Max_Number)
%
%   Output:
%       New_P_Set  - reduced Pareto Set
%       New_P_Fit  - reduced Pareto Fitness
%
%   Input:
%		Pareto_Set - Pareto Set to be reduced
%       Pareto_Fit - Pareto Fitness
%		Max_Number - Number of solutions to remain
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
function [Pareto_Set, Pareto_Fit] = ReducePareto(Pareto_Set, Pareto_Fit, Max_Number);

[num_Pareto, num_Fit] = size (Pareto_Fit);

while (num_Pareto > Max_Number)
	D = zeros(num_Pareto, 1);	% vector with the neighbor distance
	M = zeros(num_Pareto, num_Pareto);	% matrix with distance to the other solutions
	for i = 1:num_Pareto
		for k = i:num_Pareto
			if k == i
				M(k,k) = Inf;
			else	% Euclidian distance
				M(k,i) = norm( Pareto_Fit(i,:) - Pareto_Fit(k,:) );
				M(i,k) = M(k,i);
			end
		end
	end
	for i = 1:num_Pareto
		[m1, ind1] = min(M(i,:));
		M(i,ind1) = Inf;
		[m2, ind2] = min(M(i,:));
		D(i) = ( m1 + m2 )/2;
	end
	[d, ind] = min(D);
	Pareto_Fit(ind, :) = [];
	Pareto_Set(ind, :) = [];
	num_Pareto = num_Pareto - 1;	
end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  VISUALIZATION  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function old_Pareto_best = VisualMO( visualize, graph, iteration, visual_iter, ...
					Pareto_Set, Pareto_Fit, old_Pareto_best, FigHandle);

if ( visualize >= 0 )   % temporary result allowed?
	if ( visualize == 1 )		% some results
		if ( old_Pareto_best > Pareto_Fit(1,:) )  
			TD = 1;
			old_Pareto_best = Pareto_Fit(1,:);
		else	TD = 0;
		end
		if ( TD == 1 | (~rem(iteration, visual_iter) ) )
			DispResultsMO( iteration, Pareto_Fit, Pareto_Set, 0 );
			if ( graph > 0 )
				PlotResultsMO( iteration, FigHandle, Pareto_Fit );
			end                    
		end
	elseif ( visualize == 2 )	% all results
		DispResultsMO( iteration, Pareto_Fit, Pareto_Set, 1 );
		if ( graph > 0 )
			PlotResultsMO( iteration, FigHandle, Pareto_Fit );
		end
	else % no results, only dots sign action is taking place
		if ( rem(iteration, 20) == 0 )       fprintf('.');
			if (rem(iteration, 5000) == 0)   fprintf('\n');
			end
		end
	end
end % if visualize

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Display Temporary Results  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function DispResultsMO( iteration, Pareto_Fit, Pareto_Set, Flag )
    V = sprintf('Iter:%%5.0f ##>Fit:');
	[n,m] = size(Pareto_Fit);
	for i = 1:m
        V = [V sprintf('   %%8.4g')];
    end
	[n,m] = size(Pareto_Set);
	V = [V sprintf('   ##>Genes:')];
	for i = 1:m
        V = [V sprintf('   %%5.6g')];
    end

	if (Flag == 0)
	   MSG = sprintf(V,iteration, Pareto_Fit(1,:), Pareto_Set(1,:));
   	else
		MSG = [];
		for i=1:n
			if (i==n)
				MSG = [MSG sprintf(V,iteration, Pareto_Fit(i,:), Pareto_Set(i,:))];
			else
				MSG = [MSG sprintf([V 13],iteration, Pareto_Fit(i,:), Pareto_Set(i,:))];
			end
		end
	end
    disp(MSG);
return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%  PlotResults - Visual reperesntation of some temporary results  %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function PlotResultsMO ( iteration, FigHandle, Pareto_Fit)
	figure(FigHandle);
	[n,m] = size(Pareto_Fit);
	if (m==2)		% 2-D
		MSG = sprintf('Fitness Values\nIteration %d; Individs in Pareto set = %d',iteration,n);
		plot(Pareto_Fit(:,1),Pareto_Fit(:,2),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');
	elseif (m==3)	% 3-D
		MSG = sprintf('Fitness Values\nIteration %d; Individs in Pareto set = %d',iteration,n);
		plot3(Pareto_Fit(:,1),Pareto_Fit(:,2),Pareto_Fit(:,3),'ro','MarkerSize', 5);grid;
		title(MSG);xlabel('Fintess 1');ylabel('Fitness 2');zlabel('Fitness 3');
	end
	drawnow;
return