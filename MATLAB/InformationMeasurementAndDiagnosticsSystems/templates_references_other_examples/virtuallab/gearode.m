function varargout = gearode(t,y,flag)
%GEARODE Stiff problem due to Gear as quoted by van der Houwen.
%   Van der Houwen provides a reference solution to this simple stiff
%   problem on p. 148:
%   
%       at t = 50, y(1) = 0.5976546988, y(2) = 1.40234334075
%     
%   P. J. van der Houwen, Construction of Integration Formulas for Initial
%   Value Problems, North-Holland Publishing Co., 1977.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:25:51 $

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
dydt = [ (-1000 * y(1,:) .* (y(1,:) + y(2,:) - 1.999987))
         (-2500 * y(2,:) .* (y(1,:) + y(2,:) - 2)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 50];
y0 = ones(2,1);
options = odeset('Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -1000*(2*y(1) + y(2) - 1.999987)  -1000*y(1)
         -2500*y(2)                        -2500*(y(1) + 2*y(2) - 2) ];
