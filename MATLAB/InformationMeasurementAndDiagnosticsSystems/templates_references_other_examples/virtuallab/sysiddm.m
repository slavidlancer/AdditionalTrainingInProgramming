function slide=sysiddm
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow sysiddm', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
% $Revision: 5.7 $

if nargout<1,
  playshow sysiddm
else
  %========== Slide 1 ==========

  slide(1).code={
   'load dryer2',
   'u=u2; y=y2;',
   'z=[y u];',
   'T=0.08;',
   'int=1:1000;',
   'plot(T*int,z(int,1))',
   'title(''OUTPUT #1'')' };
  slide(1).text={
   ' Press the "Start" button to see a demonstration of',
   ' the system identification process.',
   ' >> load dryer2',
   ' >> u=u2; y=y2;',
   ' >> z=[y u];',
   ' >> T=0.08;',
   ' >> int=1:1000;',
   ' >> plot(T*int,z(int,1))',
   ' >> title(''OUTPUT #1'')'};

  %========== Slide 2 ==========

  slide(2).code={
   'plot(T*int,z(int,1))',
   'title(''OUTPUT #1'')' };
  slide(2).text={
   ' This case study concerns data collected from a',
   ' laboratory scale "hairdryer".  The process works like',
   ' this:  air is fanned through a tube and heated',
   ' by an electric current (input u) while the air temperature',
   ' (output y) is measured by a thermocouple at the outlet.'};

  %========== Slide 3 ==========

  slide(3).code={
   'z2=dtrend([y(1:300) u(1:300)]);',
   'int=1:300;',
   'plot(T*int,z2(int,1))',
   'title(''OUTPUT #1'')' };
  slide(3).text={
   ' Here is a closer look at the same data, only detrended',
   ' (or given a zero mean) so that the identification process',
   ' can work properly.  This data will now be used to create a',
   ' model using the ARX command.',
   ' >> z2=dtrend([y(1:300) u(1:300)]);',
   ' >> int=1:300;',
   ' >> plot(T*int,z2(int,1))',
   ' >> title(''OUTPUT #1'')'};

  %========== Slide 4 ==========

  slide(4).code={
   'th=sett(arx(z2,[2 2 3]),T);',
   'yh=idsim(dtrend(u(700:900)),th);',
   't=(700:900)*T;',
   'plot(t,[dtrend(y(700:900)) yh]);' };
  slide(4).text={
   ' How good is this model? One way to find out is to',
   ' simulate it and compare the model output with',
   ' measured output. We then select a portion of the',
   ' original data that was not used to build the model.',
   ' Here is the original data (blue) and the model (green)).',
   ' >> th=sett(arx(z2,[2 2 3]),T);',
   ' >> yh=idsim(dtrend(u(700:900)),th);',
   ' >> t=(700:900)*T;',
   ' >> plot(t,[dtrend(y(700:900)) yh]);'};

  %========== Slide 5 ==========

  slide(5).code={
   'gth=th2ff(th);',
   'gs=sett(spa(z2),T);',
   'G=[gs gth];',
   'G=G(2:size(G,1),:);',
   'loglog(G(:,[1 6]),G(:,[2 7]));',
   'xlabel(''frequency (rad/sec)'')',
   'title(''AMPLITUDE PLOT, input #1 output #1'')' };
  slide(5).text={
   ' Another measure of the quality of the model is a frequency',
   ' response comparison of the original system (blue) with',
   ' the modeled system (green).',
   ' >> gth=th2ff(th);',
   ' >> gs=sett(spa(z2),T);',
   ' >> G=[gs gth];',
   ' >> G=G(2:size(G,1),:);',
   ' >> loglog(G(:,[1 6]),G(:,[2 7]));',
   ' >> xlabel(''frequency (rad/sec)'')'};

  %========== Slide 6 ==========

  slide(6).code={
   'step=ones(30,1);',
   'idsimsd(step,th);',
   'set(gcf,''NextPlot'',''add'');' };
  slide(6).text={
   ' Finally we can plot the uncertainty of the step response',
   ' of the model.  The model comes with an estimate of its',
   ' own uncertainty.  In this case 10 different step',
   ' responses are plotted, corresponding to models',
   ' drawn from the distribution of the true system.',
   ' >> step=ones(30,1);',
   ' >> idsimsd(step,th);',
   ' >> set(gcf,''NextPlot'',''add'');'};
end
