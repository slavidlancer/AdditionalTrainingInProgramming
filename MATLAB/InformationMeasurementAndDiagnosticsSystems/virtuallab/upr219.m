function slide=upr219
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow upr219', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow upr219
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var19.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '' };
  slide(1).text={
   '���� �� �������� �������� �������� ������ �������� � �������� ��� � � ��� ����������� �� ������� ������������� �������� �� ������� �',
   '        |+5.5  +1.5  -0.7    +1     -1|',
   ' �=  |-0.5  -0.5  +0.3  -0.8   +0.5|   � ������� �� ������� ������������� �=|0 0 1 1 0| (�=|1 0 0 1 0|)',
   '�� �� �������� �������� �� � �� ����� ������� ��������� �������� �������� �� ��� ����� ���� ������������ �� �������� ���������� �� �������� � (-1,1) , y (-1,1) � ������������ ��'};

  %========== Slide 2 ==========

  slide(2).code={
   '' };
  slide(2).text={
   '������� � ������� ��������� �������������, ���� ����� ��� �� ������ ������� ��������� �� ���������� ���������� �� �� ������� ���� �� �������� ������� � ������� � �������. �� �� ������� � ��� ����� ������ ����� � ���������� �� �������� ��� ���� �� ����������.',
   '���� ������������ �� ����������� ������ �� �������� ��������� �������� � �������� ������ �, �� �� ������ ������� ��������� �� �� �������� ��������, ���� ���������� �� ��a'};

  %========== Slide 3 ==========

  slide(3).code={
   '' };
  slide(3).text={
   '����������� ��� ����������� �� � � ��������� �1 � �2 �������� ��������������� �� ��������� ��:',
   '      |+0.1  +0.7  +0.8  +0.8  +1.0  +0.3  +0.0  -0.3  -0.5  -1.5|',
   'P = |-1.2  -1.8   +1.6  +0.6  +0.8  +0.5  +0.2  +0.8  -1.5  -1.3|',
   '      |+0.1  +0.7  +0.8  -0.8   -1.0   +0.3  +0.0   -0.3  -0.5  -1.5|',
   'T1 = [0 1 0 0 0 1 0 0 1 0; 1 0 1 0 0 1 1 0 1 1] � T2 = [1 0 0 0 0 1 1 1 1 0;  0 1 0 1 0 1 1 0 1 0]',
   ''};
end