%MODES  Plot 12 modes of the L-shaped membrane.

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:33 $

% Gallery initialization =================
if ~exist('GalleryGUIFlag'), figNumber=0; end;

infoStr= ...                                          
        ['                                            '  
         ' This is an example of the SURFL function   '  
         ' being superimposed on top of a PCOLOR      '  
         ' plot with interpolated shading. This image '  
         ' looks best if you make your figure window  '  
         ' as large as possible.                      '  
         '                                            '  
         ' These are 12 eigenfunctions that arise when'  
         ' solving the wave equation for an L-shaped  '  
         ' membrane. The first mode, in the upper left'  
         ' corner, shows up quite a lot in MATLAB     '  
         ' demos: it is the company logo for The      '  
         ' MathWorks, Inc.                            '  
         '                                            '  
         ' File name: modes.m                         '];

gallinit(figNumber,infoStr);

% Beginning of the demo ==================

load vibesdat
pcolor(L1)
axis off;
shading interp
colormap(fliplr(pink));
ax=get(gca,'Position');
for n=1:12 
    xPos=(rem(n-1,4)/4)*ax(3)+ax(1);
    yPos=((2-floor((n-1)/4))/3)*ax(4)+ax(2);
    xLen=(1/4)*ax(3);
    yLen=(1/3)*ax(4);
    axes( ...
        'Units','normalized', ...
        'Position',[xPos yPos xLen yLen]);
    estr=['h=surfl(L' num2str(n) ');'];
    eval(estr);
    set(h,'EdgeColor',[0.3 0.3 0.6]);
    axis off;
    % shading flat;
end;

% End of the demo ========================
