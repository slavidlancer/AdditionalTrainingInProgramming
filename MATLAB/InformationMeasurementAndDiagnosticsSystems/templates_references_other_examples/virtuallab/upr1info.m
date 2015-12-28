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
matList(n).Name=' ����������� ����������';
matList(n).Type='MATLAB';
matList(n).Help= {...           
      ' ����������:'
   '1. ���������� ����;'
   '2. ��� �� ������������� ����������;'
   '3. ����� �� ���������� �� ������������� ����������;'};
matList(n).DemoList={
   '���������� ' ,
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
matList(n).Name='��������';
matList(n).Type='MATLAB';
matList(n).Help= {...            
      ' ������������� ���������� ������� �������� ��������.',
   '����� �� ���������� ������� �� �������� �� ������� ������ �����',
   '�� �������� ����� � ��������� ���� �����, ����� �� ������������ ��',
   '�� ����� �� ����������.',
   '�� �� ������� ������� �������� �� �������� ������ �������������',
   '�� � �������� � "������ ������ " �� ������������ "�������� �����".'};
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

