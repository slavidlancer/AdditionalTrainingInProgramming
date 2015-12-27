function slide=var415
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var415', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var415
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var15.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   '����������� 2500 (random) ������ ����� ������������ � �������������� �� -15 �� 5 �� � � �� -15 �� 10 �� Y � �� �������� �� �� ��������� � 20 ��������. ���� ����������� �� �������� ������� �� ����� �� ������� ������� ��� ��������� x,y(-13.3,-12.1) � ���������� ��� ��� ���� ������� ����������.'};
end