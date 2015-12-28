function varargout = ballode(t,y,flag)
%BALLODE Equations of motion for a bouncing ball.
%   BALLODE(T,Y) returns the derivatives vector for the equations of motion
%   for a bouncing ball.  This ODE file can be used to test the
%   zero-crossing location capabilities of the ODE Suite solvers.
%   
%   BALLODE(T,Y,'events') returns a zero-crossing vector VALUE evaluated at
%   (T,Y) and two constant vectors ISTERMINAL and DIRECTION.  By default,
%   the solvers of the ODE Suite do not locate zero-crossings.  However, if
%   the ODE solver property Events is set to 'on' with ODESET, the solver
%   calls the ODE file with the flag 'events'.  The ODE file returns the
%   information that the solver uses to locate zero-crossings of the
%   elements in the VALUE vector.  The VALUE vector may be of any length.
%   It is evaluated at the beginning and end of a step, and if any elements
%   make transitions to, from, or through zero (with the directionality
%   specified in DIRECTION), then the zero-crossing point is located.  The
%   ISTERMINAL vector consists of logical 1's and 0's, enabling you to
%   specify whether or not a zero-crossing of the corresponding VALUE
%   element halts the integration.  The DIRECTION vector enables you to
%   specify a desired directionality, positive (1), negative (-1), and don't
%   care (0) for each VALUE element.
%   
%   BALLODE(T,Y,'init') returns initial conditions (see RIGIDODE).
%   
%   BALLODE with no input arguments runs a demo of a bouncing ball.  It is
%   an example of repeated event location, where the initial conditions are
%   changed after each terminal event.  This demo computes ten bounces with
%   calls to ODE45.  The speed of the ball is attenuated by 0.9 after each
%   bounce, and the simulation is stopped when the time for a bounce has
%   decreased to a minimum length.  Note that the event function also
%   locates the peak of each bounce.
%
%   See also ODE45, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 1/3/95
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.10 $  $Date: 1997/11/21 23:25:02 $

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
dydt = [y(2); -9.8];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 10];
y0 = [0; 20];
options = odeset('Events','on');

% --------------------------------------------------------------------------

function [value,isterminal,direction] = events(t,y)
% Locate the time when height passes through zero in a decreasing direction
% and stop integration.  Also locate both decreasing and increasing
% zero-crossings of velocity, and don't stop integration.
value = y;                              % [height; velocity]
isterminal = [1; 0];
direction = [-1; 0];

% --------------------------------------------------------------------------

function demo

tstart = 0;
tfinal = 30;
y0 = [0; 20];
refine = 4;
options = odeset('Events','on','OutputFcn','odeplot','OutputSel',1,...
                 'Refine',refine);

clf reset                               % deletes any stop button
set(gca,'xlim',[0 30],'ylim',[0 25]);
box on
hold on;

tout = tstart;
yout = y0.';
teout = [];
yeout = [];
ieout = [];
for i = 1:10
  % Solve until the first terminal event.
  [t,y,te,ye,ie] = ode23('ballode',[tstart tfinal],y0,options);
  if ~ishold
    hold on
  end
  % Accumulate output.  This could be passed out as output arguments.
  nt = length(t);
  tout = [tout; t(2:nt)];
  yout = [yout; y(2:nt,:)];
  teout = [teout; te];          % Events at tstart are never reported. 
  yeout = [yeout; ye];
  ieout = [ieout; ie];

  ud = get(gcf,'UserData');
  if ud.stop
    break;
  end
  
  % Set the new initial conditions, with .9 attenuation.
  y0(1) = 0;
  y0(2) = -.9*y(nt,2);

  % A good guess of a valid first timestep is the length of the last valid
  % timestep, so use it for faster computation.  'refine' is 4 by default.
  options = odeset(options,'InitialStep',t(nt)-t(nt-refine),...
                           'MaxStep',t(nt)-t(1));

  tstart = t(nt);
end

hold off
odeplot([],[],'done');
