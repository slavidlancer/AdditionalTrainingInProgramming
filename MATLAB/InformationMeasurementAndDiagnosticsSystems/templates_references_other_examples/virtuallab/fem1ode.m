function varargout = fem1ode(t,y,flag,N)
%FEM1ODE Stiff problem with a time-dependent mass matrix, M(t)*y' = f(t,y).
%   FEM1ODE(T,Y) or FEM1ODE(T,Y,[],N) returns the derivatives vector for a
%   finite element discretization of a partial differential equation.  The
%   parameter N controls the discretization, and the resulting system
%   consists of N equations.  By default, N is 9.
%   
%   FEM1ODE(T,[],'mass') or FEM1ODE(T,[],'mass',N) returns the
%   time-dependent mass matrix M evaluated at time T.  By default, the
%   solvers of the ODE Suite solve systems of the form y' = f(t,y).  But if
%   the ODE solver property Mass is set to 'M', 'M(t)', or 'M(t,y)' with
%   ODESET, the solvers call the ODE file with the flag 'mass'.  The ODE
%   file returns a mass matrix that the solvers use to solve M*y' = f(t,y).
%   
%   FEM1ODE also responds to the flag 'init' (see RIGIDODE).
%   
%   For example, to solve a 20x20 system, use
%   
%       [t,y] = ode15s('fem1ode',[],[],[],20);
%   
%   FEM1ODE with no input arguments runs a demo, solves this problem with
%   ODE15S and plots the result.
%   
%   See also ODE15S, ODESET, ODEFILE, FEM2ODE.

%   Mark W. Reichelt and Lawrence F. Shampine, 11-11-94.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.13 $  $Date: 1998/04/28 14:07:24 $

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
e = ((N+1)/pi) + zeros(N,1);            % h=pi/(N+1); e=(1/h)+zeros(N,1);
R = spdiags([e -2*e e], -1:1, N, N);
dydt = R*y;

% --------------------------------------------------------------------------

function [tspan,y0,options] = init(N)
tspan = [0; pi];
y0 = sin((pi/(N+1))*(1:N)');
options = odeset('Mass','M(t)','Vectorized','on');
    
% --------------------------------------------------------------------------

function M = mass(t,y,N)
e = (exp(-t)*pi/(6*(N+1))) + zeros(N,1); % h=pi/(N+1); e=exp(-t)*h/6+zeros
M = spdiags([e 4*e e], -1:1, N, N);

% --------------------------------------------------------------------------

function demo

[t,y] = ode15s('fem1ode');
surf(1:9,t,y);
set(gca,'ZLim',[0 1]);
view(142.5,30);
title(['Finite element problem with time-dependent mass matrix, ' ...
      'solved by ODE15S']);
xlabel('space');
ylabel('time');
zlabel('solution');
