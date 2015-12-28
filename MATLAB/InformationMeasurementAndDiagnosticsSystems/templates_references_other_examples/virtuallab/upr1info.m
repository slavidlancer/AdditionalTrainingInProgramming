function outInfo=upr1info
%MATINFO Demo helper function for MATLAB demos.
%   out = MATINFO returns a data structure that lists all demos
%   for the MATLAB area of the demos.

%   Kelly Liu 6-14-96
%   Revised N. Gulley 8-5-96
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.25 $

% Initialize demo index number
n=0;

% ===============================================
% Matrices
% ===============================================
n=n+1;
matList(n).Name=' Лабораторно упражнение';
matList(n).Type='MATLAB';
matList(n).Help= {...           
      ' Съдържание:'
   '1. Теоретична част;'
   '2. Цел на лабораторното упражнение;'
   '3. Начин на провеждане на лабораторното упражнение;'};
matList(n).DemoList={
   'Упражнение ' ,
   };
matList(n).FcnList={
   'playshow upr1',
   'playshow inverter', 
   'playshow buckydem',
   'playshow sparsity', 
   'playshow matmanip',
   'eigshow',
   'matdems'};

% ===============================================
% Numerics
% ===============================================
n=n+1;
matList(n).Name='Варианти';
matList(n).Type='MATLAB';
matList(n).Help= {...            
      ' Лабораторното упражнение съдържа двадесет варианта.',
   'Всеки от вариантите изисква от студента да състави линеен модел',
   'на невронна мрежа с определен брой входа, които са индивидуални за',
   'за всеки от вариантите.',
   'За да изпълни успешно задачата си стусента трябва предварително',
   'да е запознат с "Линеен неврон " от дисциплината "Невронни мрежи".'};
matList(n).DemoList={
   'Вариант 1', 
   'Вариант 2', 
   'Вариант 3', 
   'Вариант 4',
   'Вариант 5'
   'Вариант 6', 
   'Вариант 7', 
   'Вариант 8', 
   'Вариант 9',
   'Вариант 10',
   'Вариант 11', 
   'Вариант 12', 
   'Вариант 13', 
   'Вариант 14',
   'Вариант 15'
   'Вариант 16', 
   'Вариант 17', 
   'Вариант 18', 
   'Вариант 19',
   'Вариант 20'};
matList(n).FcnList={
   'playshow var1',
   'playshow var2',
   'playshow var3',
   'playshow var4',
   'playshow var5'
   'playshow var6',
   'playshow var7',
   'playshow var8',
   'playshow var9',
   'playshow var10',
   'playshow var11',
   'playshow var12',
   'playshow var13',
   'playshow var14',
   'playshow var15'
   'playshow var16',
   'playshow var17',
   'playshow var18',
   'playshow var19',
   'playshow var120'};


outInfo=matList;

