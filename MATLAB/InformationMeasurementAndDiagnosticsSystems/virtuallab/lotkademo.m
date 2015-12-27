%LOTKADEMO Demonstrate numerical integration of differential equations.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.6 $  $Date: 1997/11/21 23:26:26 $
echo on
clc
%   ODE23 and ODE45 are functions for the numerical solution of
%   ordinary differential equations.  They employ variable step
%   size Runge-Kutta integration methods.  ODE23 uses a
%   simple 2nd and 3rd order pair of formulas for medium accuracy
%   and ODE45 uses a 4th and 5th order pair for higher accuracy.
%   This demo shows their use on a simple differential equation.


pause   % Strike any key to continue.
clc
%   Consider the pair of first order ordinary differential equations
%   known as the Lotka-Volterra predator-prey model.

%             y1' = (1 - alpha*y2)*y1
%             y2' = (-1 + beta*y1)*y2
%
%   The functions y1 and y2 measure the sizes of the prey and predator
%   populations respectively.  The quadratic cross term accounts for the
%   interations between the species.  Note that the prey population
%   increases when there are no predators, but the predator population
%   decreases when there are no prey.

%   To simulate a system, we create a function M-file that returns a
%   column vector of state derivatives, given state and time values.
%   For this example, we've created a file called LOTKA.M.  Here's what
%   it looks like:
type lotka
pause   % Strike any key to continue.
clc
%   To simulate the differential equation defined in LOTKA over the
%   interval  0 < t < 15, we invoke ODE23.  We will use the default
%   relative accuracy of 1e-3 (0.1 percent).

t0 = 0;
tfinal = 15;
y0 = [20 20]';   % Define initial conditions.

% [t,y] = ode23('lotka',[t0 tfinal],y0);

pause   % Strike any key to start ODE23 solution.

tfinal = tfinal*(1+eps);
[t,y] = ode23('lotka',[t0 tfinal],y0);
plot(t,y), title('Lotka-Volterra equation time history'), pause
plot(y(:,1),y(:,2)), title('Lotka-Volterra equation - phase plane plot'),pause
clc
%   We will now simulate LOTKA using ODE45, instead of ODE23.
%   ODE45 takes longer at each step, but also takes larger steps.
%   Nevertheless, the output of ODE45 is smooth because by default
%   the solver uses a continuous extension formula to produce output
%   at 4 equally spaced time points in the span of each step taken.

% [T,Y] = ode45('lotka',[t0 tfinal],y0);

pause   % Strike any key to start ODE45 solution.

[T,Y] = ode45('lotka',[t0 tfinal],y0);

plot(T,Y), title('Lotka-Volterra equation time history'), pause

plot(y(:,1),y(:,2),'-',Y(:,1),Y(:,2),'-')
pause

echo off
disp('End')

