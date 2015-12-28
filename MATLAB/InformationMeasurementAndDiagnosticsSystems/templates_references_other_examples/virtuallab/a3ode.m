function varargout = a3ode(t,y,flag)
%A3ODE  Stiff problem, linear with real eigenvalues (A3 of EHL).
%   This four equation system has a constant Jacobian and also a constant
%   partial derivative with respect to t because it is autonomous.  When the
%   ODE solver JConstant property is set to 'off', this example tests the
%   effectiveness of schemes for recognizing when Jacobians need to be
%   refreshed.
%   
%   Because the Jacobian is constant, the ODE solver property JConstant can
%   be set to 'on' to prevent the solvers from unnecessarily recomputing the
%   Jacobian, making the integration more reliable and faster.
%   
%   W. H. Enright, T. E. Hull, and B. Lindberg, Comparing numerical
%   methods for stiff systems of ODEs, BIT 15 (1975), pp. 10-48.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-11-94, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:24:58 $

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
dydt = [ (-10000*y(1,:) + 100*y(2,:) - 10*y(3,:) + y(4,:))
         (-1000*y(2,:) + 10*y(3,:) - 10*y(4,:))
         (-y(3,:) + 10*y(4,:))
         -0.1*y(4,:) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 20];
y0 = ones(4,1);
options = odeset('JConstant','on','Vectorized','on');

% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -10000  100   -10     1
          0     -1000   10    -10
          0      0     -1      10
          0      0      0     -0.1 ];
