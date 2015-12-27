%CMDLNEND Cleans up after command line demos called after CMDLNBGN.
%
%   See also DEMO, CMDLNBGN

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.5 $  $Date: 1997/11/21 23:25:20 $

oldFigNumber=findobj('Type', 'figure', 'Name', 'Command Line Demos');
watchoff(oldFigNumber);
