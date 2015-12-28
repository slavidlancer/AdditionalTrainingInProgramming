function varargout = a2ode(t,y,flag)
%A2ODE  Stiff problem, linear with real eigenvalues (A2 of EHL).
%   This nine equation system from circuit theory has a constant tridiagonal
%   Jacobian and also a constant partial derivative with respect to t
%   because it is autonomous.  When the ODE solver JConstant property is set
%   to 'off', this example tests the effectiveness of schemes for recognizing
%   when Jacobians need to be refreshed.
%   
%   Because the Jacobian is constant, the ODE solver property JConstant can
%   be set to 'on' to prevent the solvers from unnecessarily recomputing the
%   Jacobian, making the integration more reliable and faster.
%   
%   W. H. Enright, T. E. Hull, and B. Lindberg, Comparing numerical
%   methods for stiff systems of ODEs, BIT 15 (1975), pp. 10-48.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-11-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:24:57 $

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
dydt = zeros(9,size(y,2));              % preallocate dy/dt
dydt(1,:) = -1800*y(1,:) + 900*y(2,:);  % Vectorized
i = (2:8);
dydt(i,:) = y(i-1,:) - 2*y(i,:) + y(i+1,:);
dydt(9,:) = 1000*y(8,:) - 2000*y(9,:) + 1000;

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 120];
y0 = zeros(9,1);
options = odeset('JConstant','on','Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = diag(ones(8,1),-1) - diag(2*ones(9,1)) + diag(ones(8,1),1);
dfdy(1,1) = -1800;
dfdy(1,2) = 900;
dfdy(9,8) = 1000;
dfdy(9,9) = -2000;
