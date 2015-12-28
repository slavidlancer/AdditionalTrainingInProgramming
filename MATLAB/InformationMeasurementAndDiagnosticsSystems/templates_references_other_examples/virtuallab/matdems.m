function matdems
%MATDEMS For setting up matrix computation demos from the MATLAB DEMO.

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.6 $  $Date: 1997/11/21 23:26:29 $

labelList=str2mat( ...
        'Matrix Eigenvalues', ...
        'Row Echelon Form', ...
        'Finite differences', ...
        'Finite elements');
cmptr=computer;
if length(cmptr) ~=4 | cmptr(1:4) ~= 'MAC2'
        labelList=str2mat(labelList, 'NASA airfoil');
end
nameList=str2mat( ...
        'eigmovie', ...
        'rrefmovie', ...
        'delsqdemo', ...
        'sepdemo');
if length(cmptr) ~=4 | cmptr(1:4) ~= 'MAC2'
        nameList=str2mat(nameList, 'airfoil');
end        

% The figure flag list is used to indicate whether or not a figure
% window is required by the demo
figureFlagList=[
        0
        0
        1
        1
        1];

% Airfoil is too big for the Student Edition
if isstudent
   labelList(5,:) = [];
   nameList(5,:) = [];
   figureFlagList(5) = [];
end

cmdlnwin(labelList,nameList,figureFlagList);
