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
matList(n).Name=' ����������� ���������� ';
matList(n).Type='MATLAB';
matList(n).Help= {...           
   ' ����������:'
   '1. ���������� ����;'
   '2. ��� �� ������������� ����������;'
   '3. ����� �� ���������� �� ������������� ����������;'};matList(n).DemoList={
   '���������� ' ,
   };
matList(n).DemoList={
   '���������� ' ,
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
matList(n).Name='��������';
matList(n).Type='MATLAB';
matList(n).Help= {...            
      ' ��� ������������� ���������� ��� �������� ��������.',
   '����� �� ���������� ������� �����, ����� �� �������������',
   '�� ����� �������.',
   	'�a ������������ �� ���������� �� ������� �� ��������',
   ' �������� � �������� �� "����� � ������� ���������������',
   ' �� ��������", �� ������������ "�������� �����".'};
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

