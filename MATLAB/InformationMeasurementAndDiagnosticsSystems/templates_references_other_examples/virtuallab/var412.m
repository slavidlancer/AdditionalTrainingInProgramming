function slide=var412
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var412', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var412
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var12.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 4000 (random) ������ ����� ������������ � �������������� �� 5 �� 10 �� � � �� 5 �� 15 �� Y � �� �������� �� �� ��������� � 20 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(5.3,10.1) � ���������� ��� ��� ���� ������� ����������.'};
end