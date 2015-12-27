function slide=upr1
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow upr1', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow upr1
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''upr0.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
slide(1).text={
   '',
   '',
   '                                  ����������� ���������� �1',
   '',
   '',
   '',
   '                                      ������  ������'};
%========== Slide 2 ==========

slide(2).code={
   'DATA = imread(''upr0.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(2).text={
   '���������� ����:',
   '',
   '   ���-����������� ����� �� ������ ��� ������� ������������ ������� � � ����� �� �������� - �������� � ��� ���� ��������� ������ ������� (ADALINE). ����� ������ ������ (x) ��� ����������� �������� ������� (w). � b �� �������� ������������. �������������� ������� �� ������� �(*) � ������� �� �������� ������� � ������� �������� �����������. ����������� �� ������� �� �������� ���� ���� �� ������ ������ �������� �������� ��� ����������� �������� �����������. ��� ��� ����� ��� ������������ ��  �������� �����, � ������ �������� � ��������. ��� ���������� ��  '};

  %========== Slide 3 ==========

  slide(3).code={
   'DATA = imread(''upr17.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };

  slide(3).text={
   '�������� � �� ���� ������-������� ������ �(p):t(p), �=1,2..�. ����� �� ���������� � ��������� �� �������, ���� �� ��������� �� ������� �(�) ��� ���� �(�) �� �� ��������� ���������� �� �������� ������� t(�). ��� ���������� �� ������� ������ �������, � ����� ������� �� � ��� ��������. ��� ���������� �������� �������� �� ������ t ���� �� �� �������� �� �������(1), ������ � d(t) �� �������� �������� �� ���������� �������� �� ������. � y(t) �� �������� ������ �� �������, � � e(t) ��������. ����� � �� �� ���������� �������� �������(2), ������ e(t) ������������ �������� � ������ �� ����� t. ��� ���� �������� ������� � ���� �� ���������� �� ��������, �� ������� �� ������������ �� ������ ����� �� ���-������� '};

  %========== Slide 4 ==========

  slide(4).code={
   'DATA = imread(''upr16.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };

slide(4).text={
   '��������. ��� ��������� �� ����������� �� ��������� �� ������� �� �������  w(t), �� ��������(3) � ������ �� �������� ���������� �� ��������  �� ���������(4). ���� ���������� �� (4) � (2) �� ������� �� �������� �� (2) �� ��������� �� ������� �� �������� (5).',
   '   ��������� (�����) �� ���-������� ��������:',
   '    1)�������������:�������� ������������ ������� �����������; �������� ����������, ���� ����� �� �������� ��������� �� ��������� (���� �� ���� ��������� ��������);�������� ������������ ���� ���������� � ����������� �� ����������� ������.',
	'    2)���������� �������� �� ������� (7)'};

  %========== Slide 5 ==========

  slide(5).code={
   'DATA = imread(''upr18.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };

slide(5).text={
   '   3)���������� ��������� ����������� ����������� �������(8)',
   '   4)��� �������� �������� � ������������, �� ����������� �� ����������, � ��� �������� � ��-������ �� ���������� ����������� ������������ ������ �� �� �������� ����������� ���� ���������.',
   '���� ����� ����������� �� ������� �� ������ "epoch".',
   '� ��� ������������ �� (2) �� ��������� �� ������� � �������, �� ����� ������ � ������ ������� �� ��������� � ������ ������� � ������� �� ������ +1, �� ��������� � ���������� �� ������� (6), ������ �������� �(t) �� ������ ��� (7).'};

  %========== Slide 6 ==========

slide(6).code={
   'DATA = imread(''upr0.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA,''myfile.bmp'');',
};
slide(6).text={
   '��� �� ������������� ����������:',
     '   �� �� ��������� 20 ������ ������� ������ ����� �� �������� �� ������ ������ � 5 �����. �� �� �������� ������� ������� �=2�1-1x2+5x3-4x4+2x5+2 � �� ������ � 10% ��� ���. �� �� ������ �� ����� "epoch" ������� ���� �� �� �����, ��� ������������������� ������ � 0,001. ��� ������� �������� ������ �� � �� ����� �� ��������� �� ���� ���������, �� �� �������� ���� ����� �������� ������������������� ������ �� ���� �� ���� ����������. �� �� ������ ������� � ���� 5 ������-������� ������,�������� ��� ������ �������, �� ��� �������� �� ��� ���.'};

  %========== Slide 7 ==========

  slide(7).code={
   'nntwarn off',
   'w=[4 2 1 3 1 2 1];',
   'b=3;',
   'P=[ 23 15 -16 10; 21 22 17 12;-32 33 35 14;-23 17 14  13;-17 23 -14 -13;21 -11 -23 13;13 19 -5 10];',
   'T=w*P+b;',
   '[R,Q]=size(P);',
   '[S,Q]=size(T);',
   '[W0,B0]=rands(S,R);',
   'disp_freq=5;',
   'max_epoch=270000;',
   'err_goal=0.01;',
   'lr=0.9*maxlinlr(P,1);',
   'TP=[disp_freq max_epoch err_goal lr];',
   '[W,B,epoch,errors]=trainwh(W0,B0,P,T,TP);',
   'A = purelin(netsum(W*P,B*ones(1,Q)));',
   '' };
   slide(7).text={
   '����� �� ���������� �� ������������� ����������:',
       '�������� �� ��������� �������'
         '%w=[4 2 1 3 1 2 1]';
         '%b=3';
       '�������� �� ������ ������� ������'  
         '%P=[ 23 15 -16 10;21 22 17 12;-32 33 35 14;-23 17 14  13;-17 23 -14 -13;21 -11 -23 13;13 19 -5 10]';
         '%T=w*P+b';
         '%[R,Q] = size(P)'; 
         '%[S,Q] = size(T)';
     };

   %========== Slide 8 ==========

  slide(8).text={
   	'%[W0,B0]=rands(S,R);',
   '������������� �� �������'
   	'%disp_freq=5;',
   	'%max_epoch=270000;',
   	'%err_goal=0.01;',
  		'%lr=0.9*maxlinlr(P,1);',
      '%TP=[disp_freq max_epoch err_goal lr];',
   '�������� �� �������'
      '%[W,B,epoch,errors]=trainwh(W0,B0,P,T,TP);',
   
};

end