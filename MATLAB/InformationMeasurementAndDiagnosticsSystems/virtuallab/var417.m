function slide=var417
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var417', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var417
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var17.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 4000 (random) ������ ����� ������������ � �������������� �� -10 �� 5 �� � � �� -5 �� 10 �� Y � �� �������� �� �� ��������� � 13 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-5.3,+8.1) � ���������� ��� ��� ���� ������� ����������.'};
end