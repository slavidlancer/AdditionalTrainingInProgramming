function slide=strucdem
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow strucdem', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
% $Revision: 1.9 $
if nargout<1,
  playshow strucdem
else
  %========== Slide 1 ==========

  slide(1).code={
   'cla',
   'axis on',
   'axis([0 1 0 1])',
   'set(gca, ''Units'', ''normalized'')',
   'text(0.34,0.8,''Demo'', ''color'',''b'',''FontSize'',20, ''Horiz'', ''right'')',
   'text(0.5,0.9,''of'',''color'',''b'',''FontSize'', 20)',
   'text(0.5,0.65,''Structures'',''color'',''b'',''FontSize'',20)',
   'text(0.5,0.4,''in'',''color'',''b'',''FontSize'',20)',
   'text(0.7,0.5,''MAT'',''color'',''b'',''FontSize'',20)',
   'text(0.7,0.3,''LAB'',''color'',''b'',''FontSize'',20)',
   'grid off',
   'box off',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'hold on',
   'plot([0.42 0.42],[0.9 0.4],''k-'')',
   'plot([0.35 0.42],[0.8 0.8],''k-'')',
   'plot([0.42 0.48],[0.9 0.9],''k-'')',
   'plot([0.42 0.48],[0.65 0.65],''k-'')',
   'plot([0.42 0.48],[0.4 0.4],''k-'')',
   'plot([0.57 0.63], [0.4 0.4],''k-'')',
   'plot([0.63 0.69],[0.5 0.5], ''k-'')',
   'plot([0.63 0.69],[0.3 0.3], ''k-'')',
   'plot([0.63 0.63],[0.5 0.3],''k-'')',
   'hold off' };
  slide(1).text={
   'MATLAB V5 supports specialized data constructs such as structures and cell arrays.',
   '',
   'MATLAB structures are array-oriented data constructs. They provide a convenient way to group related  data of different types.',
   '',
   'Click the ''Start'' button to start the demo.'};

  %========== Slide 2 ==========

  slide(2).code={
   'cla',
   'text(0.05,0.9,''patient'');',
   'text(0.16,0.75, ''.name'');',
   'text(0.4,0.75,''John Doe'') ;',
   'text(0.16,0.65,''.billing'') ;',
   'text(0.4,0.65,''127.00'') ;',
   'text(0.16,0.55,''.test'') ;',
   'text(0.38,0.52,''  79   75   73'') ;',
   'text(0.38,0.44,''180  178  177.5'');',
   'text(0.38,0.36,''220  210  205'')',
   'grid off',
   'box off',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'hold on',
   'axis([0 1 0 1])',
   'plot([0.1 0.1],[0.85 0.55],''k-'')',
   'plot([0.1 0.15],[0.75 0.75],''k-'')',
   'plot([0.27 0.35],[0.75 0.75],''k-'')',
   'plot([0.27 0.35],[0.65 0.65],''k-'')',
   'plot([0.1 0.15],[0.65 0.65],''k-'')',
   'plot([0.1 0.15],[0.55 0.55],''k-'')',
   'plot([0.27 0.35],[0.55 0.55],''k-'')',
   'x=  [0.35 0.35 0.65 0.65 0.35];',
   'y=  [0.58 0.32 0.32 0.58 0.58];',
   'plot(x,y,''k-'')',
   'hold off' };
  slide(2).text={
   'Structures are MATLAB data constructs with named "data containers" called fields. The fields of a structure can contain any kind of data. For example, one field might contain a text string representing a name, another might contain a scalar representing a billing amount, a third might hold a matrix of medical test results, and so on.'};

  %========== Slide 3 ==========

  slide(3).code={
   'cla',
   '',
   'patient.name = ''John Doe'' ;',
   'patient.billing = 127.00;',
   'patient.test = [79 75 73; 180 178 177.5; 172 170 169];',
   '',
   'text(0.05,0.9,''patient = '')',
   'text(0.1,0.8,''name: '''' John Doe '''' '')',
   'text(0.1,0.7,''billing: 127'')',
   'text(0.1,0.6,''test: [3x3 double]'');',
   'axis([0 1 0 1])',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'grid off',
   'box off' };
  slide(3).text={
   'You can construct a structure simply by assigning values to its fields. For example:',
   '',
   '>> patient.name = ''John Doe''',
   '>> patient.billing = 127.00;',
   '>> patient.test = [79 75 73; 180 178 177.5; 172 170 169];',
   '',
   'By entering ''patient'', we see that we have created the structure pictured in the output above.',
   '',
   '>> patient',
   ''};

  %========== Slide 4 ==========

  slide(4).code={
   '   cla',
   '   patient(2).name = ''Ann Lane'';',
   '   patient(2).billing = 28.50;',
   '   patient(2).test = [68 70 68; 118 118 119; 172 170 169];',
   '   text(0.8,1.3,''patient array'')',
   '   text(0.2,0.9,''patient(1)'');',
   '   text(0.15,0.65,''.name'')',
   '   text(0.51,0.65,'''''' John Doe'''''')',
   '   text(0.15,0.55,''.billing'')',
   '   text(0.51,0.55, ''127.00'')',
   '   text(0.15,0.45,''.test'')',
   '   text(0.5,0.42,''  79    75    73'')',
   '   text(0.494,0.32,''180  178  177.5'')',
   '   text(0.494,0.22,''220  210  205'')',
   '   grid off',
   '   box off',
   '   set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   '   hold on',
   '   axis([0 2 0 1.5])',
   '  plot([1 1],[1.22 1.05],''k-'')',
   '  plot([0.22 1.22],[1.05 1.05],''k-'')',
   '  plot([0.22 0.22],[1.05 0.95],''k-'')',
   '   plot([1.22 1.22],[1.05 0.95],''k-'')',
   '  plot([0.1 0.1],[0.65 0.45],''k-'')',
   '   plot([0.22 0.22],[0.83 0.7],''k-'')',
   '   plot([0.1 0.15],[0.55 0.55],''k-'')',
   '   plot([0.1 0.15],[0.65 0.65],''k-'')',
   '   plot([0.37 0.47],[0.65 0.65],''k-'')',
   '   plot([0.37 0.47],[0.55 0.55],''k-'')',
   '   plot([0.1 0.15],[0.45 0.45],''k-'')',
   '   plot([0.3 0.47],[0.45 0.45],''k-'')',
   '   x=  [0.47 0.47 1 1 0.47];',
   '   y=  [0.49 0.14 0.14 0.49 0.49];',
   '   plot(x,y,''k-'')',
   '',
   '   text(1.2,0.9,''patient(2)'');',
   '   text(1.15,0.65,''.name'')',
   '   text(1.51,0.65,'''''' Ann Lane'''''')',
   '   text(1.15,0.55,''.billing'')',
   '   text(1.51,0.55,''28.50'')',
   '   text(1.15,0.45,''.test'')',
   '   text(1.5,0.42,''  68   70   68'')',
   '   text(1.494,0.32,''118 118 119'')',
   '   text(1.494,0.22,''172 170 169'')',
   '   plot([1.1 1.1],[0.65 0.45],''k-'')',
   '   plot([1.22 1.22],[0.83 0.7],''k-'')',
   '   plot([1.1 1.15],[0.55 0.55],''k-'')',
   '   plot([1.1 1.15],[0.65 0.65],''k-'')',
   '   plot([1.37 1.47],[0.65 0.65],''k-'')',
   '   plot([1.37 1.47],[0.55 0.55],''k-'')',
   '   plot([1.1 1.15],[0.45 0.45],''k-'')',
   '   plot([1.3 1.47],[0.45 0.45],''k-'')',
   '   x=  [1.47 1.47 1.93 1.93 1.47];',
   '   y=  [0.49 0.14 0.14 0.49 0.49];',
   '   plot(x,y,''k-'')',
   '   hold off' };
  slide(4).text={
   'You can also build an array of structures to collect similar items together. A structure array has the following properties:',
   '*   All structures in the array have the same number of fields.',
   '*   All fields have the same field names.',
   'You can build a structure array by adding subscripts after the structure name:',
   '>> patient(2).name = ''Ann Lane''',
   '>> patient(2).billing = 28.50',
   '>> patient(2).test = [68 70 68; 118 118 119; 172 170 169];'};

  %========== Slide 5 ==========

  slide(5).code={
   'cla',
   'axis auto',
   'bar(patient(1).test)',
   '' };
  slide(5).text={
   'You can access any field in a structure as easily as you access a regular variable.  For example, we can draw a bar graph of the test data for patient(1) using the following command:',
   '',
   '>> bar(patient(1).test)',
   ''};

  %========== Slide 6 ==========

  slide(6).code={
   'cla',
   ' grid off',
   'box off',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'text(0.1,0.92,''>>fieldnames(patient)'')',
   'text(0.1,0.82,''ans = '');',
   'text(0.15,0.72,'' ''''name'''' '');',
   'text(0.15,0.64,'' ''''billing'''' '');',
   'text(0.15,0.56,'' ''''test'''' '');',
   '                                                                                                                               text(0.1,0.4,''>>fieldnames(patient2)'')',
   'text(0.1,0.3,''ans = '');',
   'text(0.15,0.2,'' ''''name'''' '');',
   'text(0.15,0.12,'' ''''billing'''' '');' };
  slide(6).text={
   'The FIELDNAMES function returns the field names for a structure array:',
   '>> fieldnames(patient)',
   '',
   'You can remove a given field from every structure within a structure array using the RMFIELD function.',
   '',
   '>> patient2 = rmfield(patient, ''test'');',
   '>> fieldnames(patient2)'};

  %========== Slide 7 ==========

  slide(7).code={
   'cla',
   'axis on',
   'axis([0 2 0 1])',
   'grid off',
   'box off',
   'set(gca,''xtick'',[],''ytick'',[],''xcolor'',''w'',''ycolor'',''w'')',
   'text(0.75,0.93,''A'');',
   'text(0.1,0.6,''.data'')',
   'text(0.1,0.4,''.nest'');',
   'text(0.4,0.4,''.testnum'');',
   'text(0.4,0.3,''.xdata'');',
   'text(0.4,0.2,''.ydata'');',
   'text(0.74,0.4,'' ''''Test 1'''' '');',
   'text(0.75,0.3,''[4 2 8]'');',
   'text(0.75,0.2,''[7 1 6]'');',
   'text(0.13,0.75,''A(1)'');',
   'text(0.4,0.64,''3 4 7'');',
   'text(0.4,0.56,''8 0 1'');',
   'hold on',
   'plot([0.17 1.17],[0.85 0.85],''k-'');',
   'plot([0.77 0.77],[0.9 0.85],''k-'');',
   'plot([0.17 0.17],[0.85 0.77],''k-'');',
   'plot([0.17 0.17],[0.72,0.65],''k-'');',
   'plot([0.05 0.05],[0.6 0.4],''k-'');                                                                                  plot([0.05 0.09],[0.6 0.6],''k-'');',
   'plot([0.27 0.38],[0.6 0.6],''k-'');                                                                                  plot([0.27 0.38],[0.4 0.4] ,''k-'');',
   'plot([0.05 0.09],[0.4 0.4],''k-'');',
   'plot([0.31 0.38],[0.3 0.3],''k-'');',
   'plot([0.31 0.38],[0.2 0.2],''k-'');',
   'plot([0.31 0.31],[0.4 0.2],''k-'');',
   'plot([0.67 0.73],[0.4 0.4],''k-'');',
   'plot([0.59 0.73],[0.3 0.3],''k-'');',
   'plot([0.59 0.73],[0.2 0.2],''k-'');                                                                                  plot([0.38 0.38 0.57 0.57 0.38],[0.68 0.52 0.52 0.68 0.68],''k-'');',
   'text(1.1,0.6,''.data'')',
   'text(1.1,0.4,''.nest'');',
   'text(1.4,0.4,''.testnum'');',
   'text(1.4,0.3,''.xdata'');',
   'text(1.4,0.2,''.ydata'');',
   'text(1.74,0.4,'' ''''Test 2'''' '');',
   'text(1.75,0.3,''[3 4 2]'');',
   'text(1.75,0.2,''[5 0 9]'');',
   'text(1.13,0.75,''A(2)'');',
   'text(1.4,0.64,''9 3 2'');',
   'text(1.4,0.56,''7 6 5'');',
   'plot([1.17 1.17],[0.85,0.77],''k-'');',
   'plot([1.17 1.17],[0.72,0.65],''k-'');',
   'plot([1.05 1.05],[0.6 0.4],''k-'');                                                                                  plot([1.05 1.09],[0.6 0.6],''k-'');',
   'plot([1.27 1.38],[0.6 0.6],''k-'');                                                                                  plot([1.27 1.38],[0.4 0.4] ,''k-'');',
   'plot([1.05 1.09],[0.4 0.4],''k-'');',
   'plot([1.31 1.38],[0.3 0.3],''k-'');',
   'plot([1.31 1.38],[0.2 0.2],''k-'');',
   'plot([1.31 1.31],[0.4 0.2],''k-'');',
   'plot([1.67 1.73],[0.4 0.4],''k-'');',
   'plot([1.59 1.73],[0.3 0.3],''k-'');',
   'plot([1.59 1.73],[0.2 0.2],''k-'');',
   'plot([1.38 1.38 1.57 1.57 1.38],[0.68 0.52 0.52 0.68 0.68],''k-'');' };
  slide(7).text={
   'Structures can be nested.  You can use the STRUCT function or direct assignment statements to nest structures within existing structure fields.',
   '>> A = struct( ''data'', {[3 4 7; 8 0 1], [9 3 2; 7 6 5]}, ...',
   '             ''nest'', {...',
   '                        struct( ''testnum'', ''Test 1'', ...',
   '                                  ''xdata'', [4 2 8], ''ydata'', [7 1  6]), ...',
   '                        struct( ''testnum'', ''Test 2'', ...',
   '                                  ''xdata'', [3 4 2], ''ydata'', [5 0 9])});'};

  %========== Slide 8 ==========

  slide(8).code={
   'cla',
   'axis off' };
  slide(8).text={
   'Other commands related to structures are:',
   '    disp(structure)',
   '    struct(''field1'',value1,''field2'',value2,...)',
   '    getfield(array_name,{array_index},''field_name'',{field_index})',
   '    setfield(str_array,{array_index},''field'',{filed_index},value)',
   '    rmfield(struc,''field'')',
   '    isfield(struct, ''field'')',
   'For further information, please consult the HELPDESK or the MATLAB Manual.',
   ''};
end
