function varargout = b5ode(t,y,flag)
%B5ODE  Stiff problem, linear with complex eigenvalues (B5 of EHL).
%   See Ex. 5, p. 298 of Shampine for a discussion of the stability of the
%   BDFs applied to this problem and the role of the maximum order permitted
%   (the MaxOrder property accepted by ODE15S).  ODE15S solves this problem
%   efficiently if the maximum order of the NDFs is restricted to 2.
%   
%   This six equation system has a constant Jacobian and also a constant
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
%   L. F. Shampine, Numerical Solution of Ordinary Differential
%   Equations, Chapman & Hall, 1994.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-11-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:25:01 $

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
dydt = [ (-10*y(1,:) + 100*y(2,:))
         (-100*y(1,:) - 10*y(2,:))
         -4*y(3,:)
         -y(4,:)
         -0.5*y(5,:)
         -0.1*y(6,:) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 20];
y0 = ones(6,1);
options = odeset('MaxOrder',2,'JConstant','on','Vectorized','on');

% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -10        100     0       0       0       0
         -100       -10     0       0       0       0
         0          0       -4      0       0       0
         0          0       0       -1      0       0
         0          0       0       0       -0.5    0
         0          0       0       0       0       -0.1 ];
