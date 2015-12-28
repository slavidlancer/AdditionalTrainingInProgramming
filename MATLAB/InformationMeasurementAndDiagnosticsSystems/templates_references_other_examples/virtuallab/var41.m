function slide=var41
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var41', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var41
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var1.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 3000 (random) ������ ����� ������������ � �������������� �� -15 �� 5 �� � � �� 5 �� 27 �� Y � �� �������� �� �� ��������� � 15 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(0, 5.3) � ���������� ��� ��� ���� ������� ����������.'};
end