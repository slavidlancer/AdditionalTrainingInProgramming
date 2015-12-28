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
matList(n).Name=' ����������� ���������� ';
matList(n).Type='MATLAB';
matList(n).Help= {...           
   ' ����������:'
   '1. ���������� ����;'
   '2. ��� �� ������������� ����������;'
   '3. ����� �� ���������� �� ������������� ����������;'};matList(n).DemoList={
   '���������� ' ,
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
matList(n).Name='��������';
matList(n).Type='MATLAB';
matList(n).Help= {...            
      ' ������������� ���������� ������� �������� ��������. ',
   '����� �� ���������� ������� �� �������� �������� � ��������',
   '�a �������� � ����������. ���������� �������� ������������ �������',
   '� �� ���������� �� ������ �� �� ������� ���� � �������� ��������',
   '�������� �� ��� ����� �� ����� ������� ��������� � ������ ��',
'�������� ����������.'};
matList(n).DemoList={
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

