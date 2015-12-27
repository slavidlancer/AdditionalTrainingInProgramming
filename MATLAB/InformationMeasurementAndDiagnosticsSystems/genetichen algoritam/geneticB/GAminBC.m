% GAminBC
%
% Genetic Algorithm Optimization
%		  Blend CrossOver
%
% Minimization of single fitness function. The function is evaluated in user defined
% file. The fitness function can be function of many (N) variables. Each variable 
% could be represented as real number (floating point), integer or subgenes from
% digits (0-9) (536.17 is represented by [5 3 6 1 7]).
%
% [ResultGenes, ResultFit, RecordGenes, RecordFit] = GAminBC ( Function, Bounds, Options )
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
%							1 - Fitness Proportional Selection
%							2 - Gausinan Selection
%							3 - Ranking Selection
%
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 20.06.20003
function [Result_Genes, Result_Fitness, RecordGenes, RecordFitness] = GAminBC(Function, bounds_orig, options)

alg_ver = '1.0';

if (nargin < 2)
    error('   Too few input arguments. See help "GAminDR" for details');
end

%================= Check the input arguments ==================%
if bounds_orig(:,1) < bounds_orig(:,2)
else
    error('   Lower bound is greater than the Upper bound\n Bounds = [min max]');
end
    
%==================== Define the options ======================%
def_opt = GAopt(0);
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
mutatGenes  = ceil( populSize*options.MutatRate ); % will be update later
bestGenes   = ceil( populSize*options.BestRate );
newGenes    = ceil( populSize*options.NewRate );
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

%============== Transform Genes to extended form ===============%
Bounds = TransfGenesBC(bounds_orig, TolX);
[ng, mg] = size(Bounds);
ng_ = ng + 1;
[ngo,mgo] = size(bounds_orig);

% Updating Mutation Rate with the Gen's extention rate
mutatGenes = mutatGenes*floor(ng/ngo);

RecordFitness 		 = NaN*ones(Num_cicles,1); 	% record - every 'rec_Iter' iterations a new "best" fitness value is added
RecordGenes    		 = NaN*ones(Num_cicles,ngo); 	% record - every 'rec_Iter' iterations a new "best" gen is added

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
Popul_Genes = GARandBC(Bounds, bounds_orig, populSize);   
GBEST = Popul_Genes(1,:);                     % best result;

iteration = 0;

Result_Genes		 = [];               	% Result of the optimization
bestFitnessValue     = Inf;     			% Best evaluation
bestFitnessValue_old = Inf;

if visualize == 1
    fprintf('\n    Iter:      Fit:      Gen:\n');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%% Start the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
while iteration < Num_cicles
    Popul_Fit_Genes = [];
    iteration = iteration + 1; 

    %+++++++++++ Transform genes to standart type
    GenesStandart = GenesToStandart( Popul_Genes, Bounds );
    
    %+++++++++++ Evaluating the genes
    for i = 1:populSize
        ff = [ feval(Function, GenesStandart(i,:)),  Popul_Genes(i,:) ];
        Popul_Fit_Genes = [ Popul_Fit_Genes; ff ];
    end
    
    %++++++++++++ sorting the genes according to Fitnes Function
    Popul_Fit_Genes = sortrows ( Popul_Fit_Genes, 1 ); 
    
    GBEST = Popul_Fit_Genes ( 1:bestGenes, 2:ng_ );
    bestFitnessValue = Popul_Fit_Genes(1,1);    

    BESTGenesStandart = GenesToStandart( Popul_Fit_Genes(1,2:ng_), Bounds );
    
    %++++++++++++ Make a record
 	RecordFitness(iteration) = Popul_Fit_Genes(1,1);
	RecordGenes(iteration,:)  = BESTGenesStandart;

    %+++++++++++ Printing some results
	[bestFitnessValue_old] = VisualSO( visualize, graph, iteration, visual_iter, ...
										bestFitnessValue, bestFitnessValue_old, ...
										BESTGenesStandart, FigHandle, RecordFitness);

	%XXXXXXXXXXX Selection
	if ( type_Select == 2)  	% Normal Gausian Selection
		SelParents = GASelectN ( populSize, populSize - bestGenes - newGenes, par_Select );
	elseif ( type_Select == 3)  % Ranking Selection
		SelParents = GASelectRS ( populSize, populSize - bestGenes - newGenes, par_Select );
	else 						% Fitness Proportional Selection + Roulette Wheel
		SelParents = GASelectFP ( Popul_Fit_Genes(:,1), populSize - bestGenes - newGenes );
	end
	%XXXXXXXXXXX Recombination
    Cross_Genes = GARecombBC ( SelParents, Popul_Fit_Genes(:,2:ng_) , populSize - bestGenes - newGenes, Bounds(:,6), par_Recomb );
	%XXXXXXXXXXX Mutation
	GMut = GAMutatBC ( Cross_Genes, Bounds, bounds_orig, mutatGenes );
	%XXXXXXXXXXX New
	GNew = GARandBC ( Bounds, bounds_orig, newGenes );
	
	Popul_Genes = [GBEST; GNew; GMut];
    
