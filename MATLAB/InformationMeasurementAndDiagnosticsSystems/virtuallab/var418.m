function slide=var418
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var418', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var418
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var18.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 3000 (random) ������ ����� ������������ � �������������� �� -11 �� 15 �� � � �� -3 �� 8 �� Y � �� �������� �� �� ��������� � 17 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-1.3,+5.2) � ���������� ��� ��� ���� ������� ����������.'};
end