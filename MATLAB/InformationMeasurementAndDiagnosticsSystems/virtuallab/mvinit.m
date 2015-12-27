function mvinit(figNumber,hlpStr)
%MVINIT Initialize the movie figure.
%   MVINIT(figNumber,hlpStr) interacts with the function 
%   XPMOVIE to implement the appropriate help text.

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:35 $

% If figNumber is zero, the demo will run without the GUI shell.
if figNumber==0,
    % figNumber==0 means we're running from the command line.
    clc
    disp(' ');
    disp(hlpStr);
    disp(' ');

else
    figure(figNumber);
    hndlList=get(figNumber,'UserData');

    infoHndl=hndlList(6);
    set(infoHndl,'UserData',hlpStr);

end    % if figNumber==0 ...
