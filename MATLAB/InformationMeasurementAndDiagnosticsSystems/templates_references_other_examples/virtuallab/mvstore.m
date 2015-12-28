function mvstore(figNumber,movieData)
%MVSTORE This is a function that is used with the function XPMOVIE.
%   MVSTORE(figNumber,movieData) stores the movie in the variable 
%   movieData in the UserData of the figure figNumber for later 
%   use.

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.3 $  $Date: 1997/11/21 23:26:36 $

% On PCs with less than 16 colors movies will break.
if get(0,'ScreenDepth')<=4,
    computerType=computer;
    if strcmp(computerType(1:2),'PC'),
        disp(' Sorry, MATLAB require more than 16 colors for movies.');
        return
    end
end

if figNumber==0,
    movie(movieData,5);
else
    hndlList=get(figNumber,'UserData');
    movieAxHndl=hndlList(8);
    set(movieAxHndl,'UserData',movieData);
end
