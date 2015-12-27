function f = eval_rosen(x)
    % Evaluation of the Rosenberg function
x1=x(1);
x2=x(2);
f = 100*(x2-x1^2)^2 + (1-x1)^2;
