function slide=var419
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var419', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var419
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var19.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 4500 (random) ������ ����� ������������ � �������������� �� 0 �� 15 �� � � �� -15 �� 10 �� Y � �� �������� �� �� ��������� � 25 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(0.5,2.1) � ���������� ��� ��� ���� ������� ����������.'};
end