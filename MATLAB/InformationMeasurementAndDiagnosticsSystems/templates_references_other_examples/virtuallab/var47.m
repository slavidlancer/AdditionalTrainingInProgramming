function slide=var47
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var47', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var47
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var7.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 4000 (random) ������ ����� ������������ � �������������� �� -10 �� 5 �� � � �� -5 �� 10 �� Y � �� �������� �� �� ��������� � 33 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-3.3,-2.1) � ���������� ��� ��� ���� ������� ����������.'};
end