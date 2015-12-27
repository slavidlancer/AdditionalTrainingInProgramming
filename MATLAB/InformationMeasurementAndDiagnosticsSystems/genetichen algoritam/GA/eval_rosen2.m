function f = eval_rosen2(x)
    % Evaluation of the Rosenberg function
    % 2 objectives
x1=x(1);
x2=x(2);
f(1) = (x2-x1^2)^2 ;
f(2) = (1-x1)^2 ;