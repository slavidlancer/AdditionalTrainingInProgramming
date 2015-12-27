function out = odedemo(action)
%ODEDEMO Demo for the ODE suite integrators.

%   Mark W. Reichelt and Lawrence F. Shampine, 7-21-94
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 1.10 $  $Date: 1997/11/21 23:26:41 $

if nargout == 1
  out = 0;
end

if nargin < 1,
  action = 'initialize';
end;

if strcmp(action,'initialize') ;
  %===================================
  % Initialize the whole figure...
  pos = get(0,'DefaultFigurePosition');
  pos = [pos(1) pos(2)-40 560 460];
  figNumber = figure('Name','ODEDEMO', ...
                     'NumberTitle','off', ...
                     'Position',pos, ...
                     'Visible','off', ...
                     'BackingStore','off');
  defaultAxesPos = [0.10 0.10 0.65 0.8];
  set(figNumber,'DefaultAxesPosition',defaultAxesPos);

  %===================================
  % Set up the axes
  axHndl = axes('Units','normalized', ...
                'Visible','off');

  text(0,0,'Press the "Start" button to see an ODE solver in action', ...
      'HorizontalAlignment','center');
  text(0,-1,'(the first four ODE files are non-stiff, the rest are stiff)', ...
      'HorizontalAlignment','center');
  axis([-1 1 -1 1]);

  %====================================
  % Information for all buttons
  top = 0.97;
  bottom = 0.03;
  left = 0.81;
  right = 0.97;
  btnWid = right-left;
  btnHt = 0.08;
  popHt = 0.11;
  spacing = 0.04;       % Spacing between button and next command's label

  %====================================
  % The CONSOLE frame
  frmColor = get(0,'DefaultUicontrolBackgroundColor');
  frmBorder = 0.015;
  yPos = bottom-frmBorder;
  frmPos = [left-frmBorder yPos btnWid+2*frmBorder (top-bottom)+2*frmBorder];
  h = uicontrol('Style','frame', ...
                'Units','normalized', ...
                'Position',frmPos, ...
                'BackgroundColor',frmColor);
  
  %====================================
  % The START button
  yPos = top - btnHt;
  labelStr = 'Start';
  callbackStr = 'odedemo start';

  % Generic button information
  btnPos = [left yPos btnWid btnHt];
  startHndl = uicontrol('Style','pushbutton', ...
                        'Units','normalized', ...
                        'Position',btnPos, ...
                        'String',labelStr, ...
                        'Interruptible','on', ...
                        'Callback',callbackStr, ...
                        'Tag','start');

  %====================================
  % The METHODS popup button
  yPos = yPos - popHt - spacing;
  textStr = 'Method';
  popupStr = 'ode45|ode23|ode113|ode15s|ode23s';
  callbackStr = 'odedemo fixrefine';
    
  % Generic button information
  btnPos1 = [left yPos+0.5*popHt btnWid 0.5*popHt];
  btnPos2 = [left yPos btnWid 0.5*popHt];
  hndl = uicontrol('Style','text', ...
                   'Units','normalized', ...
                   'Position',btnPos1, ...
                   'String',textStr, ...
                   'BackgroundColor',frmColor, ...
                   'ForegroundColor','w', ...
                   'HorizontalAlignment','left');
  methodHndl = uicontrol('Style','popup', ...
                         'Units','normalized', ...
                         'Position',btnPos2, ...
                         'String',popupStr, ...
                         'Userdata',0, ...
                         'Tag','method', ...
                         'Callback',callbackStr);

  %====================================
  % The ODEFILE popup button
  yPos = yPos - popHt - spacing;
  textStr = 'ODE file';
  popupStr = odedemo('odefile');
  callbackStr = 'odedemo fixoutput';
    
  % Generic button information
  btnPos1 = [left yPos+0.5*popHt btnWid 0.5*popHt];
  btnPos2 = [left yPos btnWid 0.5*popHt];
  hndl = uicontrol('Style','text', ...
                   'Units','normalized', ...
                   'Position',btnPos1, ...
                   'String',textStr, ...
                   'BackgroundColor',frmColor, ...
                   'ForegroundColor','w', ...
                   'HorizontalAlignment','left');
  odefileHndl = uicontrol('Style','popup', ...
                       'Units','normalized', ...
                       'Position',btnPos2, ...
                       'String',popupStr, ...
                       'Userdata',0, ...
                       'HorizontalAlignment','center', ...
                       'Tag','odefile', ...
                       'Callback',callbackStr);

  %====================================
  % The OUTPUT popup button
  yPos = yPos - popHt - spacing;
  textStr = 'Output';
  popupStr = 'plot|phase2d|phase3d';
    
  % Generic button information
  btnPos1 = [left yPos+0.5*popHt btnWid 0.5*popHt];
  btnPos2 = [left yPos btnWid 0.5*popHt];
  hndl = uicontrol('Style','text', ...
                   'Units','normalized', ...
                   'Position',btnPos1, ...
                   'String',textStr, ...
                   'BackgroundColor',frmColor, ...
                   'ForegroundColor','w', ...
                   'HorizontalAlignment','left');
  outputHndl = uicontrol('Style','popup', ...
                         'Units','normalized', ...
                         'Position',btnPos2, ...
                         'String',popupStr, ...
                         'Userdata',0, ...
                         'Tag','output');

  %====================================
  % The REFINE button
  yPos = yPos - popHt - spacing;
  textStr = 'Refine';
  popupStr = '1|2|3|4';
    
  % Generic button information
  btnPos1 = [left yPos+0.5*popHt btnWid 0.5*popHt];
  btnPos2 = [left yPos btnWid 0.5*popHt];
  hndl = uicontrol('Style','text', ...
                   'Units','normalized', ...
                   'Position',btnPos1, ...
                   'String',textStr, ...
                   'BackgroundColor',frmColor, ...
                   'ForegroundColor','w', ...
                   'HorizontalAlignment','left');
  refineHndl = uicontrol('Style','popup', ...
                         'Units','normalized', ...
                         'Position',btnPos2, ...
                         'String',popupStr, ...
                         'Value',4, ... % because ode45 is default method
                         'Tag','refine');

  %====================================
  % The CLOSE button
  labelStr = 'Close';
  callbackStr = 'close(gcf)';
  closeHndl = uicontrol('Style','pushbutton', ...
                        'Units','normalized', ...
                        'Position',[left bottom btnWid btnHt], ...
                        'String',labelStr, ...
                        'Callback',callbackStr, ...
                        'Tag','close');
                    
  set(figNumber, 'Visible','on');

