function slide=var411
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var411', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var411
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var11.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 3000 (random) ������ ����� ������������ � �������������� �� -5 �� 5 �� � � �� 5 �� 17 �� Y � �� �������� �� �� ��������� � 25 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(0.5,15.3) � ���������� ��� ��� ���� ������� ����������.'};
end