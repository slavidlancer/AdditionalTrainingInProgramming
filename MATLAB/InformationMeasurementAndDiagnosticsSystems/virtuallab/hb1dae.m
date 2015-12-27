function varargout = hb1dae(t,y,flag)
%HB1DAE Stiff differential-algebraic equation (DAE) from a conservation law.
%   HB1DAE with no input arguments runs a demo of the solution of a stiff
%   differential-algebraic equation (DAE) system expressed as a problem with
%   a singular mass matrix, M*y' = f(t,y).
%   
%   The Robertson problem coded in HB1ODE is a classic test problem for
%   codes that solve stiff ODEs.  The problem is 
%
%         y(1)' = -0.04*y(1) + 1e4*y(2)*y(3)
%         y(2)' =  0.04*y(1) - 1e4*y(2)*y(3) - 3e7*y(2)^2
%         y(3)' =  3e7*y(2)^2
%
%   It is to be solved with initial conditions y(1) = 1, y(2) = 0, y(3) = 0 
%   to steady state.  
%
%   These differential equations satisfy a linear conservation law that can
%   be used to reformulate the problem as the DAE
%
%         y(1)' = -0.04*y(1) + 1e4*y(2)*y(3)
%         y(2)' =  0.04*y(1) - 1e4*y(2)*y(3) - 3e7*y(2)^2
%            0  =  y(1) + y(2) + y(3) - 1
%
%   This problem is used as an example in the prolog to LSODI [1].  Though
%   consistent initial conditions are obvious, the guess y(3) = 1e-3 is used
%   to test initialization.  A logarithmic scale is appropriate for plotting
%   the solution on the long time interval.  y(2) is small and its major
%   change takes place in a relatively short time.  Accordingly, the prolog
%   to LSODI specifies a much smaller absolute error tolerance on this
%   component. Also, when plotting it with the other components, it is
%   multiplied by 1e4. The natural output of the code does not show clearly
%   the behavior of this component, so additional output is specified for
%   this purpose.
%   
%   [1]  A.C. Hindmarsh, LSODE and LSODI, two new initial value ordinary
%        differential equation solvers, SIGNUM Newsletter, 15 (1980), 
%        pp. 10-11.
%   
%   See also ODE15S, ODE23T, ODESET, ODEFILE, HB1ODE, AMP1DAE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-6-98
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.3 $

if nargin == 0
  flag = 'demo';
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init;
case 'mass'                             % Return mass matrix M.
  varargout{1} = mass;
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y)
dydt = [ (-0.04*y(1,:) + 1e4*y(2,:).*y(3,:))
         (0.04*y(1,:) - 1e4*y(2,:).*y(3,:) - 3e7*y(2,:).^2)
         (y(1,:) + y(2,:) + y(3,:) - 1) ];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0 4*logspace(-6,6)];
% Note that this is an inconsistent initial condition.
y0 = [1; 0; 1e-3];
% The tolerances are those of the LSODI example.
options = odeset('Mass','M','MassSingular','yes','RelTol',1e-4, ...
    'AbsTol',[1e-6 1e-10 1e-6],'Vectorized','on');

% --------------------------------------------------------------------------

function M = mass(t,y)
M = [1 0 0; 0 1 0; 0 0 0];

% --------------------------------------------------------------------------

function demo

% Use an inconsistent initial condition to test initialization.
y0 = [1; 0; 1e-3];

% Use the LSODI example tolerances.  The 'MassSingular' property is
% left at its default 'maybe' to test the automatic detection of a DAE.
options = odeset('Mass','M','RelTol',1e-4,'AbsTol',[1e-6 1e-10 1e-6], ...
    'Vectorized','on');

[t,y] = ode15s('hb1dae',[0 4*logspace(-6,6)],y0,options);

y(:,2) = 1e4*y(:,2);

semilogx(t,y)
ylabel('1e4 * y(:,2)')
title('Robertson DAE problem with a Conservation Law, solved by ODE15S')
xlabel('This is equivalent to the stiff ODEs coded in HB1ODE.')