end % while
%%%%%%%%%%%%%%%%%%%%%%%%%%% End the cicle %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Result_Fitness = Popul_Fit_Genes(1,1);
Result_Genes    = [ GenesToStandart( Popul_Fit_Genes(1,2:ng_), Bounds ) ];

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
RecordGenes    = RecordGenes(1:rec_Iter:Num_cicles,:);
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
%	TransformGenesBC
%
%	Transforms Bounds matrix and if necessary the genes	
%
%	Bounds = TransformGenesBC(bounds_original, TolX)
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003
function Bounds = TransfGenesBC(bounds_orig, TolX)

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  TRANSFORM GENS to origianl type  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GensToStandart
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
function StnGenes = GenesToStandart( ExtGenes, Bounds )

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  GARAND - generates initial random population  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GARandBC
%
% Generates Random strings when Blend CrossOver is used
%
% FPopul =  GARandBC ( Bounds_Ext, Bounds_Stn, Num_Ind )
%
%   result:
%       FPopul 		- population of random individuals
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
%       Bounds_Stn - standart matrix of the boundaries
%                   [Low High]
%       Num_Ind - number of randomly created individuals
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 22.06.2003
function [result] = GARandBC(BoundsE, BoundsS, num)

if nargin < 3
    error('Wrong number of input parameters');
end

result=[];
[nb, mb] = size(BoundsE);

BoundsS = BoundsS';

while (num > 0)
	RandStn = BoundsS(2,:) + 1;				% RANDom STaNdart chromosome (individual)
	while ( any(RandStn > BoundsS(2,:) ) )
         % the gen is out of boundaries
	    RandExt = rand(1,nb).*BoundsE(:,1)'.*1;   		% RANDom EXTended chromosome
 
		for ( i = 1:nb )
			if ( BoundsE(i,6) ~= 0 )				% the gen is not float
				RandExt(i) = round( RandExt(i) );  				
			end
		end

		RandStn = GenesToStandart( RandExt, BoundsE );         % Standart Genes
	end
	
    result = [result; RandExt];
    num = num - 1;
end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  GAMUTAT - mutation of randomly choosen genes  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GAMutatBC
%
% Generates random Mutations when Blend CrossOver is Used
%
% FPopul = GAMutatBC ( IPopul, Bounds_Ext, Bounds_Stn, Num_Mut )
%
%   result:
%       FPopul 	   - population after the mutation
%
%   parameters:
%       IPopul     - initial population
%       Bounds_Ext - extendet matrix of the boundaries
%                    [Dist  End_Flag  Multiplier  L_Bound  U_Bound  Var_Type]
%					 Dist = U_Bound - L_Bound     or    Dist = U_Bound
%					 End_Flag = 1 if this is the end of original gene
%					 Multiplier - gain for the subgene
%					 L_Bound  -  lower bound
%					 U_Bound  -  upper bound
%					 Var_Type:  0 - float;  -1 - integer;   
%       Bounds_Stn - standart matrix of the boundaries
%                   [Low High]
%       Num_Mut  - total number of mutations for the population
%
%   Andrey Popov							www.automatics.hit.bg
%   andrey.popov@gmx.net                    Last update: 22.06.2003
function [result] = GAMutatBC(InitPopul, BoundsE, BoundsS, num)

if nargin < 3
    error('Wrong number of input parameters. See "help GAmutatBC"');
end

result   = InitPopul;
[nb, mb] = size(BoundsE);
[mg, ng] = size(InitPopul);
% mg - number of InitPopul   
% ng - number of strings in a gen

if (nb ~=  ng)
    error('Number of bounds NOT equal to number of elements in the string');
end
BoundsS = BoundsS';

