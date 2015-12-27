function yp = lotka(t,y)
%LOTKA  Lotka-Volterra predator-prey model.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:26 $

yp = diag([1 - .01*y(2), -1 + .02*y(1)])*y;
