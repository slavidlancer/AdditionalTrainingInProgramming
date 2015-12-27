function varargout = flameode(t,y,flag)
%FLAMEODE An ordinary differential equation model of combustion.
%   The equation y' = y^2*(1-y) is a model of combustion and is a striking
%   example of a scalar stiff problem.  In the interval [0 10000] the
%   problem is nonstiff and any of the ODE Suite solvers work well.  But
%   after time 10000 the problem is stiff, and only the stiff solvers
%   work efficiently.
%   
%   R.E. O'Malley, Singular Perturbation Methods for Ordinary Differential
%   Equations, Springer, New York, 1991. 
%   
%   See also ODE45, ODE23, ODE113, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 5-24-96
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.2 $  $Date: 1997/11/21 23:25:47 $

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
dydt = y.^2 .* (1-y);

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 20000];
y0 = 1e-4;
options = [];
