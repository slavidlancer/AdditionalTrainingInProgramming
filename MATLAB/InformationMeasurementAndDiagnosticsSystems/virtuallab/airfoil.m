%AIRFOIL Display sparse matrix from NASA airfoil.

%   John Gilbert and Cleve Moler, 1-10-91, 10-2-91.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.5 $  $Date: 1997/11/21 23:24:59 $

clf reset
colordef(gcf,'black')
clc
echo on

% Finite element mesh for a NASA airfoil, including two trailing flaps.
% The data, stored in the file AIRFOIL.MAT, consists of 4253 pairs
% of (x,y) coordinates of the mesh points and an array of 12,289 pairs
% of indices, (i,j), specifying connections between the mesh points.

load airfoil

% Scale x and y by 2^(-32) to bring them into the range [0,1].
x = pow2(x,-32); y = pow2(y,-32);

pause     % Press any key to continue.

clc

% Form the sparse adjacency matrix and make it positive definite.

n = max(max(i),max(j));
A = sparse(i,j,-1,n,n);
A = A + A';
d = abs(sum(A)) + 1;
A = A + diag(sparse(d));

% It takes a few seconds to plot the finite element mesh.

gplot(A,[x y])

pause     % Press any key to continue.

clc

% Do a spy plot of the adjacency matrix.

spy(A)
disp(' ')
title('The adjacency matrix.')

pause     % Press any key to continue.

clc

% Here are spy plots of symmetric reorderings of the matrix.

r = symrcm(A);
spy(A(r,r))
title('Reverse Cuthill-McKee')
pause     % Press any key to continue.

j = colperm(A);
spy(A(j,j))
title('Column count reordering')
pause     % Press any key to continue.

m = symmmd(A);
spy(A(m,m))
title('Minimum degree')
pause     % Press any key to continue.

% Done.
echo off
