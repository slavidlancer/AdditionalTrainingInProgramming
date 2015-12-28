function slide=var42
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow var42', 

% Copyright (c) 1984-98 by The MathWorks, Inc.
if nargout<1,
  playshow var42
else
  %========== Slide 1 ==========

  slide(1).code={
   'DATA = imread(''var2.bmp'');',
   'imshow(DATA);',
   'imwrite(DATA, ''myfile.bmp'');',
   '',
   '' };
  slide(1).text={
   'Разположете 4000 (random) входни данни разпределени в пространството от 5 до 15 по Х и от 5 до 27 по Y и се опитайте да ги групирате в 25 клъстера. След групирането по клъстери подайте на входа на мрежата елемент със стойности x,y(5.3,21) и определете към кой клас клъстер принадлежи.'};
end