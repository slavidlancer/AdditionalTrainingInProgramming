function H = imtext(x,y,T,justify)
%IMTEXT Place possibly multi-line text as xlabel.
%   IMTEXT(x,y,T) writes T, center justified, with the lower left
%   corner at axis normalized coordinates (x,y).
%   IMTEXT(x,y,T,'center') and IMTEXT(x,y,T,'right) are also possible.
%   H = IMTEXT(...) returns a vector of handles to the lines of text.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:14 $

if nargin < 4, justify = 'center'; end
ax = gca;
dely = .04;
[m,n] = size(T);
for k = 1:m
   h(k) = text(x,y,T(k,:),'units','norm','horiz',justify);
   y = y + dely;
end
if nargout > 0
   H = h';
end
