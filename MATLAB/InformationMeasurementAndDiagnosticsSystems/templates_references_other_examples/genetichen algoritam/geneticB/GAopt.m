	function result = GAopt ( varargin )
% Genetic Algorithm - Options
%
% Sets options for Genetic Algorithm
% Options = GAopt(Options, 'Param1', Value1, 'Param2', Value2, ... )
%   
% Options = GAopt(Dafault);
%
% Options = GAopt(Options, Save);
%
%      Parameters
%  ----------------
%         *   Some of the Parameters are percents from the Population Size (GensPopul)
%         **  The Default values are in breckets. Example: {50}
%
%      Comment     - comment about the options (up to 50 characters)
%      MaxIter     - maximal number of population (iterations)
%                    [ positive scalar ] {1000}
%      PopulSize   - number of individs (gens) in population
%                    [ positive scalar ] {50}
%      MutatRate   - mutation rate: number of mutations in the population = MutatRate*PopulSize
%                    [ positive scalar ] {0.3} 
%      BestRate    - percentage of gens that copied to next genertion (survive)
%                    (optimal result is preserved)
%                    [ positive scalar (0 - 1) ] {0.1}
%      NewRate     - percentage of newly generated gens in population
%                    [ positive scalar ] {0.1}
%      TolX        - default precision for the variables - (used when in bounds the thirs column
%                    is not set). If TolX = 1 then integer variables are used.
%                    [ positive scalar ] {1e-4}
%
%	   pSelect	   - Select Parameter - usage depends on the used selection type
%	   pRecomb	   - Recombination Parameter - usage depends on the used recombination type
%	   				 See Manual or recombination function's help for details
%      
%	   Select      - type of selection used - depends on the minimization function used
%					 [ positive scalar ] { 1 }
%
%      RecIter     - record of Fitness and Gens is made through RecIter itaration
%                    [ positive integer ] {1}
%      Visual      - visualization of temporary results
%                    [ none | off | {some} | all ]
%      Graphics    - graphical representation of temporary results - only when Visual is
%                    set to 'some' or 'all'
%                    [ off | {on} | final ]
%
%	   Options
%   ----------------
%      Load        - Loads default or user deffined settings saved in "GAopt.mat"
%                    If used with other properties, the properties not listed are taken from 
%                    default properties. Load is integer in range: 
%                    ( -9 : 0 ) -> Default properties
%                    (  1 : 9 ) -> UserDefined        
%      Save        - Saves Options as a User Defined properties in "GAopt.mat"
%                    Save:   ( 1 : 9 )
%
%      Examples
%  -----------------
%   > GAopt             - shows the Comment of all stored options
%   > opt = GAopt(-5)   - loads default options -5
%   > opt = GAopt(7)    - loads user defined options 7
%   > GAopt(opt, 4)     - saves options in 'opt' on place 4 in GAopt.m
%   > opt = GAopt('BestRate',0.17, 'Visual','no') - updates opt: sets BestRate to 0.17
%                                                   and stops visualization
%   > opt.MutatRate = 0.2 - sets mutation rate to 0.2
%
%   Andrey Popov                  		www.automatics.hit.bg
%   andrey.popov@gmx.net          		Last update: 27.06.2003

try
	% load options from MAT file
	load GAopt.mat OPTIONS 
catch
    error('Could not open "GAopt.mat"! File is missing or corrupt');
end

% Print out list with setting's comments
if (nargout == 0 & nargin==0)
    fprintf('\n No output arguments. For default values use: Options = GAopt\n For more information see: help GAopt\n\n   ==>List of recorded settings<==');
    try
        for i = 1:20
            fprintf('\n %2.0f -> %s',i-10,OPTIONS(i).Comment);
        end
        return
    catch
        error('Problem reading GAopt.mat. File is missing or corrupted');
    end
end

true = 1; false = 0;
LoadDefault = false;

if (nargin == 0)
    % no input argumenets =-> default options #0 are used
    Load = 0;
    LoadDefault = true;
elseif (nargin == 1)
    %only 1 input argument
        tmp = varargin{1};
        try
            tmp = round(tmp);
            if (abs(tmp) <= 9)
                Load = tmp;
                LoadDefault = true;
            else
                error('Default is integer between -9 and 9. See: Default paremter in help GAopt');
            end
        catch
            error('Wrong arguments. See: Default paremter in help GAopt');
        end
end

if (LoadDefault)
    result = OPTIONS(Load+10);
    if (Load)
%        V = sprintf('Loaded options %d\n->%s<-', Load, result.Comment);        disp(V);
    end
    return;
end

if (nargin == 2)
    try
        options = varargin{1};
        Save = varargin{2};
        tmp = round(Save);
        if (tmp > 0 & tmp < 10)
            OPTIONS(Save+10) = options;
            try
                save GAopt.mat OPTIONS
            catch
                error('Could not write "GAopt.mat"! File is missing or write protected');
            end
            result = options;
%            V = sprintf('Saved options on %d\n->%s<-', Save, options.Comment);disp(V);
            return;
        else
            error('Save should be between 1 and 9. See: Save parameter in help GAopt');
        end
    catch
        error('Wrong arguments. See: Default paremter in help GAopt');
    end
end

if ( rem(nargin, 2)~=1 )
    % not correct pairs
    V = sprintf('Input arguments should be by couples:\noptions = GAopt(options, Param1, Value1, Param2, Value2...)');
    error(V);
end

try
    % update the fields
    old_opt = varargin{1};
    
    % Empty options structure
    options = struct(  ...
        'Comment',[], ...
        'MaxIter', [], ...
        'PopulSize', [], ...
        'VarType', [], ...
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
    
    Names = fieldnames(options);
    [m,n] = size(Names);
    names = lower(Names);
    
    for i=2:2:nargin
        Field_Name = varargin{i};
        field_name = lower(Field_Name);
        k = strmatch(field_name, names,'exact');
        if (k)
            % there is such field in the structure
            Real_Field_Name = Names{k,:};
            Value = varargin{i+1};
            old_opt = setfield(old_opt, Real_Field_Name, Value);
       else
            V = sprintf('There is no structure field named %s\nCheck: help GAopt for details',Field_Name);
            error(V);
        end
    end
    result = old_opt;
catch    
    V = sprintf('There are inpropriate Prameters or Values\nPlease check: help GAopt');
    error(V);
end

return;