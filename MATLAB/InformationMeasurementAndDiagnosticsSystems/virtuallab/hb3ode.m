function varargout = hb3ode(t,y,flag)
%HB3ODE Stiff problem 3 of Hindmarsh and Byrne.
%   This is the Hindmarsh and Byrne mockup of the diurnal variation problem.
%   It is not nearly as realistic as HB2ODE and is quite special in that the
%   Jacobian is constant, but it is interesting because the solution
%   exhibits quasi-discontinuities.  It is posed here in its original
%   non-autonomous form.  As with HB2ODE, it is reasonable to impose a
%   maximum step size so as to recognize the scale of the problem.  A
%   suitable value is a MaxStep of 3600 (one hour).  Because y(:,1) ranges
%   from about 1e-27 to about 1.1e-26, a suitable AbsTol is 1e-29.
%   
%   Because of the constant Jacobian, the ODE solver property JConstant
%   prevents the solvers from recomputing the Jacobian, making the
%   integration more reliable and faster.
%   
%   A. C. Hindmarsh and G. D. Byrne, Applications of EPISODE: An
%   Experimental Package for the Integration of Ordinary Differential
%   Equations, in Numerical Methods for Differential Systems, L. Lapidus and
%   W. E. Schiesser eds., Academic Press, Orlando, FL, 1976, pp 147-166.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE, HB2ODE.

%   Mark W. Reichelt and Lawrence F. Shampine, 1-31-94, 4-19-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:26:05 $

A = 1e-18;
B = 1e8;
C = 4;
D = 1e-19;

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y,A,B,C,D);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init(B,D);
case 'jacobian'                         % Return Jacobian matrix df/dy.
  varargout{1} = jacobian(t,y,B);
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y,A,B,C,D)
w = pi / 43200;
s = sin(w * t);
if s > 0
  E = exp(-C * w / s);
  Edot = C * E * w * w * cos(w * t) / (s * s);
else
  E = 0;
  Edot = 0;
end
H = (D + A*E) / B;
Hdot = Edot * (A / B);
dydt = Hdot - B*(y - H);

% --------------------------------------------------------------------------

function [tspan,y0,options] = init(B,D)
tspan = [0; 432000];
y0 = D / B;
options = odeset('AbsTol',1e-29,'MaxStep',3600,...
                 'JConstant','on','Vectorized','on');
    
% --------------------------------------------------------------------------

function dfdy = jacobian(t,y,B)
dfdy = -B;
