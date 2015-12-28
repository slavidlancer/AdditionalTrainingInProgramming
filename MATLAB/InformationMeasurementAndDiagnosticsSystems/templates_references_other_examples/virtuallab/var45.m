function slide=var45
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var45', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var45
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var5.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 2500 (random) ������ ����� ������������ � �������������� �� -5 �� 5 �� � � �� -5 �� 10 �� Y � �� �������� �� �� ��������� � 33 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(3.3,2.1) � ���������� ��� ��� ���� ������� ����������.'};
end