function result = CombineOpt(options,def_opt)
% CombineOpt
% 
% Combines User Options with Default Options
%
%	result_Options = CombineOpt (User_options, Default_options)
%
%   Andrey Popov                            andrey.popov@gmx.net      
%   www.automatics.hit.bg                   Last update: 28.06.2003

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
