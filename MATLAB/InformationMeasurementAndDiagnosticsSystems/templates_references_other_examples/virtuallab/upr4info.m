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
simList(n).Name='����������� ����������';
simList(n).Help= ...
           {' ����������:'
   '1. ���������� ����;'
   '2. ��� �� ������������� ����������;'
   '3. ����� �� ���������� �� ������������� ����������;'};
simList(n).DemoList={
            '����������',
                     };
simList(n).FcnList={
   'playshow upr4'           
};

%=========================
%     New in Simulink 2
%=========================
n=n+1;
simList(n).Name='��������';
simList(n).Help= ...
   {' ������������ ������� �������� ��������.',
   ' ����� ������� ������ �� �������� �� ��������� ',
   '���������� �� �� ������������ "�������� �����".',
   ' ���������� �������� �������� �� �������� �� ����������������',
   '�� ����� �� ������� � ����� �� �������.',
   '�� ���������� �� ������� �� �� ����� ���������� �����',
   '��� �������� ������ �������, ����� � ������������ �� ����� �������.'};

simList(n).DemoList={
            '������� 1', 
   '������� 2', 
   '������� 3', 
   '������� 4',
   '������� 5'
   '������� 6', 
   '������� 7', 
   '������� 8', 
   '������� 9',
   '������� 10',
   '������� 11', 
   '������� 12', 
   '������� 13', 
   '������� 14',
   '������� 15'
   '������� 16', 
   '������� 17', 
   '������� 18', 
   '������� 19',
   '������� 20'};
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
