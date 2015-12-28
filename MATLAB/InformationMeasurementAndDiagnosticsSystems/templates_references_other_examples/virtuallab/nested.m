function G = nested(n);
%NESTED Nested dissection ordering.
%   G = nested(n) generates a nested dissection numbering of an n-by-n grid.
%
%   See also DELSQ, NUMGRID.

%   C. Moler, 1990.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:39 $

% The actual numbering is done recursively by nestdiss.
G = zeros(n,n);
G(2:n-1,2:n-1) = nestdiss(zeros(n-2,n-2),0);
