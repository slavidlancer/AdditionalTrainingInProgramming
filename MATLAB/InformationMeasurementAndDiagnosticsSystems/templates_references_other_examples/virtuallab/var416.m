function slide=var416
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var416', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var416
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var16.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 3500 (random) ������ ����� ������������ � �������������� �� -10 �� 5 �� � � �� 5 �� 15 �� Y � �� �������� �� �� ��������� � 33 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(0.3,5.1) � ���������� ��� ��� ���� ������� ����������.'};
end