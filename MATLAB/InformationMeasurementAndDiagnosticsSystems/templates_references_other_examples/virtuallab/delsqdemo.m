function delsqdemo
%DELSQDEMO Finite difference Laplacian on various domains.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.7 $  $Date: 1997/11/21 23:25:32 $

disp('Finite differences on an L-shaped domain')
delsqshow(32,'L')
disp(' ')

disp('Nested dissection on a square grid')
delsqshow(32,'N')
disp(' ')

disp('Finite differences on a multiply-connected domain')
delsqshow(32,'B')
disp(' ')

disp('End')

function delsqshow(n,Rlist)
%DELSQSHOW Show discrete Laplacian on various grids.
%   delsqshow(n,Rlist)
%   Rectangular grid is n-by-n.
%   Rlist is a string of letters denoting regions, taken
%   from the list 'SNLCDAHB'.  See numgrid.

clf reset
colordef(gcf,'black')

% Grid size
if nargin < 1, n = 32; end
if nargin < 2, Rlist = 'SNLCDAHB'; end
   
% Loop over regions known to "numgrid"
for R = Rlist

    % Generate and display the grid.
    G = numgrid(R,n);
    spy(G)
    title('A finite difference grid')
    g = numgrid(R,12)
    disp('pause'), disp(' '), pause

    % Generate and display the discrete Laplacian.
    D = delsq(G);
    spy(D)
    title('The 5-point Laplacian')
    disp('pause'), disp(' '), pause
   
    % Number of interior points
    N = sum(G(:)>0);

    % Solve the Dirichlet boundary value problem:
    %    delsq(u) = 1 in the interior,
    %    u = 0 on the boundary.
    disp('Solving the sparse linear system ...')
    rhs = ones(N,1);
    tic
    if R == 'N'
        % For nested dissection, turn off minimum degree ordering.
        spparms('autommd',0)
        u = D\rhs;
        spparms('autommd',1)
    else
        u = D\rhs;
    end
    toc

    % Map the solution onto the grid and display it.
    U = G;
    U(G>0) = full(u(G(G>0)));
    clabel(contour(U));
    prism
    axis('square'), axis('ij')
    disp('pause'), disp(' '), pause

    colormap((cool+1)/2);
    mesh(U)
    axis([0 n 0 n 0 max(max(U))])
    axis('square'), axis('ij')
    disp('pause'), disp(' '), pause
end


