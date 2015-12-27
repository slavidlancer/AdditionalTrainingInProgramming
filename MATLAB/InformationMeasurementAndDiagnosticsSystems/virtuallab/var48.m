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
   'Разположете 3000 (random) входни данни разпределени в пространството от -11 до 15 по Х и от -3 до 8 по Y и се опитайте да ги групирате в 27 клъстера. След групирането по клъстери подайте на входа на мрежата елемент със стойности x,y(-3.3,+2.1) и определете към кой клас клъстер принадлежи.'};
end