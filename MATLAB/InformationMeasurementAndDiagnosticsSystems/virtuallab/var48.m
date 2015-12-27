function slide=var48
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var48', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var48
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var8.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 3000 (random) ������ ����� ������������ � �������������� �� -11 �� 15 �� � � �� -3 �� 8 �� Y � �� �������� �� �� ��������� � 27 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-3.3,+2.1) � ���������� ��� ��� ���� ������� ����������.'};
end