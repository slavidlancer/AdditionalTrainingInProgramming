function varargout = fem2ode(t,y,flag,N)
%FEM2ODE Stiff problem with a constant mass matrix, M*y' = f(t,y).
%   FEM2ODE(T,Y) or FEM2ODE(T,Y,[],N) returns the derivatives vector for a
%   finite element discretization of a partial differential equation.  The
%   parameter N controls the discretization, and the resulting system
%   consists of N equations.  By default, N is 9.
%   
%   FEM2ODE([],[],'mass') or FEM2ODE([],[],'mass',N) returns the constant
%   mass matrix M.  By default, the solvers of the ODE Suite solve systems
%   of the form y' = f(t,y).  But if the ODE solver property Mass is set to
%   'M' with ODESET, the solvers use the constant mass matrix returned by
%   the ODE file to solve M*y' = f(t,y).
%   
%   FEM2ODE also responds to the flag 'init' (see RIGIDODE).
%   
%   For example, to solve a 20x20 system with ODE15S or ODE23S, use
%   
%       [t,y] = ode15s('fem2ode',[],[],[],20);
%       [T,Y] = ode23s('fem2ode',[],[],[],20);
%   
%   FEM2ODE with no input arguments runs a demo, solves this problem with
%   ODE23S and plots the result.
%   
%   See also ODE15S, ODE23S, ODESET, ODEFILE, FEM1ODE.

%   Mark W. Reichelt and Lawrence F. Shampine, 11-11-94.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.14 $  $Date: 1998/04/28 14:07:24 $

if nargin == 0
  flag = 'demo';
end

if nargin < 4 | isempty(N)
  N = 9;
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y,N);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init(N);
case 'mass'                             % Return mass matrix M(t).
  varargout{1} = mass(t,y,N);
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y,N)
e = (exp(t)*(N+1)/pi) + zeros(N,1);   % h=pi/(N+1); e=(exp(t)/h)+zeros(N,1);
R = spdiags([e -2*e e], -1:1, N, N);
dydt = R * y;

% --------------------------------------------------------------------------

function [tspan,y0,options] = init(N)
tspan = [0; pi];
y0 = sin((pi/(N+1))*(1:N)');
options = odeset('Mass','M','Vectorized','on');
    
% --------------------------------------------------------------------------

function M = mass(t,y,N)
e = (pi/(6*(N+1))) + zeros(N,1);    % h=pi/(N+1); e=(h/6)+zeros(N,1);
M = spdiags([e 4*e e], -1:1, N, N);

% --------------------------------------------------------------------------

function demo

[t,y] = ode23s('fem2ode');
surf(1:9,t,y);
set(gca,'ZLim',[0 1]);
view(142.5,30);
title(['Finite element problem with constant mass matrix, ' ...
      'solved by ODE23S']);
xlabel('space');
ylabel('time');
zlabel('solution');
