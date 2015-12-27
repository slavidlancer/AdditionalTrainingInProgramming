function slide=var420
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var420', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var420
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var20.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 5000 (random) ������ ����� ������������ � �������������� �� -10 �� -5 �� � � �� -5 �� 0 �� Y � �� �������� �� �� ��������� � 27 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-6.7,-1.9) � ���������� ��� ��� ���� ������� ����������.'};
end