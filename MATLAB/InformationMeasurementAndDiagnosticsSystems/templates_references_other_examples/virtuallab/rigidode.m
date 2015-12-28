function varargout = rigidode(t,y,flag)
%RIGIDODE Euler equations of a rigid body without external forces.
%   A standard test problem for non-stiff solvers proposed by Krogh.  The
%   analytical solutions are Jacobian elliptic functions accessible in
%   MATLAB.  The interval here is about 1.5 periods; it is that for which
%   solutions are plotted on p. 243 of Shampine and Gordon.
%   
%   RIGIDODE([],[],'init') returns the default TSPAN, Y0, and OPTIONS values
%   for this problem.  These values are retrieved by an ODE Suite solver if
%   the solver is invoked with empty TSPAN or Y0 arguments.  This example
%   does not set any OPTIONS, so the third output argument is set to empty
%   [] instead of an OPTIONS structure created with ODESET.
%   
%   L. F. Shampine and M. K. Gordon, Computer Solution of Ordinary
%   Differential Equations, W.H. Freeman & Co., 1975.
%   
%   See also ODE45, ODE23, ODE113, ODESET, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 3-23-94, 4-19-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.8 $  $Date: 1997/11/21 23:27:00 $

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
dydt = [y(2)*y(3); -y(1)*y(3); -0.51*y(1)*y(2)];

% --------------------------------------------------------------------------

function [tspan,y0,options] = init
tspan = [0; 12];
y0 = [0; 1; 1];
options = [];
