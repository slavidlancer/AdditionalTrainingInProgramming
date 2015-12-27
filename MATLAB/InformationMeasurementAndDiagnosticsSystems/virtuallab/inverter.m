function slide=inverter
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow inverter', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.9 $
if nargout<1,
  playshow inverter
else
  %========== Slide 1 ==========

  slide(1).code={
   'n = 100;',
   'a = rand(n);',
   'imagesc(a);',
   'colormap(hot);',
   'axis square;',
   'drawnow;' };
  slide(1).text={
   ' Press the "Start" button to see a demonstration of the',
   ' inversion of large matrices in MATLAB.'};

  %========== Slide 2 ==========

  slide(2).code={
   ' imagesc(a);',
   'axis square;' };
  slide(2).text={
   ' This is a graphic representation of a random matrix',
   ' The RAND command creates the matrix, and the',
   ' IMAGESC command plots an image of the matrix,',
   ' automatically scaling the color map appropriately.',
   ' >> n = 100;',
   ' >> a = rand(n);',
   ' >> imagesc(a);',
   ' >> colormap(hot);',
   ' >> axis square'};

  %========== Slide 3 ==========

  slide(3).code={
   'b = inv(a);',
   'imagesc(b);',
   'axis square;',
   'drawnow;' };
  slide(3).text={
   ' This is a representation of the inverse of that matrix. While the',
   ' numbers in the previous matrix were completely random, the',
   ' elements in this matrix are anything BUT random. In fact,',
   ' each element in this matrix ("b") depends on every one of the',
   ' ten thousand elements in the previous matrix ("a").',
   '',
   ' >> b = inv(a);',
   ' >> imagesc(b);',
   ' >> axis square;'};

  %========== Slide 4 ==========

  slide(4).code={
   'imagesc(b);',
   'axis square;' };
  slide(4).text={
   ' But how do we know for sure if this is really the correct inverse',
   ' for the original matrix? Multiply the two together and see if the',
   ' result is correct, because just as 3*(1/3) = 1, so must',
   ' a*inv(a) = I, the identity matrix.',
   ' The identity matrix (almost always designated by I) is like an',
   ' enormous number one. It is completely made up of zeros,',
   ' except for ones running along the main diagonal.'};

  %========== Slide 5 ==========

  slide(5).code={
   'imagesc(a*b);',
   'axis square;',
   'drawnow;' };
  slide(5).text={
   ' This is the product of the matrix with its inverse: sure',
   ' enough, it has the distinctive look of the identity matrix,',
   ' with a band of ones streaming down the main diagonal,',
   ' surrounded by a sea of zeros.',
   '',
   ' >> imagesc(a*b);',
   ' >> axis square;'};
end
