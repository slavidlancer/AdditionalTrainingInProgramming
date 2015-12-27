function slide=e2pi
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow e2pi', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.10 $

if nargout<1,
  playshow e2pi
else
  %========== Slide 1 ==========

  slide(1).code={
   'x=0:0.16:5;',
   'y=0:0.16:5;',
   '[xx,yy]=meshgrid(x,y);',
   'zz=xx.^yy-yy.^xx;',
   'h=surf(x,y,zz);',
   '    set(h,''EdgeColor'',[0.7 0.7 0.7]);',
   '    view(20,50);',
   '    colormap(hsv);' };
  slide(1).text={
   ' Press the "Start" button to see an example of visualization',
   ' in MATLAB applied to the question:',
   '',
   ' "Which is greater, e^pi or pi^e?"'};

  %========== Slide 2 ==========

  slide(2).code={
   'h=surf(x,y,zz);',
   'title(''z=x^y-y^x'');',
   '    set(h,''EdgeColor'',[0.7 0.7 0.7]);',
   '    view(20,50);',
   '    colormap(hsv);',
   'xlabel(''x'');',
   'ylabel(''y'');' };
  slide(2).text={
   ' The question is: which is greater, e^pi or pi^e? The easy way',
   ' to find out is to type it directly at the MATLAB command',
   ' prompt. But it motivates a more interesting question. What',
   ' is the shape of the function z=x^y-y^x? Here is a plot of z.',
   ' >> x=0:0.16:5; y=0:0.16:5;',
   ' >> [xx,yy]=meshgrid(x,y); zz=xx.^yy-yy.^xx;',
   ' >> h=surf(x,y,zz);',
   ' >> set(h,''EdgeColor'',[0.7 0.7 0.7]);',
   ' >> view(20,50); colormap(hsv);',
   ' >> title(''z=x^y-y^x''); xlabel(''x''); ylabel(''y'');' 
   };

  %========== Slide 3 ==========

  slide(3).code={
   'h=surf(x,y,zz);',
   'title(''z=x^y-y^x'');',
   'xlabel(''x'');',
   'ylabel(''y'');',
   '  set(h,''EdgeColor'',[0.7 0.7 0.7]);',
   '    view(20,50);',
   '    colormap(hsv);',
   'c=contourc(x,y,zz,[0 0]);',
   'list1Len=c(2,1);',
   'xContour=[c(1,2:1+list1Len) NaN c(1,3+list1Len:size(c,2))];',
   'yContour=[c(2,2:1+list1Len) NaN c(2,3+list1Len:size(c,2))];',
   'line(xContour,yContour,''Color'',''k'',''EraseMode'',''none'',''LineWidth'',2)' };
  slide(3).text={
   '  Now it turns out that the solution of the equation x^y-y^x=0 has a very',
   '  interesting shape. Because interesting things happen near e and pi,',
   '  our original question is not easily solved by inspection. Here is a',
   '  plot of that equation shown in black.',
   ' >> hold on;',
   ' >> [c,h]=contour(x,y,zz,[0 0],''k'');',
   ' >> set(h,''LineWidth'',2);',
   ' >> hold off;',
   ' >> h=plot([0:5 2 4],[0:5 4 2],''r.'', ''MarkerSize'',25,''EraseMode'',''none'');'};

  %========== Slide 4 ==========

  slide(4).code={
   'hold on;',
   'plot([0:5 2 4],[0:5 4 2],''r.'',''MarkerSize'',25,''EraseMode'',''none'');',
   'hold off;' };
  slide(4).text={
   ' Here is a plot of the integer solutions to the equation',
   ' x^y-y^x=0. Notice 2^4=4^2 is the ONLY integer solution',
   ' where x~=y.  And what is the intersection point of the two',
   ' curves that define where x^y=y^x?',
   '',
   ' >> h=plot([0:5 2 4],[0:5 4 2],''r.'', ...',
   '           ''MarkerSize'',25,''EraseMode'',''none'');'};

  %========== Slide 5 ==========

  slide(5).code={
   'hold on;',
   'e=exp(1);',
   'plot([e pi],[pi e],''r.'',''MarkerSize'',25,''EraseMode'',''none'');',
   'plot([e pi],[pi e],''y.'',''MarkerSize'',10,''EraseMode'',''none'');',
   'text(e,3.5,''(e,pi)'',''Color'',''k'', ''EraseMode'',''none'',  ''HorizontalAlignment'',''left'');',
   'text(3.3,e,''(pi,e)'',''Color'',''k'',  ''EraseMode'',''none'',  ''HorizontalAlignment'',''left'');',
   'hold off;' };
  slide(5).text={
   ' Finally, we can see that e^pi is indeed larger than pi^e',
   ' (though not by much) by plotting these points on our surface.',
   ' >> e=exp(1);',
   ' >> e^pi',
   ' ans =',
   '            23.1407',
   ' >> pi^e',
   ' ans =',
   '            22.4592'};
end
