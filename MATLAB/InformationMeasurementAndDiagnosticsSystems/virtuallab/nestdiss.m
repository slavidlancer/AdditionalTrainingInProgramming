function [G,p] = nestdiss(G,p)
%NESTDISS Resursive function used by NESTED.
%   Generates a nested dissection numbering of a rectangular grid.
%   Do not use directly; see NESTED instead.

%   C. Moler, 1990.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:38 $

[m,n] = size(G);
if (m < 1) | (n < 1)
   return
% Number a single row or column.
elseif (m == 1)
   G = [p+1:p+n];
   p = p+n;
   return
elseif (n == 1)
   G = [p+1:p+m]';
   p = p+m;
   return
% Otherwise, split in half,
% number the two halves,
% then number the seperator.
elseif (m > n)
   m2 = fix((m+1)/2);
   [G1,p] = nestdiss(G(1:m2-1,:),p);
   [G2,p] = nestdiss(G(m2+1:m,:),p);
   [GS,p] = nestdiss(G(m2,:),p);
   G = [G1; GS; G2];
   return
else % if (n >= m)
   n2 = fix((n+1)/2);
   [G1,p] = nestdiss(G(:,1:n2-1),p);
   [G2,p] = nestdiss(G(:,n2+1:n),p);
   [GS,p] = nestdiss(G(:,n2),p);
   G = [G1 GS G2];
   return
end
