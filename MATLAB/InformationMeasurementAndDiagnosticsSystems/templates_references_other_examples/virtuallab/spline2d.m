%SPLINE2D Demonstrate GINPUT and SPLINE in two dimensions.

%   CBM, 8-9-91, 8-12-92.
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.5 $  $Date: 1997/11/21 23:27:11 $

clf reset
axis([0 10 0 10])
hold on
view(0,90)
clc
echo on

% This demonstration illustrates the use of the GINPUT function,
% which obtains graphic positional input via a mouse or cursor,
% and the SPLINE function, which interpolates data with a cubic spline.  
% The demonstration does NOT use the Spline Toolbox, which is a
% complete set of functions for B-splines and other piecewise polynomials
% of any degree.
%
% Press any key to continue after pauses.
pause

clc

% Here is code which uses the left mouse button to pick a sequence of
% points and the return key to stop input.
% Initially, the list of points is empty and its length is 0.

% Please use the left mouse button or the cursor to select several points.
% Use the return key (or right mouse button) to stop input.

x = [];
y = [];
n = 0;
% Loop, picking up the points.
but = 1;
echo off;
while but == 1
   [xi,yi,but] = ginput(1);
   if length(but)==0,
    if n<2
     but=1;
     disp('Pick at least two points please.')
    else
     but=2;
    end
   elseif but~=1
    if n<2
     but=1;
     disp('Pick at least two points please.')
    end

  else
   plot(xi,yi,'go') 
                                
   n = n + 1;
   text(xi,yi,[' ' int2str(n)],'Erase','back');
   x = [x; xi];
   y = [y; yi];
  end
end
echo on;

disp('End of data entry')

pause

clc

% Interpolate the points with two splines, evaluated with a finer spacing.

t = 1:n;
ts = 1:1/10:n;
xs = spline(t,x,ts);
ys = spline(t,y,ts);

pause

% Plot the interpolated curve with a cyan colored line.

plot(xs,ys,'c-');

echo off
hold off
disp('End')
