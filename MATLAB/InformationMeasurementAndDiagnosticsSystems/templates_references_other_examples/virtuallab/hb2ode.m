function varargout = hb2ode(t,y,flag)
%HB2ODE Stiff problem 2 of Hindmarsh and Byrne.
%   This is a non-autonomous diurnal kinetics problem that strains the step
%   size selection scheme.  It is an example for which quite small values of
%   the absolute error tolerance are appropriate.  It is also reasonable to
%   impose a maximum step size so as to recognize the scale of the problem.
%   Suitable values are an AbsTol of 1e-20 and a MaxStep of 3600 (one hour).
%   The time interval is 1/3 that used by Kahaner, Moler, and Nash, p. 312,
%   who display the solution on p. 313.  That graph is a semilogy plot using
%   solution values only as small as 1e-3.  A small threshold of 1e-20
%   specified by the absolute error control tests whether the solver will
%   keep the size of the solution this small during the night time.
%   Hindmarsh and Byrne observe that their variable order code resorts to
%   high orders during the day (as high as 5), so it is not surprising that
%   relatively low order codes like ODE23S might be comparatively
%   inefficient.
%   
%   A. C. Hindmarsh and G. D. Byrne, Applications of EPISODE: An
%   Experimental Package for the Integration of Ordinary Differential
%   Equations, in Numerical Methods for Differential Systems, L. Lapidus and
%   W. E. Schiesser eds., Academic Press, Orlando, FL, 1976, pp 147-166.
%   
%   D. Kahaner, C. Moler, and S. Nash, Numerical Methods and Software,
%   Prentice-Hall, 1989.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE, HB3ODE.

%   Mark W. Reichelt and Lawrence F. Shampine, 4-19-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:26:04 $

q1 = 1.63e-16;
q2 = 4.66e-16;
y3 = 3.7e16;

s = sin((pi / 43200) * t);
if s > 0
  q3 = exp(-22.62 / s);
  q4 = exp(-7.601 / s);
else
  q3 = 0;
  q4 = 0;
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y,y3,q1,q2,q3,q4);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
case 'jacobian'                         % Return Jacobian matrix df/dy.
  varargout{1} = jacobian(t,y,y3,q1,q2,q3,q4);
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y,y3,q1,q2,q3,q4)
dydt = [ ((-q1*y3)*y(1,:) - q2*y(1,:).*y(2,:) + (2*y3)*q3 + q4.*y(2,:))
         ((q1*y3)*y(1,:) - q2*y(1,:).*y(2,:) - q4.*y(2,:)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 43200]; 
y0 = [1e6; 1e12];
options = odeset('AbsTol',1e-20,'MaxStep',3600,'Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y,y3,q1,q2,q3,q4)
dfdy = [ (-q1*y3 - q2*y(2))  (-q2*y(1) + q4)
         (q1*y3 - q2*y(2))   (-q2*y(1) - q4) ];
