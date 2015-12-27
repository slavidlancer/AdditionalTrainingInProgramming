function slide=nddemo
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow nddemo', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
% $Revision: 1.10 $  $Date: 1998/10/20 20:18:19 $
if nargout<1,
  playshow nddemo
else
  %========== Slide 1 ==========

  slide(1).code={
   'cla',
   'axis on',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'set(gca,''Units'', ''normal'')',
   'grid off',
   'box off',
   'axis([0 1 0 1])',
   'text(0.32,0.2, ''Multidimensional'', ''FontSize'',20,''color'',''b'', ''Horizon'', ''center'');',
   'text(0.5,0.5, ''Arrays in'', ''FontSize'',20,''color'',''b'', ''Horizon'', ''center'');',
   'text(0.68,0.78,''MATLAB'', ''FontSize'',20,''color'',''b'', ''Horizon'', ''center'');',
   'hold on',
   'plot([0.02 0.02 0.62 0.62 0.02],[0.42 0.02 0.02 0.42 0.42],''k-'');',
   'plot([0.2 0.2 0.8 0.8 0.62],[0.42 0.7 0.7 0.3 0.3],''k-'')',
   'plot([0.38 0.38 0.98 0.98 0.8],[0.7 0.98 0.98 0.58 0.58],''k'')',
   'plot([0.02 0.38],[0.42 0.98],''k--'');',
   'plot([0.62 0.98],[0.42 0.98],''k--'');',
   'plot([0.62 0.98],[0.02 0.58],''k--'');',
   'plot([0.2 0.2 0.62],[0.42 0.3 0.3],''k-.'')',
   'plot([0.38 0.38 0.8],[0.7 0.58 0.58],''k-.'')',
   'hold off' };
  slide(1).text={
   'MATLAB V5 now supports arrays with more than two dimensions. Multidimensional arrays can be numeric, character, cell, or structure arrays.',
   '',
   'Multidimensional arrays are broadly useful --- for example, in the representation of multivariate data or multiple pages of two dimensional data. MATLAB provides a number of functions that directly support multidimensional arrays. You can extend this support by creating M-files that work with your data architecture.'};

  %========== Slide 2 ==========

  slide(2).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 1 0 1])',
   '',
   '',
   'text(0.1,0.9,''A = '')',
   'text(0.1,0.78,''A(:,:,1) = '')',
   'text(0.15,0.67,''5    7    8'')',
   'text(0.15,0.59,''0    1    9'')',
   'text(0.15,0.51,''4    3    6'')',
   'text(0.1,0.38,''A(:,:,2) = '')',
   'text(0.15,0.27,''1    0    4'')',
   'text(0.15,0.19,''3    5    6'')',
   'text(0.15,0.11,''9    8    7'')' };
  slide(2).text={
   'You can use the same techniques to create multidimensional arrays that you use for two-dimensional arrays.  For example, first define the 3 by 3 matrix:',
   '>>   A = [5 7 8; 0 1 9; 4 3 6];',
   '',
   'To add a third dimension to A:',
   '>>   A(:,:,2) = [1 0 4; 3 5 6; 9 8 7]',
   'Now, entering ''A'' at the command line, MATLAB displays the results above.'};

  %========== Slide 3 ==========

  slide(3).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 1 0 1])',
   '',
   'text(0.15, 0.3,''2       8'')',
   'text(0.15, 0.15, ''0       5'')',
   'text(0.45, 0.58,''1       3'')',
   'text(0.45, 0.43, ''7       9'')',
   ' text(0.75, 0.86,''2       3'')',
   'text(0.75, 0.71, ''4       6'')',
   'hold on',
   'plot([0.1 0.1 0.3 0.3 0.1],[0.42 0.02 0.02 0.42 0.42],''k-'');',
   'plot([0.4 0.4 0.6 0.6 0.4],[0.7  0.3 0.3 0.7 0.7],''k-'')',
   'plot([0.7 0.7 0.9 0.9 0.7],[0.98 0.58 0.58 0.98 0.98],''k'')',
   'plot([0.1 0.7],[0.42 0.98],''k-.'');',
   'plot([0.3 0.9],[0.42 0.98],''k-.'');',
   'plot([0.3 0.9],[0.02 0.58],''k-.'');',
   'plot([0.1 0.7],[0.02 0.58],''k-.'');',
   'hold off' };
  slide(3).text={
   'You can also use the CAT function to build multidimensional arrays. The syntax is  B = cat(dim, A1,A2,...), where dim is the dimension along which to concatenate the array. For example:',
   '',
   '>> B = cat( 3, [2 8; 0 5], [1 3; 7 9], [2 3; 4 6])',
   'will create the 2 by 2 by 3 array shown above.'};

  %========== Slide 4 ==========

  slide(4).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 1 0 1])',
   'A = cat(3,[9 2; 6 5], [7 1; 8 4]) ;',
   'B = cat(3,[3 5; 0 1], [5 6; 2 1]);',
   'D = cat(4,cat(4,A,B,cat(3,[1 2; 3 4], [4 3; 2 1])));',
   'C = cat(4,[1 2; 4 5], [7 8; 3 2]) ;',
   '',
   'text(0.1,0.95,''size(C)'');',
   'text(0.1,0.85,''ans = '');',
   'text(0.21, 0.75, ''2'', ''Horiz'', ''center'')',
   'text(0.38, 0.75, ''2'', ''Horiz'', ''center'')',
   'text(0.55, 0.75, ''1'', ''Horiz'', ''center'')',
   'text(0.72, 0.75, ''2'', ''Horiz'', ''center'')',
   'text(0.21, 0.48, ''rows'', ''Horiz'', ''center'')',
   'text(0.38, 0.48, ''columns'', ''Horiz'', ''center'')',
   'text(0.55, 0.48, ''third dim'', ''Horiz'', ''center'')',
   'text(0.72, 0.48, ''fourth dim'', ''Horiz'', ''center'')',
   'text(0.1,0.35,''ndims(D)'')',
   'text(0.1,0.25, ''ans = '')',
   'text(0.2, 0.13, ''4'');',
   'hold on',
   'plot([0.21,0.21],[0.71,0.53],''k-'')',
   'plot([0.38 0.38],[0.71 0.53],''k-'')',
   'plot([0.55 0.55],[0.71 0.53], ''k-'')',
   'plot([0.72 0.72],[0.71 0.53],''k-'')',
   'hold off' };
  slide(4).text={
   'You can nest calls to CAT as in the following example:',
   '>> A = cat(3,[9 2; 6 5], [7 1; 8 4])',
   '>> B = cat(3,[3 5; 0 1], [5 6; 2 1])',
   '>> C = cat(4,[1 2; 4 5], [7 8; 3 2])',
   '>> D = cat(4,A,B,cat(3,[1 2; 3 4], [4 3; 2 1]))',
   '',
   'Then, you can call SIZE and NDIMS to find the size and number of dimensions of your arrays.'};

  %========== Slide 5 ==========

  slide(5).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 1 0 1])',
   '',
   'K=D(:,:,1,[1 3]);',
   '',
   'text(0.1,0.9,''K = D(:, :, 1, [1 3])'');',
   ' text(0.1,0.7,''K(:, :, 1, 1) = '')',
   'text(0.2,0.6,''9    2'');',
   'text(0.2,0.5,''6    5'');',
   'text(0.1,0.3,''K(:, :, 1, 2) = '');',
   'text(0.2,0.2,''1    2'');',
   'text(0.2,0.1,''3    4'');',
   '' };
  slide(5).text={
   'To access a single element of a multidimensional array, use integer subscripts.  For example D(1,2,2,2) using D defined in the previous slide returns 6.',
   '',
   'Array subscripts can also be vectors. For example:',
   '>>   K = D(:,:,1,[1 3])',
   'returns the 2 by 2 submatrix shown above.'};

  %========== Slide 6 ==========

  slide(6).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 3 0 1])',
   'text(0.1,0.95,''A'',''color'',''r'')',
   'text(0.1,0.8,''A(:, :, 1) = '')',
   'text(0.2,0.7,''1    2    3'')',
   'text(0.2,0.6,''4    5    6'')',
   'text(0.2,0.5,''7    8    9'')',
   'text(0.1,0.35,''A(:, :, 2) = '')',
   'text(0.2,0.25,''0    5    4'')',
   'text(0.2,0.15,''2    7    6'')',
   'text(0.2,0.05,''9    3    1'')',
   'text(0.7,0.95,''B = permute(A, [2 1 3])'',''color'',''r'')',
   'text(0.9,0.8,''B(:, :, 1) = '')',
   'text(1,0.7,''1    4    7'')',
   'text(1,0.6,''2    5    8'')',
   'text(1,0.5,''3    6    9'')',
   'text(0.9,0.35,''B(:, :, 2) = '')',
   'text(1,0.25,''0    2    9'')',
   'text(1,0.15,''5    7    3'')',
   'text(1,0.05,''4    6    1'')',
   'text(1.9,0.95,''C = permute(A, [3 2 1]) '', ''color'', ''r'')',
   'text(2.1,0.8,''C(:, :, 1) = '')',
   'text(2.3,0.7,''1    2    3'')',
   'text(2.3,0.62,''0    5    4'')',
   'text(2.1,0.52,''C(:, :, 2) = '')',
   'text(2.3, 0.42, ''4    5    6'')',
   'text(2.3,0.34,''2    7    6'')',
   'text(2.1,0.24,''C(:, :, 3) = '')',
   'text(2.3,0.14,''7    8    9'')',
   'text(2.3,0.06,''9    3    1'')',
   'hold on',
   'plot([0.05 2.95],[0.88 0.88],''k-'')',
   'plot([0.65 0.65],[0.88 0.02],''k-'')',
   'plot([1.85 1.85],[0.88 0.02],''k-'')',
   'hold off' };
  slide(6).text={
   'RESHAPE, PERMUTE, and SQUEEZE can be used to manipulate n-dimensional arrays.  RESHAPE behaves as it does for 2D arrays. The operation of PERMUTE is illustrated above',
   '',
   'First, let A be a 3 by 3 by 2 array.  Then permute(A,[2 1 3]) returns an array with the row and column subscripts reversed.  Similarly, permute(A,(3,2,1]) returns an array with the first and third subscripts interchanged.'};

  %========== Slide 7 ==========

  slide(7).code={
   'cla',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off',
   'axis([0 1 0 1]);',
   'text(0.05,0.46,''1   2   3'')',
   'text(0.05,0.38,''9   8   7'',''color'',''b'');',
   'text(0.05,0.3,''4   6   5'',''color'',''r'');',
   'text(0.16,0.66,''0   3   2'');',
   'text(0.16,0.58,''8   8   4'',''color'',''b'')',
   'text(0.16,0.5,''5   3   5'',''color'',''r'');',
   'text(0.27,0.86,''6   4   7'')',
   'text(0.27,0.78,''6   8   5'',''color'',''b'')',
   'text(0.27,0.7,''5   4   3'',''color'',''r'')',
   'text(0.45,0.9,''>> for  i = 1:3,...'')'
   'text(0.55,0.8,'' eig(squeeze(A(i,:,:))),  end '')',
   'text(0.45,0.68, ''ans = '', ''color'', ''k'')',
   'text(0.45,0.58,''-1.00     10.35     1.64'', ''color'', ''k'')',
   'text(0.45,0.43, ''ans = '', ''color'', ''b'')',
   ' text(0.45,0.34,''21.22      0.38+1.57i    0.38-1.57i'', ''color'', ''b'')',
   'text(0.45,0.2, ''ans = '', ''color'', ''r'')',
   'text(0.45,0.1,''13.37     -1.68+0.47i   -1.68-0.47i'', ''color'', ''r'')',
   'hold on',
   'plot([0.03 0.03 0.18 0.18 0.03],[0.25 0.51 0.51 0.25 0.25] ,''k-'')',
   'plot([0.14 0.14 0.29 0.29 0.18],[0.51 0.71 0.71 0.45 0.45],''k-'')',
   'plot([0.25 0.25 0.4 0.4 0.29],[0.71 0.91 0.91 0.65 0.65],''k-'')',
   'plot([0.03 0.25],[0.51 0.91],''k--'')',
   'plot([0.18 0.4],[0.51 0.91],''k--'')',
   'plot([0.18 0.4],[0.25 0.65],''k--'')',
   'hold off' };
  slide(7).text={
   'Functions that operate on planes or 2D matrices do not accept multidimensional arrays as arguments. To apply such functions to different planes of the multidimensional arrays, use indexing or FOR loops.  For example:',
   '>>  A = cat( 3, [1 2 3; 9 8 7; 4 6 5], [0 3 2; 8 8 4; 5 3 5], ...',
   '                      [6 4 7; 6 8 5; 5 4 3])',
   '>>  for i = 1:3, eig(squeeze(A(i,:,:))), end',
   'The EIG function is applied to each of the horizontal ''slices'' of A which colored above.'};

  %========== Slide 8 ==========

  slide(8).code={
   'x1 = -2*pi:pi/10:0;        x2 = 2*pi:pi/10:4*pi;      x3 = 0:pi/10:2*pi;',
   '[x1,x2,x3] = ndgrid(x1,x2,x3);',
   'z = x1 + exp(cos(2*x2.^2)) + sin(x3.^3);',
   'slice(z,[5 10 15], 10, [5 12])' };
  slide(8).text={
   'There are interpolation and data gridding functions that operate specifically on multidimensional data, such as: INTERP3, INTERPN, and NDGRID. Pictured above is an example of NDGRID.',
   '',
   '>> x1 = -2*pi:pi/10:0;   x2 = 2*pi:pi/10:4*pi;   x3 = 0:pi/10:2*pi;',
   '>> [x1,x2,x3] = ndgrid(x1,x2,x3);',
   '>> z = x1 + exp(cos(2*x2.^2)) + sin(x3.^3);',
   '>> slice(z,[5 10 15], 10, [5 12])',
   ''};

  %========== Slide 9 ==========

  slide(9).code={
   'cla',
   'axis off' };
  slide(9).text={
   'You can build multidimensional cell arrays and mutidimensional structure arrays, and can also convert between multidimensional numeric and cell arrays.',
   '',
   'To find out more, consult the MATLAB manual or HELPDESK on mutidimensional arrays.'};
end
