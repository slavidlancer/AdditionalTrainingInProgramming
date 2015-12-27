function varargout = batonode(t,y,flag)
%BATONODE Equations of motion for a baton, M(t,y)*y' = f(t,y).
%   BATONODE with no input arguments runs a demo of the equations of motion
%   for a baton, solving the time- and state-dependent mass matrix problem
%   with ODE45.
%   
%   BATONODE is based on Example 4.3A of D.A. Wells, Theory and Problems of
%   Lagrangian Dynamics, McGraw-Hill, 1967.  Many problems are conveniently
%   formulated with a mass matrix.  A baton is modelled as two particles of
%   masses m1 and m2 rigidly fastened to a light rod of length L.  Its
%   motion is followed in the vertical x-y plane under the action of
%   gravity.  If the coordinates of the first particle are (X,Y) and the
%   angle the rod makes with the horizontal is theta, Lagrange's equations
%   lead to a mass matrix that depends on the unknown theta.  The variables
%   y here are y(1)=X, y(2)=X', y(3)=Y, y(4)=Y', y(5)=theta, y(6)=theta'. 
%   
%   See also ODE45, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-6-98
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.3 $

global m1 m2 L g

m1 = 0.1;
m2 = 0.1;
L = 1;
g = 9.81;

if nargin == 0
  flag = 'demo';
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
case 'mass'                             % Return mass matrix M(t,y).
  varargout{1} = mass(t,y);
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
global m1 m2 L g
dydt = [
  y(2)
  m2*L*y(6)^2*cos(y(5))
  y(4)
  m2*L*y(6)^2*sin(y(5))-(m1+m2)*g
  y(6)
  -g*L*cos(y(5))
  ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = linspace(0,4,25);
y0 = [0; 4; 2; 20; -pi/2; 2];
options = odeset('Mass','M(t,y)');

% --------------------------------------------------------------------------

function M = mass(t,y)
global m1 m2 L g
M = zeros(6,6);
M(1,1) = 1;
M(2,2) = m1 + m2;
M(2,6) = -m2*L*sin(y(5));
M(3,3) = 1;
M(4,4) = m1 + m2;
M(4,6) = m2*L*cos(y(5));
M(5,5) = 1;
M(6,2) = -L*sin(y(5));
M(6,4) = L*cos(y(5));
M(6,6) = L^2;

% --------------------------------------------------------------------------

function demo

global m1 m2 L g

[t y] = ode45('batonode');

theta = y(1,5);
X = y(1,1);
Y = y(1,3);
xvals = [X X+L*cos(theta)];
yvals = [Y Y+L*sin(theta)];
plot(xvals,yvals,xvals,yvals,'o')
title('A thrown baton problem with mass matrix M(t,y), solved by ODE45');
axis([0 22 0 25])
hold on
for j = 2:length(t)
  theta = y(j,5);
  X = y(j,1);
  Y = y(j,3);
  xvals = [X X+L*cos(theta)];
  yvals = [Y Y+L*sin(theta)];
  plot(xvals,yvals,xvals,yvals,'o')
end
hold off
