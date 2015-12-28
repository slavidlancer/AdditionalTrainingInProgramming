function slide=sparsity
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow sparsity', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.12 $

if nargout<1,
  playshow sparsity
else
  %========== Slide 1 ==========

  slide(1).code={
   'load(''west0479.mat'')',
   'if isstudent, n = 409; else, n = 479; end',
   'A = west0479(1:n,1:n);',
   'S = A * A'' + speye(n,n);',
   'pct = 100 / prod(size(A));',
   'spy(S), title(''A Sparse Symmetric Matrix'')',
   '  n = nnz(S);',
   '  lblstr = sprintf(''nonzeros=%d   (%.3f %%)'',n,n*pct);',
   '  set(get(gca,''XLabel''),''String'',lblstr);',
   '  set(gca,''layer'',''top'');'};
  slide(1).text={
   ' Press the "Start" button to see a demonstration which',
   ' shows that reordering the rows and columns of a',
   ' sparse matrix S can affect the time and storage required',
   ' for a matrix operation such as factoring S into its',
   ' Cholesky decomposition, S=L*L''.',
   ' >> spy(S), title(''A Sparse Symmetric Matrix'')',
   ' >> n = nnz(S);',
   ' >> lblstr = sprintf(''nonzeros=%d   (%.3f %%)'',n,n*pct);',
   ' >> set(get(gca,''XLabel''),''String'',lblstr);'};

  %========== Slide 2 ==========

  slide(2).code={
   'spy(S),',
   'set(gca,''layer'',''top'');',
   'title(''spy(S)'')' };
  slide(2).text={
   ' A SPY plot shows the nonzero elements in a matrix.',
   '',
   ' This spy plot shows a SPARSE symmetric positive definite',
   ' matrix derived from a portion of the Harwell-Boeing test matrix',
   ' "west0479", a matrix describing connections in a model',
   ' of a diffraction column in a chemical plant.',
   '',
   '',
   ' >> title(''spy(S)'')'};

  %========== Slide 3 ==========

  slide(3).code={
   'tic, L = chol(S)''; t(1) = toc;',
   'spy(L), title(''Cholesky decomposition of S'')',
   'nc(1) = nnz(L);',
   'lblstr = sprintf(''nonzeros=%d   (%.2f %%)   time=%.2f sec'', nc(1),nc(1)*pct,t(1));',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(3).text={
   ' Now we compute the Cholesky factor L, where S=L*L''.',
   ' Notice that L contains MANY more nonzero elements than',
   ' the unfactored S, because the computation of the Cholesky',
   ' factorization creates "fill-in" nonzeros.  This slows down the',
   ' algorithm and increases storage cost.',
   '',
   ' >> tic, L = chol(S)''; t(1) = toc;',
   ' >> spy(L), title(''Cholesky decomposition of S'')'};

  %========== Slide 4 ==========

  slide(4).code={
   'spy(L)',
   'set(gca,''layer'',''top'');' };
  slide(4).text={
   ' By reordering the rows and columns of a matrix, it may be',
   ' possible to reduce the amount of fill-in created by',
   ' factorization, thereby reducing time and storage cost.',
   '',
   ' We will now try three different orderings supported by',
   ' MATLAB.'};

  %========== Slide 5 ==========

  slide(5).code={
   'p = symrcm(S);',
   'spy(S(p,p)), title(''S(p,p) after Cuthill-McKee ordering'')',
   'n = nnz(S);',
   'lblstr = sprintf(''nonzeros=%d   (%.3f %%)'',n,n*pct);',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(5).text={
   ' The SYMRCM command uses the reverse Cuthill-McKee',
   ' reordering algorithm to move all nonzero elements closer to',
   ' the diagonal, reducing the "bandwidth" of the original matrix.',
   '',
   ' >> p = symrcm(S);',
   ' >> spy(S(p,p)), title(''S(p,p) after Cuthill-McKee ordering'')'};

  %========== Slide 6 ==========

  slide(6).code={
   'tic, L = chol(S(p,p))''; t(2) = toc;',
   'spy(L), title(''chol(S(p,p)) after Cuthill-McKee ordering'')',
   'nc(2) = nnz(L);',
   'lblstr = sprintf(''nonzeros=%d   (%.2f %%)   time=%.2f sec'', nc(2),nc(2)*pct,t(2));',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(6).text={
   ' The fill-in produced by Cholesky factorization is confined to',
   ' the band, so that factorization of the reordered matrix takes',
   ' less time and less storage.',
   '',
   ' >> tic, L = chol(S(p,p))''; t(2) = toc;',
   ' >> spy(L), title(''chol(S(p,p)) after Cuthill-McKee ordering'')'};

  %========== Slide 7 ==========

  slide(7).code={
   'q = colperm(S);',
   'spy(S(q,q)), title(''S(q,q) after column count ordering'')',
   'n = nnz(S);',
   'lblstr = sprintf(''nonzeros=%d   (%.3f %%)'',n,n*pct);',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(7).text={
   ' The COLPERM command uses the column count reordering',
   ' algorithm to move rows and columns with higher nonzero',
   ' count towards the end of the matrix.',
   '',
   ' >> q = colperm(S);',
   ' >> spy(S(q,q)), title(''S(q,q) after column count ordering'')'};

  %========== Slide 8 ==========

  slide(8).code={
   'tic, L = chol(S(q,q))''; t(3) = toc;',
   'spy(L), title(''chol(S(q,q)) after column count ordering'')',
   'nc(3) = nnz(L);',
   'lblstr = sprintf(''nonzeros=%d   (%.2f %%)   time=%.2f sec'',nc(3),nc(3)*pct,t(3));',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(8).text={
   ' For this example, the column count ordering happens to',
   ' reduce the time and storage for Cholesky factorization, but',
   ' this behavior cannot be expected in general.',
   '',
   ' >> tic, L = chol(S(q,q))''; t(3) = toc;',
   ' >> spy(L), title(''chol(S(q,q)) after column count ordering'')'};

  %========== Slide 9 ==========

  slide(9).code={
   'r = symmmd(S);',
   'spy(S(r,r)), title(''S(r,r) after minimum degree ordering'')',
   'n = nnz(S);',
   'lblstr = sprintf(''nonzeros=%d   (%.3f %%)'',n,n*pct);',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(9).text={
   ' The SYMMMD command uses the minimimum degree',
   ' algorithm (a powerful graph-theoretic technique) to produce',
   ' large blocks of zeros in the matrix.',
   '',
   ' >> r = symmmd(S);',
   ' >> spy(S(r,r)), title(''S(r,r) after minimum degree ordering'')'};

  %========== Slide 10 ==========

  slide(10).code={
   'tic, L = chol(S(r,r))''; t(4) = toc;',
   'spy(L), title(''chol(S(r,r)) after minimum degree ordering'')',
   'nc(4) = nnz(L);',
   'lblstr = sprintf(''nonzeros=%d   (%.2f %%)   time=%.2f sec'', nc(4),nc(4)*pct,t(4));',
   'set(get(gca,''XLabel''),''String'',lblstr);',
   'set(gca,''layer'',''top'');' };
  slide(10).text={
   ' The blocks of zeros produced by the minimum degree',
   ' algorithm are preserved during the Cholesky factorization.',
   ' This can significantly reduce time and storage costs.',
   '',
   ' >> tic, L = chol(S(r,r))''; t(4) = toc;',
   ' >> spy(L), title(''chol(S(r,r)) after minimum degree ordering'')'};

  %========== Slide 11 ==========

  slide(11).code={
   'bar(nc*pct), title(''Nonzeros after Cholesky factorization'')',
   'ylabel(''Percent'');',
   'text(1,nc(1)*pct,''original'', ''HorizontalAlignment'',''center'',''VerticalAlignment'',''bottom'');',
   'text(2,nc(2)*pct,''Cuthill-McKee'', ''HorizontalAlignment'',''center'',''VerticalAlignment'',''bottom'');',
   'text(3,nc(3)*pct,''column count'', ''HorizontalAlignment'',''center'',''VerticalAlignment'',''bottom'');',
   'text(4,nc(4)*pct,''min degree'', ''HorizontalAlignment'',''center'',''VerticalAlignment'',''bottom'');' };
  slide(11).text={
   '  RESULTS SUMMARY',
   ' original:      nonzero=13.23%  time=0.44 sec',
   ' Cuthill-McKee: nonzero=10.56%  time=0.33 sec',
   ' column count:  nonzero=6.48%   time=0.22 sec',
   ' min degree:    nonzero=4.01%   time=0.11 sec',
   '',
   ' >> bar(nc*pct), title(''Nonzeros after Cholesky factorization'')',
   ' >> ylabel(''Percent'');'};
end
