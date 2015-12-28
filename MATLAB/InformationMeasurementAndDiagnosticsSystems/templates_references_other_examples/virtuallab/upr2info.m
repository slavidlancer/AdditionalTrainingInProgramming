function outInfo=upr2info
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
matList(n).FcnList={
   'playshow upr2',
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
      ' Лабораторното упражнение съдържа двадесет варианта. ',
   'Всеки от вариантите изисква от студента познания в областта',
   'нa работата с Перцептрон. Вариантите съдържат индивидуални задания',
   'и от студентите се изсква да се провери дали е възможно входните',
   'елементи на два класа да бъдат линейно разделени с помоща на',
'единичен перцептрон.'};
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
   'playshow upr21',
   'playshow upr22',
   'playshow upr23',
   'playshow upr24',
   'playshow upr25'
   'playshow upr26',
   'playshow upr27',
   'playshow upr28',
   'playshow upr29',
   'playshow upr210',
   'playshow upr211',
   'playshow upr212',
   'playshow upr213',
   'playshow upr214',
   'playshow upr215'
   'playshow upr216',
   'playshow upr217',
   'playshow upr218',
   'playshow upr219',
   'playshow upr220'};


outInfo=matList;

