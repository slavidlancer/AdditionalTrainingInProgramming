function outInfo=upr4info
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
simList(n).Name='Лабораторно упражнение';
simList(n).Help= ...
           {' Съдържание:'
   '1. Теоретична част;'
   '2. Цел на лабораторното упражнение;'
   '3. Начин на провеждане на лабораторното упражнение;'};
simList(n).DemoList={
            'Упражнение',
                     };
simList(n).FcnList={
   'playshow upr4'           
};

%=========================
%     New in Simulink 2
%=========================
n=n+1;
simList(n).Name='Варианти';
simList(n).Help= ...
   {' Упражнението включва двадесет варианта.',
   ' Всеки вариант изсква от студента да представи ',
   'познанията си по дисциплината "Невронни мрежи".',
   ' Вариантите изискват познания на теорията за самоорганизиращи',
   'се карти на Кохонен и мрежи на Хопфилд.',
   'От студентите се изисква да се обучи невронната мрежа',
   'със зададена входна извадка, която е индивидуална за всеки вариант.'};

simList(n).DemoList={
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
simList(n).FcnList={
   'playshow var41',
   'playshow var42',
   'playshow var43',
   'playshow var44',
   'playshow var45'
   'playshow var46',
   'playshow var47',
   'playshow var48',
   'playshow var49',
   'playshow var410',
   'playshow var411',
   'playshow var412',
   'playshow var413',
   'playshow var414',
   'playshow var415'
   'playshow var416',
   'playshow var417',
   'playshow var418',
   'playshow var419',
   'playshow var420'};


outInfo=simList;
