function varargout = d1ode(t,y,flag)
%D1ODE  Stiff problem, nonlinear with real eigenvalues (D1 of EHL).
%   This is a two equation model from nuclear reactor theory.
%           
%   Enright, Hull and Lindberg convert the problem to autonomous form, but
%   it is solved here in its original non-autonomous form.  Van der Houwen
%   provides reference solution values on p. 151:
%   
%       at t = 400, y(1) = 22.24222011, y(2) = 27.11071335
%   
%   W. H. Enright, T. E. Hull, and B. Lindberg, Comparing numerical methods
%   for stiff systems of ODEs, BIT 15 (1975), pp. 10-48.
%     
%   P. J. van der Houwen, Construction of Integration Formulas for Initial
%   Value Problems, North-Holland Publishing Co., 1977.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-23-94, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:25:30 $

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
dydt = [ 0.2*(y(2,:) - y(1,:))
         (10*y(1,:) - (60 - 0.125*t)*y(2,:) + 0.125*t) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 400];
y0 = zeros(2,1);
options = odeset('Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -0.2  0.2
         10    (-60 + 0.125*t) ];
