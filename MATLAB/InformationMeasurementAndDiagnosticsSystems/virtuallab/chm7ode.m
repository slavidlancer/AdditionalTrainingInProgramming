function varargout = chm7ode(t,y,flag)
%CHM7ODE Stiff problem CHM7 from Enright and Hull.
%   This two equation system models thermal decomposition in ozone.
%   
%   W. H. Enright and T. E. Hull, Comparing Numerical Methods for the
%   Solution of Stiff Systems of ODEs Arising in Chemistry, in Numerical
%   Methods for Differential Systems, L. Lapidus and W. E. Schiesser eds.,
%   Academic Press, Orlando, FL, 1976, pp 45-67.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 6-20-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:25:15 $

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
dydt = [ (-y(1,:) - y(1,:).*y(2,:) + 294*y(2,:))
         (y(1,:).*(1 - y(2,:))/98 - 3*y(2,:)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 240];
y0 = [1; 0];
options = odeset('Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ (-1 - y(2))        (-y(1) + 294)
         (1 - y(2))/98      (-y(1)/98 - 3) ];
