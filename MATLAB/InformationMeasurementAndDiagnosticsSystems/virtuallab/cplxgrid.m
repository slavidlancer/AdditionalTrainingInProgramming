function z = cplxgrid(m)
%CPLXGRID Polar coordinate complex grid.
%   Z = CPLXGRID(m) is an (m+1)-by-(2*m+1) complex polar grid.
%   See CPLXMAP.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:25:25 $

r = (0:m)'/m;
theta = pi*(-m:m)/m;
z = r * exp(i*theta);
