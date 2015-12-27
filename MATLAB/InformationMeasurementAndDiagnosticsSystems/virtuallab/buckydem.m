function slide=buckydem
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow buckydem', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.14 $

if nargout<1,
  playshow buckydem
else
  %========== Slide 1 ==========

  slide(1).code={
   '[B,V] = bucky;',
   'H = sparse(60,60);',
   'k = 31:60;',
   'H(k,k) = B(k,k);',
   'x = V(:,1);',
   'y = V(:,2);',
   'subplot(2,2,1)',
   'pos=get(gca,''position'');',
   'pos2=[pos(1)+(0.75*pos(1)),pos(2:4)];',
   'set(gca, ''Visible'', ''off'',''position'',pos2)',
   'gplot(B-H,V,''b-'');',
   'hold on',
   'gplot(H,V,''r-'');',
   'set(gca,''DataAspectRatio'',[1 1 1],''Visible'',''off'');' };
  slide(1).text={
   'Press the "Start" button for an explanation of the relationship between',
   'graphs and matrices and a good application of SPARSE matrices.',
   ' >> [B,V] = bucky;H = sparse(60,60);',
   ' >> gplot(B-H,V,''b-''); hold on',
   ' >> gplot(H,V,''r-'')',
   ' >> hold off',
   '',
   'A graph is a set of nodes with specified connections between them.',
   'An example is the connectivity graph of the Buckminster Fuller',
   'geodesic dome (also a soccer ball or a carbon-60 molecule).',
   '',
   ' In MATLAB, the graph of the geodesic dome can be generated',
   ' with the BUCKY function.'
   };

  %========== Slide 2 ==========

  slide(2).code={
   'subplot(2,3,1);',
   'p = plot([0 1 1 0 0],[1 1 0 0 1],[0 1 1 0],[1 1 0 0],''.'');',
   'd = 0.25;',
   'text([-0.25, 1.2 -0.25, 1.2],[1.2, 1.2, -.2, -.2],[''1234'']'')',
   'set(gca,''Units'',''pixels'')',
   'set(p,''MarkerSize'',30);',
   'axis([-1 2 -1 2])',
   'axis off',
   'subplot(2,3,2);',
   'A = [0 1 1 0 ; 1 0 0 1 ; 1 0 0 1 ; 0 1 1 0];',
   '%plotmat(A)',
   'xtemp = [1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4];',
   'ytemp = [1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4];',
   't = [''0110100110010110'']'';',
   'text(xtemp-.5,ytemp-.5,t,''HorizontalAlignment'',''center'');',
   'set(gca,''xLim'',[0,4],''YLim'',[0 4],''Visible'',''off'')',
   'line([0 0],[0 4])',
   'line([4 4],[0 4])',
   'line([0 0.25],[0 0])',
   'line([0 0.25],[4 4])',
   'line([4 3.75],[0 0])',
   'line([4 3.75],[4 4])' };
  slide(2).text={
   ' A graph can be represented by its adjacency matrix.',
   '',
   ' To construct the adjacency matrix, the nodes are numbered',
   ' 1 to N.  Then element (i,j) of the matrix is set to 1 if node i is',
   ' connected to node j, and 0 otherwise.'};

  %========== Slide 3 ==========

  slide(3).code={
   'subplot(2,2,1)',
   'pos=get(gca,''position'');',
   'pos2=[pos(1)+(0.75*pos(1)),pos(2:4)];',
   'set(gca, ''Visible'', ''off'',''position'',pos2)',
   'gplot(B(1:30,1:30),[x(1:30) y(1:30)],''b-'')',
   'set(gca,''DataAspectRatio'',[1 1 1],''Visible'',''off'');',
   'for j = 1:30,  text(x(j),y(j),int2str(j),''FontSize'',10);   end' };
  slide(3).text={
   ' Here are the nodes in one hemisphere of the bucky ball, numbered',
   ' polygon by polygon.',
   '',
   '   >> gplot(B(1:30,1:30),[x(1:30) y(1:30)],''b-'')',
   '   >> for j = 1:30, text(x(j),y(j),int2str(j)); end'};

  %========== Slide 4 ==========

  slide(4).code={
   'spy(B(1:30,1:30)), title(''spy(B(1:30,1:30))'')' };
  slide(4).text={
   'To visualize the adjacency matrix of this hemisphere, we use the SPY',
   'function to plot the silhouette of the nonzero elements.',
   '',
   '>> spy(B(1:30,1:30)), title(''spy(B(1:30,1:30))'')',
   '',
   'Note that the matrix is symmetric, since if node i is connected to node j,',
   'then node j is connected to node i.'};

  %========== Slide 5 ==========

  slide(5).code={
   '[B,V] = bucky;',
   'H = sparse(60,60);',
   'k = 31:60;',
   'H(k,k) = B(k,k);',
   'x = V(:,1);',
   'y = V(:,2);',
   'set(gca, ''Visible'', ''off'')',
   'gplot(B-H,V,''b-'');',
   'hold on',
   'gplot(H,V,''r-'');',
   'set(gca,''DataAspectRatio'',[1 1 1],''Visible'',''off'');',
   'for j = 31:60,  text(x(j),y(j),int2str(j),''FontSize'',10);   end',
   'hold off' };
  slide(5).text={
   ' Now we extend our numbering scheme to the whole graph',
   ' by reflecting the numbering of one hemisphere into the other.',
   '',
   '  >> [B,V] = bucky;'
   '  >> H = sparse(60,60);',
   '  >> gplot(B-H,V,''b-'');'
   '  >> hold on',
   '  >> gplot(H,V,''r-'')',
   '  >> for j = 31:60, text(x(j),y(j),int2str(j)); end'};

  %========== Slide 6 ==========

  slide(6).code={
   'spy(B), title(''spy(B)'')' };
  slide(6).text={
   'Finally, here is a SPY plot of the final sparse matrix.',
   '',
   '   >> spy(B), title(''spy(B)'')'};

  %========== Slide 7 ==========

  slide(7).code={
   'gplot(B-H,V,''b-'');',
   'set(gca,''DataAspectRatio'',[1 1 1],''Visible'',''off'');',
   'hold on',
   'gplot(H,V,''r-'')',
   'hold off' };
  slide(7).text={
   'In many useful graphs, each node is connected to only a few other',
   'nodes.  As a result, the adjacency matrices contain',
   'just a few nonzero entries per row.',
   '',
   'This demo has shown one place where SPARSE matrices come in handy.'};
end
