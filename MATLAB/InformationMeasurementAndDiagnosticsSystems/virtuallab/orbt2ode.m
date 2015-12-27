function varargout = orbt2ode(t,y,flag)
%ORBT2ODE Non-stiff problem D5 of Hull et al.
%   This is a two body problem with an elliptical orbit of eccentricity 0.9.
%   The first two solution components are coordinates of one body relative
%   to the other body, so plotting one against the other gives the orbit.  A
%   plot of the first solution component as a function of time shows why
%   this problem needs a small step size near the points of closest
%   approach.  Moderately stringent tolerances are necessary to reproduce
%   the qualitative behavior of the orbit.  Suitable values are 1e-5 for
%   RelTol and 1e-5 for AbsTol.
%   
%   T. E. Hull, W. H. Enright, B. M. Fellen, and A. E. Sedgwick, Comparing
%   numrical methods for ordinary differential equations, SIAM
%   J. Numer. Anal., 9 (1972) pp. 603-637.
%   
%   L. F. Shampine, Numerical Solution of Ordinary Differential Equations,
%   Chapman & Hall, 1994, p. 121.
%   
%   See also ODE45, ODE23, ODE113, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-23-94, 4-19-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:26:43 $

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
r = (y(1)^2 + y(2)^2) ^ 1.5;
dydt = [y(3); y(4); -y(1)/r; -y(2)/r];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
ecc = 0.9;
tspan = [0; 20];
y0 = [1-ecc; 0; 0; sqrt((1+ecc)/(1-ecc))];
options = odeset('RelTol',1e-5,'AbsTol',1e-5);
