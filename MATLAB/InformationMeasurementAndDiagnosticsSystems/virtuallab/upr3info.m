function outInfo=upr3info
%SIMINFO MATLAB Expo helper function for keeping list data.
%   OUTINFO=SIMINFO returns a data structure that lists all demos for the
%   Simulink area of the demos.

%   Copyright (c) 1990-1998 by The MathWorks, Inc. All Rights Reserved.
%   $Revision: 1.15 $

% Initialize demo index number
n=0;

%=========================
%     New in Simulink 3
%=========================

n=n+1;
matList(n).Name=' Лабораторно упражнение ';
matList(n).Type='MATLAB';
matList(n).Help= {...           
   ' Съдържание:'
   '1. Теоретична част;'
   '2. Цел на лабораторното упражнение;'
   '3. Начин на провеждане на лабораторното упражнение;'};matList(n).DemoList={
   'Упражнение ' ,
   };
matList(n).DemoList={
   'Упражнение ' ,
   };
matList(n).FcnList={
   'playshow upr3',
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
      ' Към лабораторното упражнение има двадесет варианта.',
   'Всеки от вариантите съдържа данни, които са индивидуалнни',
   'за всеки вариант.',
   	'Зa изпълнението на вариантите се изизква от студента',
   ' познания в областта на "Мрежи с обратно разпространение',
   ' на грешката", от дизциплината "Невронни мрежи".'};
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
   'playshow var31',
   'playshow var32',
   'playshow var33',
   'playshow var34',
   'playshow var35'
   'playshow var36',
   'playshow var37',
   'playshow var38',
   'playshow var39',
   'playshow var310',
   'playshow var311',
   'playshow var312',
   'playshow var313',
   'playshow var314',
   'playshow var315'
   'playshow var316',
   'playshow var317',
   'playshow var318',
   'playshow var319',
   'playshow var320'};


outInfo=matList;

