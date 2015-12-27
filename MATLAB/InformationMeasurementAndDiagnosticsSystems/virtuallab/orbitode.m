function varargout = orbitode(t,y,flag)
%ORBITODE Restricted 3 body problem.
%   This is a standard test problem for non-stiff solvers stated in Shampine
%   and Gordon, p. 246 ff.  The first two solution components are
%   coordinates of the body of infinitesimal mass, so plotting one against
%   the other gives the orbit of the body around the other two bodies.  The
%   initial conditions have been chosen so as to make the orbit periodic.
%   Moderately stringent tolerances are necessary to reproduce the
%   qualitative behavior of the orbit.  Suitable values are 1e-5 for RelTol
%   and and 1e-4 for AbsTol.
%   
%   ORBITDEM with no input arguments runs a demo of event location where the
%   ability to specify the direction of the zero crossing is critical.  Both
%   the point of return to the initial point and the point of maximum
%   distance have the same event function value, and the direction of the
%   crossing is used to distinguish them.
%   
%   L. F. Shampine and M. K. Gordon, Computer Solution of Ordinary
%   Differential Equations, W.H. Freeman & Co., 1975.
%   
%   See also ODE45, ODE23, ODE113, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-23-94, 4-19-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:26:42 $

y0 = [1.2; 0; 0; -1.04935750983031990726];

if nargin == 0
  flag = 'demo';
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init(y0);
case 'events'                           % Return [value,isterminal,direction].
  [varargout{1:3}] = events(t,y,y0);
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
mu = 1 / 82.45;
mustar = 1 - mu;
r13 = ((y(1) + mu)^2 + y(2)^2) ^ 1.5;
r23 = ((y(1) - mustar)^2 + y(2)^2) ^ 1.5;
dydt = [ y(3)
         y(4)
         (2*y(4) + y(1) - mustar*((y(1)+mu)/r13) - mu*((y(1)-mustar)/r23))
         (-2*y(3) + y(2) - mustar*(y(2)/r13) - mu*(y(2)/r23)) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init(y)
tspan = [0; 6.19216933131963970674];
y0 = y;
options = odeset('RelTol',1e-5,'AbsTol',1e-4);

% --------------------------------------------------------------------------

function [value,isterminal,direction] = events(t,y,y0)
% Locate the time when the object returns closest to the initial point y0
% and starts to move away, and stop integration.  Also locate the time when
% the object is farthest from the initial point y0 and starts to move closer.
% 
% The current distance of the body is
% 
%   DSQ = (y(1)-y0(1))^2 + (y(2)-y0(2))^2 = <y(1:2)-y0,y(1:2)-y0>
%   
% A local minimum of DSQ occurs when d/dt DSQ crosses zero heading in
% the positive direction.  We can compute d/dt DSQ as
% 
%   d/dt DSQ = 2*(y(1:2)-y0)'*dy(1:2)/dt = 2*(y(1:2)-y0)'*y(3:4)
%   
dDSQdt = 2 * ((y(1:2)-y0(1:2))' * y(3:4));
value = [dDSQdt; dDSQdt];
isterminal = [1; 0];                    % stop at local minimum
direction = [1; -1];                    % [local minimum, local maximum]

% --------------------------------------------------------------------------

function demo

fprintf('\nThis is an example of event location where the ability to\n');
fprintf('specify the direction of the zero crossing is critical.  Both\n');
fprintf('the point of return to the initial point and the point of\n');
fprintf('maximum distance have the same event function value, and the\n');
fprintf('direction of the crossing is used to distinguish them.\n\n');

fprintf('Calling ODE45 on ORBITODE with event functions active...\n\n');

fprintf('Note that the step sizes used by the integrator are NOT\n');
fprintf('determined by the location of the events, and the events are\n');
fprintf('still located accurately.\n\n');

options = odeset('Events','on','OutputFcn','odephas2');
[t,y,te,ye,ie] = ode45('orbitode',[0;10],[],options);

plot(y(:,1),y(:,2),ye(:,1),ye(:,2),'o');
