function slide=var43
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var43', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var43
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var3.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 1500 (random) ������ ����� ������������ � �������������� �� 0 �� 5 �� � � �� 5 �� 10 �� Y � �� �������� �� �� ��������� � 33 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(3.3,2.1) � ���������� ��� ��� ���� ������� ����������.'};
end