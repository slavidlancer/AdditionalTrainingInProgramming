function slide=var42
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var42', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var42
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var2.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 4000 (random) ������ ����� ������������ � �������������� �� 5 �� 15 �� � � �� 5 �� 27 �� Y � �� �������� �� �� ��������� � 25 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(5.3,21) � ���������� ��� ��� ���� ������� ����������.'};
end