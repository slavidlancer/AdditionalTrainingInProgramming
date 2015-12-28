function slide=matmanip
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow matmanip', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.11 $

if nargout<1,
  playshow matmanip
else
  %========== Slide 1 ==========

  slide(1).code={
     'set(gcf,''defaultaxescolor'',[0 0 0])  % refresh the screen',
     'axes=findobj(allchild(gcf),''Type'',''axes'');',
     'delete(axes)',
     'xpsubplt(2,2,1);',
     'pltmat(magic(3),''A'',''m'',18);',
     'set(gcf,''defaultaxescolor'',[0 0 0])  % refresh the screen'};
  slide(1).text={
   'Press the "Start" button to see some basic matrix manipulations',
   'in MATLAB.',
   '',
   'We start by creating a magic square and assigning it to the variable A.',
   '',
   '>> A = magic(3);'};

  %========== Slide 2 ==========

  slide(2).code={
   'A = magic(3);',
   'xpsubplt(2,3,1);',
   'pltmat(A,''A'',''m'',18);',
   'xpsubplt(2,3,2);',
   'pltmat(A+2,''A+2'',''r'',18);',
   'set(gcf,''color'',get(gcf,''color''));  % refresh the screen',
   'watchoff;' };
  slide(2).text={
   'Here''s how to add 2 to each element of A.',
   '',
   ' >> A+2;',
   '',
   ' Note that MATLAB requires no special handling of  matrix math.'};

  %========== Slide 3 ==========

  slide(3).code={
   'xpsubplt(2,3,1);',
   'pltmat(A,''A'',''m'',18);',
   'xpsubplt(2,3,2);',
   'pltmat(A'',''transpose of A'',''r'',18);' };
  slide(3).text={
   ' The apostrophe symbol denotes the complex conjugate',
   ' transpose of a matrix.',
   '',
   ' Here''s how to take the transpose of A.',
   '',
   ' >> A'' ;'};

  %========== Slide 4 ==========

  slide(4).code={
   'B = 2*ones(3);',
   'xpsubplt(2,4,1);',
   'pltmat(A,''A'',''m'',10);',
   'xpsubplt(2,4,2);',
   'pltmat(B,''B'',[0.4 0.6 0.8],10);',
   'xpsubplt(2,4,3);',
   'pltmat(A*B,''A*B'',''r'',10);',
   'set(gcf,''color'',get(gcf,''color''));  % refresh the screen' };
  slide(4).text={
   ' The symbol * denotes multiplication of matrices.',
   '',
   ' Let''s create a new matrix B and multiply A by B.',
   '',
   ' >> B = 2*ones(3);',
   ' >> A*B;'};

  %========== Slide 5 ==========

  slide(5).code={
   'pltmat(A.*B,''A.*B'',''r'',10);' };
  slide(5).text={
   ' We can also multiply each element of A with its ',
   ' corresponding element of B by using the  .* operator. ',
   '',
   ' >> A.*B;'};

  %========== Slide 6 ==========

  slide(6).code={
   'xpsubplt(2,3,1);',
   'pltmat(A,''A'',''m'',18);',
   'xpsubplt(2,3,2);',
   'pltmat(eig(A),''eigenvalues of A'',''r'',12);',
   'set(gcf,''color'',get(gcf,''color''));  % refresh the screen' };
  slide(6).text={
   ' MATLAB has functions for nearly every type of common',
   ' matrix calculation.  For example, we can find the eigenvalues',
   ' of A using the "eig" command.',
   '',
   ' >> eig(A);'};

  %========== Slide 7 ==========

  slide(7).code={
   'xpsubplt(2,2,1);',
   'pltmat(magic(3),'' '',''m'',18);',
   'set(gcf,''color'',get(gcf,''color''));  % refresh the screen' };
  slide(7).text={
   ' This concludes our brief tour of some MATLAB matrix',
   ' handling capabilities.',
   ''};
end
