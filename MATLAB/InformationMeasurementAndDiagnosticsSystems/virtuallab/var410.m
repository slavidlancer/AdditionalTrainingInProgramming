function slide=var410
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var410', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var410
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var10.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 5000 (random) ������ ����� ������������ � �������������� �� -10 �� -5 �� � � �� -5 �� 0 �� Y � �� �������� �� �� ��������� � 17 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-7.7,-2.9) � ���������� ��� ��� ���� ������� ����������.'};
end