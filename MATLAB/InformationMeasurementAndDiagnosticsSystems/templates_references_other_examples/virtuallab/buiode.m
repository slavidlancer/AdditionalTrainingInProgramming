function varargout = buiode(t,y,flag)
%BUIODE Stiff problem with analytical solution due to Bui.
%   The parameter values here correspond to the stiffest case of the paper;
%   the solution is 
%   
%       y(1) = exp(-4t), y(2) = exp(-t)
%   
%   L. F. Shampine, Measuring stiffness, Appl. Numer. Math. 1 (1985),
%   pp. 107-119.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:25:09 $

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
case 'jacobian'                         % Return Jacobian matrix df/dy.
  varargout{1} = jacobian(t,y);
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
dydt = [ (-10004*y(1,:) + 10000*y(2,:).^4)
         (y(1,:) - y(2,:) - y(2,:).^4) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 5];
y0 = ones(2,1);
options = odeset('Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -10004     40000*y(2)^3
         1          (-1 - 4*y(2)^3) ];
