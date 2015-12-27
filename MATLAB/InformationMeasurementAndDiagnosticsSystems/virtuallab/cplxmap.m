function cplxmap(z,w,B)
%CPLXMAP Plot a function of a complex variable.
%   CPLXMAP(z,f(z),(optional bound))
%   Used by CPLXSHOW.
%
%   See also CPLXGRID.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:25:26 $

blue = 0.2;
x = real(z);
y = imag(z);
u = real(w);
v = imag(w);

if nargin > 2
   k = find((abs(w) > B) | isnan(abs(w)));
   if length(k) > 0
      u(k) = B*sign(u(k));
      v(k) = zeros(size(k));
      v = v/max(max(abs(v)));
      v(k) = NaN*ones(size(k));
   end
end
      
M = max(max(u));
m = min(min(u));
axis([-1 1 -1 1 m M]);
caxis([-1 1]);
s = ones(size(z));
mesh(x,y,m*s,blue*s);
hold on
surf(x,y,u,v);
hold off
colormap(hsv(64))
