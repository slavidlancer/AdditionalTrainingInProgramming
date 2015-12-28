function varargout = chm6ode(t,y,flag)
%CHM6ODE Stiff problem CHM6 from Enright and Hull.
%   This four equation system models catalytic fluidized bed dynamics.  A
%   small absolute error tolerance is necessary because y(:,2) ranges from
%   7e-10 down to 1e-12.  A suitable AbsTol is 1e-13 for all solution
%   components.  With this choice the solution curves computed with ODE15S
%   are plausible.  Because the step sizes span 15 orders of magnitude, a
%   loglog plot is appropriate.
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
K = exp(20.7 - 1500 ./ y(1,:));
dydt = [ (1.3*(y(3,:) - y(1,:)) + 10400 * K .* y(2,:))
         (1880 * (y(4,:) - y(2,:) .* (1+K)))
         (1752 - 269*y(3,:) + 267*y(1,:))
         (0.1 + 320*y(2,:) - 321*y(4,:)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 1000];
y0 = [761; 0; 600; 0.1];
options = odeset('AbsTol',1e-13,'Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
K = exp(20.7 - 1500 / y(1));
dKdy1 = (1500 / (y(1)^2)) * K;
dfdy = [ (-1.3 + 10400*dKdy1*y(2))  10400*K         1.3     0
         -1880*y(2)*dKdy1           -1880*(1+K)     0       1880
         267                        0               -269    0
         0                          320             0       -321 ];
