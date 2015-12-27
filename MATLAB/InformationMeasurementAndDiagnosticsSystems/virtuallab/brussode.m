function varargout = brussode(t,y,flag,N)
%BRUSSODE Stiff problem modelling a chemical reaction (the Brusselator).
%   BRUSSODE(T,Y) or BRUSSODE(T,Y,[],N) returns the derivatives vector for
%   the Brusselator problem.  The parameter N >= 2 is used to specify the
%   number of grid points; the resulting system consists of 2N equations.
%   By default, N is 2.  The problem becomes increasingly stiff and
%   increasingly sparse as N is increased.  The Jacobian for this problem is
%   a sparse matrix (banded with bandwidth 5).
%   
%   BRUSSODE([],[],'jpattern') or BRUSSODE([],[],'jpattern',N) returns a
%   sparse matrix of 1's and 0's showing the locations of nonzeros in the
%   Jacobian dF/dY.  By default, the stiff solvers of the ODE Suite generate
%   Jacobians numerically as full matrices.  However, if the ODE solver
%   property JPattern is set to 'on' with ODESET, a solver calls the ODE
%   file with the flag 'jpattern'.  The ODE file returns a sparsity pattern
%   that the solver uses to generate the Jacobian numerically as a sparse
%   matrix.  Providing a sparsity pattern can significantly reduce the
%   number of function evaluations required to generate the Jacobian and can
%   accelerate integration.  For the BRUSSODE problem, only 4 evaluations of
%   the function are needed to compute the 2N x 2N Jacobian matrix.
%   
%   BRUSSODE is Vectorized (see VDPODE, ODESET) and responds to the flags
%   'init' (see RIGIDODE) and 'jacobian' (see VDPODE).
%   
%   E. Hairer and G. Wanner, Solving Ordinary Differential Equations II,
%   Stiff and Differential-Algebraic Problems, Springer-Verlag, Berlin,
%   1991, pp. 5-8.
%   
%   See also ODE15S, ODE23S, ODESET, NUMJAC, COLGROUP, ODEFILE.

%   Mark W. Reichelt and Lawrence F. Shampine, 8-30-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.10 $  $Date: 1997/11/21 23:25:06 $

if nargin < 4 | isempty(N)
  N = 2;
end

switch flag
case ''                                 % Return dy/dt = f(t,y).
  varargout{1} = f(t,y,N);
case 'init'                             % Return default [tspan,y0,options].
  [varargout{1:3}] = init(N);
case 'jpattern'                         % Return sparsity pattern of df/dy.
  varargout{1} = jpattern(t,y,N);
case 'jacobian'                         % Return Jacobian matrix df/dy.
  varargout{1} = jacobian(t,y,N);
otherwise
  error(['Unknown flag ''' flag '''.']);
end

% --------------------------------------------------------------------------

function dydt = f(t,y,N)
c = 0.02 * (N+1)^2;
dydt = zeros(2*N,size(y,2));      % preallocate dy/dt

% Evaluate the 2 components of the function at one edge of the grid
% (with edge conditions).
i = 1;
dydt(i,:) = 1 + y(i+1,:).*y(i,:).^2 - 4*y(i,:) + c*(1-2*y(i,:)+y(i+2,:));
dydt(i+1,:) = 3*y(i,:) - y(i+1,:).*y(i,:).^2 + c*(3-2*y(i+1,:)+y(i+3,:));

% Evaluate the 2 components of the function at all interior grid points.
i = 3:2:2*N-3;
dydt(i,:) = 1 + y(i+1,:).*y(i,:).^2 - 4*y(i,:) + ...
    c*(y(i-2,:)-2*y(i,:)+y(i+2,:));
dydt(i+1,:) = 3*y(i,:) - y(i+1,:).*y(i,:).^2 + ...
    c*(y(i-1,:)-2*y(i+1,:)+y(i+3,:));

% Evaluate the 2 components of the function at the other edge of the grid
% (with edge conditions).
i = 2*N-1;
dydt(i,:) = 1 + y(i+1,:).*y(i,:).^2 - 4*y(i,:) + c*(y(i-2,:)-2*y(i,:)+1);
dydt(i+1,:) = 3*y(i,:) - y(i+1,:).*y(i,:).^2 + c*(y(i-1,:)-2*y(i+1,:)+3);

% --------------------------------------------------------------------------

function [tspan,y0,options] = init(N)
tspan = [0; 10];
y0 = [1+sin((2*pi/(N+1))*(1:N)); 3+zeros(1,N)];
y0 = y0(:);
options = odeset('Vectorized','on');

% --------------------------------------------------------------------------

function dfdy = jacobian(t,y,N)
c = 0.02 * (N+1)^2;
B = zeros(2*N,5);
B(1:2*(N-1),1) = B(1:2*(N-1),1) + c;
i = 1:2:2*N-1;
B(i,2) = 3 - 2*y(i).*y(i+1);
B(i,3) = 2*y(i).*y(i+1) - 4 - 2*c;
B(i+1,3) = -y(i).^2 - 2*c;
B(i+1,4) = y(i).^2;
B(3:2*N,5) = B(3:2*N,5) + c;
dfdy = spdiags(B,-2:2,2*N,2*N);     % Note this is a SPARSE Jacobian.

% --------------------------------------------------------------------------

function S = jpattern(t,y,N)
B = ones(2*N,5);
B(2:2:2*N,2) = zeros(N,1);
B(1:2:2*N-1,4) = zeros(N,1);
S = spdiags(B,-2:2,2*N,2*N);
