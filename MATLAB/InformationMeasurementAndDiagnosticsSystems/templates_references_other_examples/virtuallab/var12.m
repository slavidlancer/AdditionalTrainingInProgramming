function slide=var12
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var12', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var12
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var12.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '�� �� ������� ������ ����� �� �������� ����� � 4 ����� � � �� 5 ��������, ���� ��������� �� �1 {x11, x12,�� ,x1n) �� �k(�k1..�kn)�� ��:',
   '�1[-1 2 -3 4 3], �2[2 -3 -7 -2 -1], �3[-11 -5 -10 3 1], �4[-13 -2 5 -11 4]; �������� ����������� W={W1�Wk}, ��������� W= [2 3 5 4] � ���������� b=4. �������� ������� � ��������� T= W *�+b. �� �� ������� ���� ������� �� ���� �� ���� ������� �� 150 ����� ��� ������ ���������� �������� �� ������������� ������ 0,002'};

  %========== Slide 2 ==========

  slide(2).code={
   '' };
  slide(2).text={
   '���� � ������ �� ���� ������� �� ���� ��������� ���������� ��� ����� ���������� ���� �������� �������� �� �� ����������. ���� ������������ �� ���� ������ ������� ���������� �����, ���� ��������� ��� �������� �������� ��� ������ ��� � �������� �� ������������ �� 3%. ��������� ����� �� ��������� �� ������ ����� ������ ��� �������� � ���������� ������ ��������.',
   '',
   ''};
end