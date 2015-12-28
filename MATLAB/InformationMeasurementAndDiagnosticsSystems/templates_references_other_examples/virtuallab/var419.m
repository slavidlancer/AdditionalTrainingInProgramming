function slide=var419
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var419', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var419
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var19.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   'Разположете 4500 (random) входни данни разпределени в пространството от 0 до 15 по Х и от -15 до 10 по Y и се опитайте да ги групирате в 25 клъстера. След групирането по клъстери подайте на входа на мрежата елемент със стойности x,y(0.5,2.1) и определете към кой клас клъстер принадлежи.'};
end