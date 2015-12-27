function slide=var120
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var120', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var120
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var20.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '�� �� ������� ������ ����� �� �������� ����� � 7 ����� � � �� 4 ��������, ���� ��������� �� �1 {x11, x12,�� ,x1n) �� �k(�k1..�kn)�� ��:',
   ' �1[3 5 -6 1], �2[2 2 7 2], �3[-3 3 5 4], �4[-2 7 1 3], �5[-7 3 -4 -13], �6[1 -1 -3 3] ,�7[1 9 -5 10]; �������� ����������� W={W1�Wk}, ��������� W= [3 1 1 3 3 2 1] � ���������� b=5. �������� ������� � ��������� T= W *�+b. �� �� ������� ���� ������� �� ���� �� ���� ������� �� 150 ����� ��� ������ ���������� �������� �� ������������� ������ 0,0001'};

  %========== Slide 2 ==========

  slide(2).code={
   '' };
  slide(2).text={
   ', ���� � ������ �� ���� ������� �� ���� ��������� ���������� ��� ����� ���������� ���� �������� �������� �� �� ����������. ���� ������������ �� ���� ������ ������� ���������� �����, ���� ��������� ��� �������� �������� ��� ������ ��� � �������� �� ������������ �� 6%. ��������� ����� �� ��������� �� ������ ����� ������ ��� �������� � ���������� ������ ��������.',
   '',
   '',
   ''};
end