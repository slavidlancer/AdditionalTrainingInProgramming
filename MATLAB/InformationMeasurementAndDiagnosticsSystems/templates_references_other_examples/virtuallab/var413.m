function slide=var413
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var413', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var413
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var13.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 1500 (random) ������ ����� ������������ � �������������� �� -5 �� 0 �� � � �� -5 �� 10 �� Y � �� �������� �� �� ��������� � 15 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-3.3,2.7) � ���������� ��� ��� ���� ������� ����������.'};
end