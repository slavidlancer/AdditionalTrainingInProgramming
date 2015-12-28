function varargout = hb1ode(t,y,flag)
%HB1ODE Stiff problem 1 of Hindmarsh and Byrne.
%   This is the original Robertson chemical reaction problem on a very long
%   interval.  Because the components tend to a constant limit, it tests
%   reuse of Jacobians.  The equations themselves can be unstable for
%   negative solution components, which is admitted by the error control.
%   Many codes can, therefore, go unstable on a long time interval because a
%   solution component goes to zero and a negative approximation is entirely
%   possible.  The default interval is the the longest for which the
%   Hindmarsh and Byrne code EPISODE is stable.  The system satisfies a
%   conservation law which can be monitored: 
%   
%       y(1) + y(2) + y(3) = 1
%   
%   A. C. Hindmarsh and G. D. Byrne, Applications of EPISODE: An
%   Experimental Package for the Integration of Ordinary Differential
%   Equations, in Numerical Methods for Differential Systems, L. Lapidus and
%   W. E. Schiesser eds., Academic Press, Orlando, FL, 1976, pp 147-166.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 2-11-94, 4-18-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:26:03 $

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
dydt = [ (-0.04*y(1,:) + 1e4*y(2,:).*y(3,:))
         (0.04*y(1,:) - 1e4*y(2,:).*y(3,:) - 3e7*y(2,:).^2)
         3e7*y(2,:).^2 ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 0.04e9];
y0 = [1; 0; 0];
options = odeset('Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y)
dfdy = [ -0.04  1e4*y(3)            1e4*y(2)
         0.04   -1e4*y(3)-6e7*y(2)  -1e4*y(2)
         0      6e7*y(2)            0 ];
