function varargout = besslode(t,y,flag)
%BESSLODE Bessel's equation of order 0.
%   BESSLODE is part of problem G3 of Thompson, and can be used to test
%   event location capabilities.
%   
%   S. Thompson, A Collection of Test Problems for Ordinary Differential
%   Equation Solvers Which Have Provisions for Rootfinding, ORNL/TM-9912.
%   
%   BESSLODE with no input arguments runs a demo of repeated event location
%   for the simple purpose of making a table of specific values of the
%   dependent variable.
%   
%   See also ODE45, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 5-1-95
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.9 $  $Date: 1997/11/21 23:25:05 $

if nargin == 0
  flag = 'demo';
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
case 'events'                           % Return [value,isterminal,direction].
  [varargout{1:3}] = events(t,y);
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
if abs(t) > 0             % are we away from zero?
  dydt = [y(2); (-y(2)/t - y(1))];
else
  dydt = [y(2); -1/2];
end

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 20];
y0 = [1; 0];
options = odeset('Events','on');

% --------------------------------------------------------------------------

function [value,isterminal,direction] = events(t,y)
% Locate times when J_0(t) passes through zero in either direction.
value = y(1);
isterminal = 0;
direction = 0;

% --------------------------------------------------------------------------

function demo

fprintf('\nThis is a demo of using event location to locate the zeros of\n');
fprintf('Bessel function J_0(t) in the time interval [0 20].\n\n');

fprintf('Calling ODE45 on BESSLODE with event function active...\n\n');

fprintf('Note that the step sizes used by the integrator are NOT\n');
fprintf('determined by the location of the events, and the events are\n');
fprintf('still located accurately.\n\n');

options = odeset('Events','on','OutputFcn','odeplot');
[t,y,te,ye,ie] = ode45('besslode',[0;20],[1;0],options);

plot(t,y,te,ye(:,1),'o');

fprintf('The zeros of J_0(t) in [0 20] are at times\n\n');
disp(te)
