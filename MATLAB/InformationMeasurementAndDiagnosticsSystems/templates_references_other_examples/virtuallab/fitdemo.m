function slide=fitdemo
% This is a slideshow file for use with playshow.m and makeshow.m
% To see it run, type 'playshow fitdemo', 

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.9 $

if nargout<1,
  playshow fitdemo
else
  %========== Slide 1 ==========

  slide(1).code={
   'global Data',
   'Data = [ 0.0000,    5.8955; 0.1000,  3.5639; 0.2000,   2.5173;   0.3000,   1.9790;  0.4000,  1.8990; 0.5000,    1.3938 ;  0.6000,    1.1359 ;  0.7000,    1.0096;  0.8000,    1.0343;  0.9000,    0.8435;  1.0000 ,   0.6856;  1.1000,    0.6100; 1.2000,    0.5392; 1.3000,    0.3946;  1.4000,    0.3903;  1.5000,    0.5474;  1.6000,    0.3459; 1.7000,    0.1370;   1.8000,    0.2211;  1.9000,    0.1704;   2.0000,    0.2636];',
   't = Data(:,1);',
   'y = Data(:,2);',
   'cla reset;',
   ' axis([0 2 0 6])',
   '    hold on',
   '    plot(t,y,''ro'',''EraseMode'',''none'')',
   '    title(''Input data'')' };
  slide(1).text={
   'Press the "Start" button to see a demonstration of the',
   'optimal fitting of a nonlinear function to a set of data.'};

  %========== Slide 2 ==========

  slide(2).code={
   '' };
  slide(2).text={
   'This example demonstrates fitting a nonlinear function',
   'to a set of data.  We''''ll use a function called FMINS',
   'that implements the Nelder-Mead simplex algorithm',
   'for minimizing a nonlinear function of several variables.'};

  %========== Slide 3 ==========

  slide(3).code={
   '' };
  slide(3).text={
   '  >> Data = ...',
   '        [ 0.0000    5.8955',
   '          ...',
   '           2.0000    0.2636];',
   ' >> t = Data(:,1);',
   ' >> y = Data(:,2);',
   ' >> plot(t,y,''ro'')'};

  %========== Slide 4 ==========

  slide(4).code={
   ' cla',
   ' plot(t,y,''ro'',''EraseMode'',''none'')',
   '    title(''Input data'')' };
  slide(4).text={
   ' We would like to fit the following function with 2 linear',
   ' parameters and 2 nonlinear parameters to the data:',
   '',
   '   y =  c(1)*exp(-lam(1)*t) + c(2)*exp(-lam(2)*t)'};

  %========== Slide 5 ==========

  slide(5).code={
   'global Plothandle',
   ' plot(t,y,''ro'',''EraseMode'',''none'')',
   'hold on',
   'Plothandle = plot(t,y,''EraseMode'',''xo'');' };
  slide(5).text={
   ' To fit this function to the data, we write a function "fitfun"',
   ' that returns the error in the fit given the nonlinear parameter',
   ' "lam" and the data.  We can then guess for initial estimates of',
   ' the nonlinear parameters, and invoke FMINS.',
   '',
   ' >> plot(t,y,''EraseMode'',''xor'')'};

  %========== Slide 6 ==========

  slide(6).code={
   'lam = [1 0]'';',
   'trace = 0;',
   'tol = .1;',
   'lambda = fmins(''fitfun'',lam,[trace tol]);',
   'hold off' };
  slide(6).text={
   ' And the optimal curve fit occurs automatically with the use',
   ' of the FMINS command.',
   '',
   ' >> lam = [1 0]'';',
   ' >> trace = 0;',
   ' >> tol = .1;',
   ' >> lambda = fmins(''fitfun'',lam,[trace tol]);'};
end
