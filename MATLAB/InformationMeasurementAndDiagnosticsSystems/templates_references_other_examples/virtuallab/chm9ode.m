function varargout = chm9ode(t,y,flag)
%CHM9ODE Stiff problem CHM9 from Enright and Hull. 
%   A scaled version of the famous Belousov oscillating chemical system.
%   There is a discussion of this problem and plots of the solution starting
%   on p. 49 of Aiken.  Aiken provides a plot for the interval [0,5], an
%   interval of rapid change in the solution.  The default time interval
%   specified here includes two full periods and part of the next to show
%   three periods of rapid change.
%   
%   W. H. Enright and T. E. Hull, Comparing Numerical Methods for the
%   Solution of Stiff Systems of ODEs Arising in Chemistry, in Numerical
%   Methods for Differential Systems, L. Lapidus and W. E. Schiesser eds.,
%   Academic Press, Orlando, FL, 1976, pp 45-67.
%   
%   R. C. Aiken, ed., Stiff Computation, Oxford University Press, NY, 1985.
%   
%   See also ODE15S, ODE23S, ODESET, CHM9JAC.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-30-94, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.10 $  $Date: 1997/11/21 23:25:16 $

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
dydt = [ 77.27*(y(2,:) - y(1,:).*y(2,:) + y(1,:) - 8.375e-6*y(1,:).^2)
         (-y(2,:) - y(1,:).*y(2,:) + y(3,:))/77.27
         0.161*(y(1,:) - y(3,:)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 650];
y0 = [4; 1.1; 4];
options = odeset('RelTol',1e-5,'Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ 77.27*(-y(2)+1-1.675e-5*y(1))  77.27*(1-y(1))      0
         -y(2)/77.27                    (-1-y(1))/77.27     1/77.27
         0.161                          0                   -0.161 ];
