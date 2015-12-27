function slide=var10
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var10', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var10
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var10.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '�� �� ������� ������ ����� �� �������� ����� � 7 ����� � � �� 4 ��������, ���� ��������� �� �1 {x11, x12,�� ,x1n) �� �k(�k1..�kn)�� ��:',
   ' �1[23 15 -16 10], �2[21 22 17 12], �3[-32 33 35 14], �4[-23 17 14  13], �5[-17 23 -14 -13], �6[21 -11 -23 13] ,�7[13 19 -5 10]; �������� ����������� W={W1�Wk}, ��������� W= [4 2 1 3 1 2 1] � ���������� b=3. �������� ������� � ��������� T= W *�+b. �� �� ������� ���� ������� �� ���� �� ���� ������� �� 50 ����� ��� ������ ���������� �������� �� ������������� ������ 0,0001'};

  %========== Slide 2 ==========

  slide(2).code={
   '' };
  slide(2).text={
   '���� � ������ �� ���� ������� �� ���� ��������� ���������� ��� ����� ���������� ���� �������� �������� �� �� ����������. ���� ������������ �� ���� ������ ������� ���������� �����, ���� ��������� ��� �������� �������� ��� ������ ��� � �������� �� ������������ �� 5%. ��������� ����� �� ��������� �� ������ ����� ������ ��� �������� � ���������� ������ ��������.'};
end