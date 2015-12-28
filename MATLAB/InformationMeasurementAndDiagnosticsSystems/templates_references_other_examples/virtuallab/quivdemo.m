%QUIVDEMO For demonstrating the quiver function

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:58 $

% Gallery initialization =================
if ~exist('GalleryGUIFlag'), figNumber=0; end;

infoStr= ...                                                          
    ['                                                '  
     ' This is an example of the QUIVER function      '  
     ' being superimposed on top of a PCOLOR          '  
     ' plot with interpolated shading. The function   '  
     ' being shown is the PEAKS function.             '  
     '                                                '  
     ' File name: quivdemo.m                          '];

gallinit(figNumber,infoStr);

% Beginning of the demo ==================

x=-3:.2:3;
y=-3:.2:3;
[xx,yy]=meshgrid(x,y);
zz=peaks(xx,yy);
hold on;
pcolor(x,y,zz);
axis([-3 3 -3 3]);
colormap((jet+white)/2);
shading interp;
[px,py]=gradient(zz,.2,.2);
quiver(x,y,px,py,2,'k');
axis off;
hold off;

% End of the demo ========================