elseif strcmp(action,'odefile')
  out = [
      'orbitode'
      'orbt2ode'
      'rigidode'
      'vdpode  '
      'a2ode   '
      'a3ode   '
      'b5ode   '
      'buiode  '
      'chm6ode '
      'chm7ode '
      'chm9ode '
      'd1ode   '
      'gearode '
      'hb1ode  '
      'hb3ode  '
%      'vdpode  '
    ];

elseif strcmp(action,'fixoutput')
  h = get(gcf,'Children');
  odefileHndl = findobj(h,'flat','Tag','odefile');
  outputHndl = findobj(h,'flat','Tag','output');
  odefiles = odedemo('odefile');
  j = get(odefileHndl,'Value');
  odefile = odefiles(j,:);
  odefile(odefile == ' ') = [];
  [tspan,y0,options] = feval(odefile,[],[],'init');
  ny = length(y0);
  if ny == 1
    set(outputHndl,'Value',1,'String','plot');
  elseif ny == 2
    set(outputHndl,'Value',1,'String','plot|phase2d');
  elseif ny >= 3
    set(outputHndl,'Value',1,'String','plot|phase2d|phase3d');
  end

elseif strcmp(action,'fixrefine')
  h = get(gcf,'Children');
  methodHndl = findobj(h,'flat','Tag','method');
  refineHndl = findobj(h,'flat','Tag','refine');
  j = get(methodHndl,'Value');
  if j == 1                             % ode45
    set(refineHndl,'Value',4);
  else
    set(refineHndl,'Value',1);
  end

elseif strcmp(action,'start')
  figNumber = watchon;
  
  h = get(figNumber,'Children');

  startHndl = findobj(h,'flat','Tag','start');
  methodHndl = findobj(h,'flat','Tag','method');
  odefileHndl = findobj(h,'flat','Tag','odefile');
  outputHndl = findobj(h,'flat','Tag','output');
  refineHndl = findobj(h,'flat','Tag','refine');
  closeHndl = findobj(h,'flat','Tag','close');
  
  set([startHndl closeHndl],'Enable','off');
  ud = get(figNumber,'UserData');
  if isempty(ud)
    status = 0;
  else
    status = ud.stop;                   % was the stop button pushed?
  end
  ud.stop = 0;                          % reset the stop status
  set(figNumber,'UserData',ud);
  drawnow;

  i = get(methodHndl,'Value');
  j = get(odefileHndl,'Value');
  k = get(outputHndl,'Value');
  
  % keep the same axis limits if same odefile and same output
  if j == get(odefileHndl,'Userdata') & ....
        k == get(outputHndl,'Userdata') & ~status
    if (k == 1) | (k == 2)              % if zoom is on (not phas3d)
      set(gca,'XLimMode','auto','YLimMode','auto');
    end
 
    a = axis;
    cla;
    axis(a);
    hold on;
  end

  if i == 1
    method = 'ode45';
  elseif i == 2
    method = 'ode23';
  elseif i == 3
    method = 'ode113';
  elseif i == 4
    method = 'ode15s';
  elseif i == 5
    method = 'ode23s';
  end
  
  odefiles = odedemo('odefile');
  odefile = odefiles(j,:);
  odefile(odefile == ' ') = [];
  [tspan,y0,options] = feval(odefile,[],[],'init');

  if k == 1
    options = odeset(options,'OutputFcn','odeplot');
    if get(outputHndl,'Userdata') == 3
      rotate3d off;
    end
  elseif k == 2
    options = odeset(options,'OutputFcn','odephas2');
    if get(outputHndl,'Userdata') == 3
      rotate3d off;
    end
  elseif k == 3
    options = odeset(options,'OutputFcn','odephas3');
    if get(outputHndl,'Userdata') ~= 3
      zoom off;
    end
  end

  options = odeset(options,'Refine',get(refineHndl,'Value'));

  watchoff(figNumber);
  
  feval(method,odefile,tspan,y0,options);
  if ishold
    hold off;
    % Now that hold is off, clean up the output function 'done' call.
    set(findobj(gcf,'Tag','stop'),'Visible','off');
    if k == 1
      set(gca,'XLimMode','auto');
    end
  end
  
  if (k == 1) | (k == 2)
    zoom on;
  else
    rotate3d on;
  end
  
  % remember the last output generated
  set(methodHndl,'Userdata',i);
  set(odefileHndl,'Userdata',j);
  set(outputHndl,'Userdata',k);

  % ====== End of Demo
  set([startHndl closeHndl],'Enable','on');

end
