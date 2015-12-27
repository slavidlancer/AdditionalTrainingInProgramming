function varargout = sticode(t,y,flag)
%STICODE Equations of motion for a spring-driven mass stuck to a surface.
%   STICODE contains the equations of motion for a spring-driven mass with
%   friction/stiction and is used as a test of event location capabilities.
%   Note that MODE switches back and forth between -1, 0, and 1, and this
%   changes the equations of the system.
%   
%   STICODE with no input arguments runs a demo of stiction/friction.  A
%   sinusoidal force is applied to the spring, and the position and velocity
%   of the mass are plotted.
%   
%   See also ODE45, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 1/3/95
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.10 $  $Date: 1997/11/21 23:27:16 $

global MODE K Fs Ff M A

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
global MODE K Fs Ff M A
if MODE == 0
  dydt = [0; 0];
else
  F = K * (A*sin(2*pi*t) - y(1));     % Force applied to block.
  dydt = [y(2); (F - MODE*Ff)/M];
end

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 4*pi];
y0 = [0; 0];
options = [];

% --------------------------------------------------------------------------

function [value,isterminal,direction] = events(t,y)
global MODE K Fs Ff M A
if MODE == 0
  F = K * (A*sin(2*pi*t) - y(1));       % Force applied to block.
  value = abs(F) - Fs;                  % event when force becomes big enough
  isterminal = 1;                       % stop at this event
  direction = 1;                        % value must be increasing
else
  value = y(2);                         % event when velocity becomes zero
  isterminal = 1;                       % stop at this event
  direction = 0;                        % don't care if increasing/decreasing
end

% --------------------------------------------------------------------------

function demo

global MODE K Fs Ff M A

A = 1;                  % Amplitude of input.
K = 1.5;                % Spring constant.
Fs = 1.2;               % Sticking threshold.
Ff = 1.1;               % Friction force.
M = .125;               % Mass of block.

tstart = 0;
tfinal = 3;
y0 = [0; 0];

MODE = sign(y0(2));

hmax = .25;             % 1/4 of a period

options = odeset('Events','on','OutputFcn','odeplot','Refine',4,...
                 'MaxStep',hmax);

clf reset, hold on, box on

t = tstart + (0:100)*((tfinal-tstart)/100);
plot(t,A*sin(2*pi*t));
title('stiction demo');

tout = tstart;
yout = y0.';
teout = [];
yeout = [];
ieout = [];
while 1
  % Solve until the first terminal event.
  [t,y,te,ye,ie] = ode45('sticode',[tstart tfinal],y0,options);

  % Accumulate output.
  nt = length(t);
  tout = [tout; t(2:nt)];
  yout = [yout; y(2:nt,:)];
  teout = [teout; te];          % Events at tstart are never reported. 
  yeout = [yeout; ye];
  ieout = [ieout; ie];

  ud = get(gcf,'UserData');
  if ud.stop
    break;
  elseif t(nt) == tfinal
    break;
  end

  tstart = t(nt);
  y0 = y(nt,:).';
  F = K * (A*sin(2*pi*tstart) - y0(1)); % Force applied to block.
  if MODE == 0
    MODE = sign(F);
  elseif abs(F) <= Ff
    MODE = 0;
    y0(2) = 0;
  else
    MODE = sign(y0(2));
  end
end

hold off
odeplot([],[],'done');
