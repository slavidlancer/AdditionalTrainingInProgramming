function [out1,out2] = humps(x)
%HUMPS  A function used by QUADDEMO, ZERODEMO and FPLOTDEMO.
%   Y = HUMPS(X) is a function with strong maxima near x = .3 
%   and x = .9.  
%
%   [X,Y] = HUMPS(X) also returns X.  With no input arguments,
%   HUMPS uses X = 0:.05:1.
%
%   Example:
%      plot(humps)
%
%   See QUADDEMO, ZERODEMO and FPLOTDEMO.

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.4 $  $Date: 1997/11/21 23:26:10 $

if nargin==0, x = 0:.05:1; end

y = 1 ./ ((x-.3).^2 + .01) + 1 ./ ((x-.9).^2 + .04) - 6;

if nargout==2, 
  out1 = x; out2 = y; 
else 
  out1 = y;
end

