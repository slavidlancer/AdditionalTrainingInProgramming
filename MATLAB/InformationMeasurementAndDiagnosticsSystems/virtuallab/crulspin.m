%CRULSPIN Spinning cruller movie.

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.6 $  $Date: 1997/11/21 23:25:29 $

% Demo initialization
if ~exist('MovieGUIFlag'), figNumber=0; end;

infoStr= ...
        ['                                                  '  
         ' This movie animates the motion of a spinning     '  
         ' toroid, also known as a "cruller". It is based on'  
         ' a shape developed by C. Henry Edwards,           '  
         ' Dept. of Mathematics, University of Georgia.     '  
         '                                                  '  
         ' File name: crulspin.m                            '];
mvinit(figNumber,infoStr);

 ab = [0 2*pi];
rtr = [8 1.5 1];
 pq = [40 40];
box = [-10 10 -10 10 -3 3];
vue = [90 50];
 
tube('xycrull',ab,rtr,pq,box,vue)

h=findobj(gca,'Type','surface');
x=get(h,'xdata');
y=get(h,'ydata');
z=get(h,'zdata');

h=surfl(x,y,z);
colormap(fliplr(pink));
ax=[-10 10 -15 15 -8 8];
axis(ax);
axis off;
view(130,-50);
shading flat;
drawnow;

nframes=10;
m=moviein(nframes);

for n=1:nframes,
  rotate(h,[0 90],12,[0 0 0]);
  h=surfl(get(h(1),'XData'),get(h(1),'YData'),get(h(1),'ZData'));
  axis(ax);
  axis off;
  view(130,-50);
  shading flat;
  m(:,n)=mvframe(figNumber,nframes);
end;

mvstore(figNumber,m);