while ( num > 0 )
	n = ceil(rand*ng);   	% number of the gen to mutate
    m = ceil(rand*mg);   	% number of the chromosome to mutate
	GEN = InitPopul(m,:);	% taking the gen to mutate
    
	GenStn = BoundsS(2,:) + 1;

    while ( any(GenStn > BoundsS(2,:) ) )			   	% the upper boundary is exceeded
       % the gen is out of boundaries
		GEN(1,n) = rand*BoundsE(n,1);  				% mutation of the gen
		if ( BoundsE(n, 6) ~= 0 )					% extended type
	 	   GEN(1,n) = round ( GEN(1,n) );  			% gen to integer
		end
    
	    GenStn = GenesToStandart( GEN, BoundsE );    % Transform to standart InitPopul
	end    
    
    result(m,:) = GEN;
    
    num = num - 1;
end

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  SELECT - Fitness Proportional  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GASelectFP
%
% Fitness Proportional Select + Roulette Wheel
%
% Parents  =  GASelectFP ( Fitness, Num )
%
%   result:
%       Parents - choosen parent chromosomes
%				  matrix with couples [Parent1 Parent2]
%
%   arguments:
%		Fitness - Fitness Values of all Parents 
%       Num     - number of children chromosomes to be produced
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 19.06.2003
function [result] = GASelectFP ( Fitness, Num, param )

if (nargin < 2)
    error('Wrong number of input parameters');
end

% we need just half of the pairs --> 1 pair = 2 children
Num = ceil(Num/2);

[ num, N ] = size(Fitness);

% finding the sum of positiv and negative Fitness functions 
LB=0; UB=0;    % Lower and Upper Boundary
for i = 1:num
	if ( Fitness(i) > 0 )
		UB = UB + Fitness(i);
	else
		LB = LB + Fitness(i);
	end
end

% recalculating the Fitness values
fit_new = (UB - LB)*ones(num,1) - Fitness;
Scale = sum(fit_new);

result=[];
M = Num;

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, fit_new, num );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, fit_new, num );
	end

	M = M - 1;
	result = [result; H, K];
end %while

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  SELECT - Ranking Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GASelectRS
%
% Ranking Selection + Roulette Wheel
%
% Parents =  GASelectRS ( populSize, Num, b )
%
%   result:
%       Parents   - choosen parent chromosomes
%				    matrix with couples [Parent1 Parent2]
%
%   arguments:
%		populSize - Number of possible Parents
%       Num       - number of couples (respectively number of children)
%		b		  - parameter betta
%
%	Selection probability is evaluated by:
%		P = b*(1-b)^(rank-1)
%			where rank = 1 for the best individual, 2 for the second, etc.
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 27.06.2003
function [result] = GASelectRS ( populSize, Num, b )

if (nargin < 3)
    error('Wrong number of input parameters');
end
if (b==0 | b==1)
    error ('Parameter b could not be 0 or 1. Please change options.pSelect');
end

% we need just half of the pairs --> 1 pair = 2 children
Num = ceil(Num/2);

Fit = b*(1-b).^(0:populSize - 1);

Scale = sum(Fit);

result=[];
M = Num;

while M > 0
	% random number with uniform distribution
	rh = rand*Scale; 
	H = Roulette( rh, Fit, populSize );
	K = H;
	while (K == H)
		rk = rand*Scale;
		K = Roulette( rk, Fit, populSize );
	end

	M = M - 1;
	result = [result; H, K];
end %while

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  SELECT - Gausian Selection  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GASelectN
%
% Normal Law Distribution Selection (Gaussian Selection)
%
% Parents =  GASelectN ( populSize, Num, StDev )
%
%   result:
%       Parents   - choosen parent chromosomes
%				    matrix with couples [Parent1 Parent2]
%
%   arguments:
%		populSize - Number of possible Parents
%       Num       - number of couples (respectively number of children)
%		StDev     - Standart Deviation
%
%
%   Andrey Popov                     andrey.popov@gmx.net      
%   www.automatics.hit.bg            Last update: 19.06.20003
function [result] = GASelectN ( populSize, Num, StDev )

if (nargin < 2)
    error('Wrong number of input parameters');
elseif (nargin < 3)
	StDev = 1;
end

M_C = populSize*StDev;

result=[];
num = ceil(Num/2);

