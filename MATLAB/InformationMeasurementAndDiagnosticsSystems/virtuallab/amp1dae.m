function varargout = amp1dae(t,u,flag)
%AMP1DAE Stiff differential-algebraic equation (DAE) from electrical circuit.
%   AMP1DAE with no input arguments runs a demo of the solution of a stiff
%   differential-algebraic equation (DAE) system expressed as a problem with
%   a singular mass matrix, M*u' = f(t,u).
%   
%   This is the one transistor amplifier problem displayed on p. 377 of
%   E. Hairer and G. Wanner, Solving Ordinary Differential Equations II
%   Stiff and Differential-Algebraic Problems, 2nd ed., Springer, Berlin,
%   1996.  This problem can easily be written in semi-explicit form, but it
%   arises in the form M*u' = f(t,u) with a mass matrix that is not
%   diagonal.  It is solved here in its original, non-diagonal form.
%   Fig. 1.4 of Hairer and Wanner shows the solution on [0 0.2], but here it
%   is computed on [0 0.05] because the computation is less expensive and
%   the nature of the solution is clearly visible on the shorter interval.
%   
%   See also ODE23T, ODE15S, ODESET, ODEFILE, HB1DAE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-6-98
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.6 $

if nargin == 0
  flag = 'demo';
end

switch flag
case ''                                 % Return du/dt = f(t,u).
  varargout{1} = f(t,u);
case 'init'                             % Return default [tspan,u0,options].
  [varargout{1:3}] = init;
case 'mass'                             % Return mass matrix M.
  varargout{1} = mass;
case 'demo'                             % Run a demo.
  demo;
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dudt = f(t,u)
Ub = 6;
R0 = 1000;
R = 9000;
alpha = 0.99;
beta = 1e-6;
Uf = 0.026;
Ue = 0.4*sin(200*pi*t);
f23 = beta*(exp((u(2) - u(3))/Uf) - 1);
dudt = [ -(Ue - u(1))/R0
         -(Ub/R - u(2)*2/R - 0.01*f23)
         -(f23 - u(3)/R)
         -((Ub - u(4))/R - 0.99*f23)
         (u(5)/R) ];

% --------------------------------------------------------------------------

function [tspan,u0,options] = init
Ub = 6;
tspan = [0 0.05];
u0 = [0; Ub/2; Ub/2; Ub; 0];  
options = odeset('Mass','M','MassSingular','yes');

% --------------------------------------------------------------------------

function M = mass
c = 1e-6 * [1:3];
M = zeros(5,5);
M(1,1) = -c(1);
M(1,2) =  c(1);
M(2,1) =  c(1);
M(2,2) = -c(1);
M(3,3) = -c(2);
M(4,4) = -c(3);
M(4,5) =  c(3);
M(5,4) =  c(3);
M(5,5) = -c(3);

% --------------------------------------------------------------------------

function demo

% Hairer and Wanner's RADAU5 requires consistent initial conditions
% which they take to be
Ub = 6;
u0 = zeros(5,1);
u0(2) = Ub/2;
u0(3) = u0(2);
u0(4) = Ub;

% Perturb the algebraic variables to test initialization.
u0(4) = u0(4) + 0.1;
u0(5) = u0(5) + 0.1; 

% Leave the 'MassSingular' property at its default 'maybe' to test the
% automatic detection of a DAE.
options = odeset('Mass','M');

[t,u] = ode23t('amp1dae',[0 0.05],u0,options);

Ue = 0.4*sin(200*pi*t);
plot(t,Ue,t,u(:,5))
legend('input ','output ',2)
title('One transistor amplifier DAE problem, solved by ODE23T')