while num > 0
		% random number with normal distribution
        rn = 2;
        while rn > 1
            rn = abs(randn)/4;
        end
        H = ceil ( rn * M_C);
        K = H;
        while ( K == H )
            rn = 2;
            while rn > 1
                rn = abs(randn)/4;
            end
            K = ceil ( rn * M_C);
        end
		
		result = [result; H, K];
		num=num-1;
		
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
%%%%%%%%%%%%%%%  Recombination - Blend CrossOver  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GARecombBC
%
% Recombination - Blend CrossOver
%
% FPopul =  GARecombBC ( SelPar, IPopul, Num, VarType, Alfa )
%
%   result:
%       FPopul  - Offspring (population after CrossOver)
%
%   parameters:
%		SelPar  - matrix with selected parents [Parent1 Parent2]
%       IPopul  - Population with parent individuals ( P x N matrix ) 
%           	 	P - number of parents
%           	 	N - number of elements in chromosome
%       Num     - number of 'children' in next generation
%		VType	- variable type
%			 		0 - float;  1 - integer
%		Alfa	- exploration coeficient 
%       	 		Child1 = y * Parent1 + (1-y) * Parent2
%			 		Child2 = (1-y) * Parent1 + y * Parent2
%			 		y = (1 + 2*Alfa)*rand - Alfa
%
% Andrey Popov                        		www.automatics.hit.bg
% andrey.popov@gmx.net						Last update: 22.06.2003
function [result] = GARecombBC ( SelParents, InitPopul, Num, VType, Alfa )

if (nargin < 5) 	Alfa = 0;
	if (nargin < 3)		error('Wrong number of input parameters');
	end 
end

if (nargin < 4 | isempty(VType))
	[n,m] = size(InitPopul);
	VType = ones(m,1);
end
result=[];
M = Num;	% number of childrens (remaining)
i = 1;		% parent couple number

while M > 0
	H = SelParents(i,1);
	K = SelParents(i,2);
	
	% random number for the crossover      
	RN = ( 1 + 2*Alfa)*rand - Alfa;
		
    cGen   = RN*InitPopul(H,:) + (1-RN)*InitPopul(K,:);   % current child
    result = [result; cGen];
	M      = M - 1;
	
	if ( M==0 )
	    break;
    end
		
    cGen   = (1-RN)*InitPopul(H,:) + RN*InitPopul(K,:); 
    result = [result; cGen];
    M      = M - 1;
	i      = i + 1;
end %while

for ( i = 1:length(VType) )
	if ( VType(i) == 1 )
		result(:,i) = round(result(:,i));
	end
end	

return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  VISUALIZATION  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [bestFitnessValue_old] = VisualSO( visualize, graph, iteration, ...
			visual_iter, bestFitnessValue, bestFitnessValue_old, BESTGens, ...
			FigHandle, RecordFitness)

if ( visualize >= 0 )   % temporary result allowed?
	if ( visualize == 1 )	% SOME results
		if bestFitnessValue >= 0
			if bestFitnessValue < bestFitnessValue_old/2 | (~rem(iteration, visual_iter))
				DispResultsSO( iteration, bestFitnessValue, BESTGens );
				if ( graph > 0 )
					PlotResultsSO( iteration, FigHandle, RecordFitness );
				end                    
				bestFitnessValue_old = bestFitnessValue;
			end
		else
			if bestFitnessValue < bestFitnessValue_old*2 | (~rem(iteration, visual_iter))
				DispResultsSO( iteration, bestFitnessValue, BESTGens )
				if ( graph > 0 )
					PlotResultsSO( iteration, FigHandle, RecordFitness );
				end
				bestFitnessValue_old = bestFitnessValue;
			end
		end
	elseif ( visualize == 2 )	% ALL results
		DispResultsSO( iteration, bestFitnessValue, BESTGens );
		if ( graph > 0 )
			PlotResultsSO( iteration, FigHandle, RecordFitness );
		end
	else % NO results, only dots sign action is taking place
		if ( rem(iteration, 20) == 0 )       fprintf('.');
			if (rem(iteration, 1000) == 0)   fprintf('\n');
			end
		end
	end
end % if visualize
return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  Display Temporary Results  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function DispResultsSO( iteration, FitnessValue, GenesSet )
    V = sprintf(' %%7.0f   %%9.6g');
    for i = 1:length(GenesSet)
        V = [V sprintf('   %%5.6g')];
    end
    V = sprintf(V,iteration, FitnessValue, GenesSet);
    disp(V);
return

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%  PlotResults - Visual reperesntation of some temporary results  %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function PlotResultsSO( iteration, FigHandle, RecordFitness )
	figure(FigHandle);
	    plot(RecordFitness,'ro', 'MarkerSize', 5); xlabel('generation'); ylabel('Fitness Value');
		text(0.65,0.9,['Best = ', num2str(RecordFitness(iteration))],'Units','normalized');
    drawnow;
return