function VirtualLab(action)

if nargin<1,
   action = 'showmatlab';
   fSelectCategory = 0;
   fCmdLine = 1;
else
   action = lower(action);
end;

indent = '      ';


% add switch for show events
categoryNames = {'Уpravnenie 1' 'Upravnenie 2' 'Uptavnenie 3' 'Upravnenie 4'};
 
if (nargin > 0)
   fCmdLine = 0;
   % strmatch will also match partial strings
   catMatch = strmatch(action, categoryNames);
   % should only match one of these
   % but take only the first anyway

   if ~isempty(catMatch)
      action = ['show' categoryNames{catMatch(1)}];
      fCmdLine = 1;  % calling from the command line or another GUI
   end
   fSelectCategory = (nargin==2);
end

chooseMsg = '';
clickMsg = '';

figHandles = allchild(0);
figH=findobj(figHandles, 'flat', 'Name', 'Virtual Lab Window', ...
   'Tag', 'demo');

if strcmp('rundemo',action)
   if figH
      LocalRunDemo(findobj(figH, 'Type', 'uicontrol', 'Tag', 'RunDemo'));
   end;
% ====================================
% Handle the SHOW events
elseif strmatch('show',action)
   
   if isempty(figH)
      VirtualLab initialize;
      figHandles = allchild(0);
      figH=findobj(figHandles, 'flat', 'Name', 'Virtual Lab Window', ...
         'Tag', 'demo');
      
      set(figH,'HandleVisibility','off');
   end;
   
   figure(figH);
   
   % because HandleVis is off, don't use gcf, use figH
   % get the global data
   param=get(figH,'UserData');
   
   % find ui controls
   % listboxes
   categoryListH = findobj(figH, ...
      'Type', 'uicontrol', 'Tag', 'CategoryListbox');
   index = get(categoryListH, 'UserData');
   primH = findobj(figH, 'Type','uicontrol','Tag','DemoListbox');
   textH = findobj(figH,'Type','uicontrol','Tag','AboutListbox');
   aboutTopics = get(textH, 'UserData');
   
   % buttons
   runBtn=findobj(figH, 'Type', 'uicontrol', 'Tag', 'RunDemo');
   closeBtn=findobj(figH, 'Type', 'uicontrol', 'Tag','return');
   
   catValue = get(categoryListH, 'Value');
   
   theTopic = index.topic(catValue);
   theCategory = index.category(catValue);
   
   if fCmdLine
      clickType = 'none';
   else
      clickType = get(figH,'SelectionType');
   end
   
   % support direct calls to each topic area
   
   
  topicList = param.topicList;

    switch action
   case 'showsimulink',
      theTopic = LocalGetTopic(topicList, 'Simulink', 1);
      incremListUpdate = 0;
   case 'showstateflow',
      theTopic = LocalGetTopic(topicList, 'Stateflow', 1);
      incremListUpdate = 0;
   case 'showtoolboxes',
      theTopic = LocalGetTopic(topicList, 'Toolboxes', 1);
      incremListUpdate = 0;
   case 'showblocksets',
      theTopic = LocalGetTopic(topicList, 'Blocksets', 1);
      incremListUpdate = 0;
   case 'showmatlab',
      theTopic = 1;
      incremListUpdate = 0;         
   otherwise
      incremListUpdate = 1;
   end
      %%%   
   %=====================================
   % Handle INITIALIZATION
   elseif strcmp(action,'initialize'),
   
   % POSITION AND CREATE FIGURE
   
   oldRootUnits = get(0,'Units');
   set(0, 'Units', 'points');
   pixfactor = 72/get(0,'screenpixelsperinch');
   
   figurePos=get(0,'DefaultFigurePosition');
   figurePos(3:4)=[560 420];
   figurePos = figurePos * pixfactor;
   
   % Make sure the title bar of the window isn't off the screen
   rootScreenSize = get(0,'ScreenSize');
   % (position is [x(from left) y(bottom edge from bottom) width height]
   
   % check left edge and right edge

      
   load dmbanner
   % loads banner, bannerMap, and figureColor
   
   figH=figure( ...
      'Name','Virtual Lab Window', ...
      'Units', 'points', ...
      'NumberTitle','off', ...
      'Visible','off', ...
      'IntegerHandle','off', ...
      'Resize','off', ...
      'Color', figureColor, ...
      'Colormap',bannerMap, ...
      'Position',figurePos, ...
		'Pointer','watch', ...
      'MenuBar','none', ... 
      'Tag', 'demo');

   % banner graphic
   
   % set graphic to true size and align with top of figure window
   [i, j] = size(banner);
   i = i*pixfactor;
   j = j*pixfactor;
   set(gca,'Units','points');
   p=get(gca,'Position');
   p(1:2)= [0 (figurePos(4)-i)];
   p(3:4)=[j i];
   set(gca, 'Position', p);
   bannerH = image(banner, 'Tag', 'banner');
   set(gca,'Units','normal');
   axis off;
   
   % put up a wait message temporarily
   waitPos = figurePos;
   waitPos(1:2) = [0 0];
   waitPos(4) = p(2);
   waitStr =  'Scanning the MATLAB path for demos...';
   a = axes;
   axis off;
   set(a, ...
      'Units', 'points', ...
      'Position', waitPos);
   
   waitH = text(.5, .7, waitStr);
   set(waitH, ...
      'HorizontalAlignment', 'center', ...
      'Color', [0 0 0], ...
      'FontSize', 14, ...
      'Tag', 'waittext');
   
   
   % Initialize  buttons and listboxes
   boxesNButtons = Localbuildpage(figH, chooseMsg);
   
   % when this precedes the Localbuildpage invocation,
   % the rest of the graphic disappears on UNIX (not PC)
   % make the figure visible
   set(figH, 'Visible', 'on','Pointer','watch');
   
   drawnow;
   % watchon here:
   % otherwise, watchon before drawnow puts up an I beam
   % with it around here, it's an arrow.
   
   % INITIALIZE CONTENT STRUCTURES
   
   matList = upr1info;

   % finddemo will automatically search for all Demos.m files on the path
   %[tbList, bsList] = finddemo;
   simExist = exist('upr2info.m','file');
   
   if simExist
      simList = upr2info;
   else
      simList = {};
   end

   sfExist = exist('upr3info.m','file');
   if sfExist
      sfList = {};
      sfList = upr3info;
   else
      sfList = {};
   end
   
   param.simExist=simExist;
   
   fourthExist = exist('upr4info.m','file');
   
   if fourthExist 
      fourthList = upr4info;
   else
      fourthList = {};
   end
   
   % the matlab stuff (should!) always be there
   nTopics=1;
   topicList{1}='Упражнение 1';
   pageList{1} = matList;
   
   if simExist & ~isempty(simList)
      nTopics=nTopics+1;       
      topicList{nTopics}='Упражнение 2';
      pageList{nTopics} = simList;
   end
   
   if sfExist & ~isempty(sfList)
      nTopics=nTopics+1;       
      topicList{nTopics}='Упражнение 3';
      pageList{nTopics} = sfList;
   end
   
   if fourthExist & ~isempty(fourthList)
      nTopics=nTopics+1;       
      topicList{nTopics}=' Упражнение 4';
      pageList{nTopics} = fourthList;
   end

   param.pageList = pageList;
   param.topicList = topicList;
   
   for iTopic = 1:nTopics
      nCategories = length({param.pageList{iTopic}.Name});
      topicList{iTopic} = ['+' topicList{iTopic}];
      for iCategory = 1:nCategories
         param.pageList{iTopic}(iCategory).Name ...
            = [indent param.pageList{iTopic}(iCategory).Name];
      end
   end
   
   % save this global data into the figure info
   set(figH,'UserData',param);
   
   categoryListH = findobj(figH, ...
      'Type', 'uicontrol', 'Tag', 'CategoryListbox');
   
   % make an index for the entries visible in the category list box    
   index.topic = [1:nTopics];
   index.category = zeros(1,nTopics);
   index.expanded = zeros(1,nTopics);
   
   set(categoryListH, ...
      'UserData', index, ...
      'String', topicList, ...
      'Value', 1);
   

   % allow resizing
   set(boxesNButtons, 'Units', 'normalized');
   
   % Initialization is now complete.
   set(waitH, 'Visible', 'off');
   
   set(boxesNButtons, 'Visible', 'on');
   drawnow;
   refresh;
   set(figH,'Pointer','arrow');
   
end;  % if strmatch(action ...



%====================================
function handleArray = Localbuildpage(figH, chooseMsg) 
%  build buttons and listboxes for each page 
%  Kelly Liu 6-12-96
%  jae Roh 9-18-96

%====================================
% alternative geometry for the boxes and the buttons
% jae Roh 9-12-96 


figureColor = get(figH, 'Color');    

%====================================
% pull out the geometry information

labelHt=16.8;

pixfactor = 72/get(0,'screenpixelsperinch');

aboutListPos = [210 199 320 123] * pixfactor;
demoListPos = [210 65 320 118] * pixfactor;
catListPos =[30 65 160 257] * pixfactor;

btnHt = 30;
closeBtnPos = [38 18 206 btnHt] * pixfactor;
runBtnPos = [303 18 206 btnHt] * pixfactor;

% build demo listbox
primH = uicontrol( ...
   'Style', 'list', ...
   'HorizontalAlignment','left', ...
   'Units', 'points', ...
   'Visible', 'off',...
   'BackgroundColor', [1 1 1], ...
   'Max', 2, ...
   'Value', [], ...
   'Enable', 'inactive', ...
   'Position', demoListPos, ...
   'Callback', 'demo showdemo', ...
   'String', chooseMsg, ...
   'Tag', 'DemoListbox');

% Set up category listbox
listH = uicontrol( ...
   'Style', 'list', ...
   'HorizontalAlignment','left', ...
   'Units','points', ...
   'Visible','off',...
   'BackgroundColor', [1 1 1], ...
   'Max', 1, ...
   'Value', 1, ...
   'Enable', 'on', ...
   'Position', catListPos, ...
   'Callback', 'demo showlist', ...
   'String', ' ', ...
   'Tag', 'CategoryListbox');

% create a listbox for displaying the 'about' information
textH = uicontrol( ...
   'Style', 'list', ...
   'HorizontalAlignment','left', ...
   'Units','points', ...
   'Visible','off',...
   'BackgroundColor', figureColor, ...
   'Min', 0, ...
   'Max', 2, ...
   'Value', [], ...
   'Enable', 'inactive', ...
   'Position', aboutListPos, ...
   'Callback', '', ...
   'String', ' ', ...
   'Tag', 'AboutListbox', ...
   'UserData', LocalLoadTopics);

% The close button
closeH = uicontrol( ...
   'Style', 'pushbutton', ...
   'Units', 'points', ...
   'Position', closeBtnPos, ...
   'String', 'Close', ...
   'Visible', 'off', ...
   'Tag', 'return', ...
   'Callback', 'close(gcbf)'); 

% The run button    
runH = uicontrol( ...
   'Style', 'pushbutton', ...
   'Units', 'points', ...
   'Position', runBtnPos, ...
   'String', 'Run', ...
   'Visible', 'off', ...
   'Enable', 'off', ...   
   'Tag', 'RunDemo', ...
   'Callback', 'demo rundemo'); 

handleArray = [runH closeH textH listH primH];


% =====================================
function aboutTopicArray = LocalLoadTopics

about1 ={...
      ' Линеен неврон ',
   '',
   'Най-опростеният модел на невронните мрежи има линейна',
   'aктивационна функция и е известна като невронна мрежа',
   'нa Widrow Hoff. Всеки входен сигнал се характеризира с',
   'активационна функция и когато тя е равна на 1 неврона',
   'се активира (възбужда).'};

about3 ={...
      '  Мрежи с обратно разпространение на грешката ',
   '',
   'Мрежите с обратно разпространени на грешката се прилагат',
   'при решаване на задачи с линейно неразделими класове.',
   'Алгоритъмът за обучението на тези мрежи е обобщение на',
   'делта правилото при еднослойните мрежи. '
   'Характерно за мрежите с обратно разпространение на грешката',
   'е, че потока на информация е в обратна посока при обучението.',
   'Мрежите могат да работят с биполярни, двоични и непрекъснати',
   'данни. Препоръчва се работа с биполярни.'};

about2= {...
      ' Перцептрон      ',
   '',
   'Перцептронът е нелинеен неврон, чиято активационна функция',
   'е ттвърдо ограничена и дава на изхода 0 или 1. Един перцептрон',
   'може да раздели пространството на две групи, според функцията',
   'на принадлежност на елементите. Два перцептрона могат да разделят',
   'пространството на четири зони с три групи елементи или две групи',
   'елементи, всяка от които е разположена в два подучастъка. Границата',
   'на решение за дадена мрежа се определя от входа, който дава изход',
   'нула на изхода на мрежата.'};

about4= {...
    'Самоорганизиращи се карти на Кохонен.',
    'Мрежи на Хопфилд.',
   '',
   'Едина от най-интересните области при невронните мрежи е самоорганизирането.',
   'Такива мрежи могат да се научат да разпознават връзки между различни входни',
   'данни и да променят изхода си в зависимост от това. Невроните, които се',
   'състезават за изходен сигнал се научават да разпознават групи от входни',
   'вектори. Характерно е, че близки неврони отговарят на подобни данни по',
   'сходен начин.',
   'Един от недостатъците на самоорганизираците се мрежи, е че някои неврони',
   'може никога да не спечелят, т.е. теглата при инициализация да са твърде далеч',
   'от всички входни вектори. Такива неврони се наричат мъртви-техните тегла не се',
   'променят и те никога не печелят. За да се поправи този недостатък, на такива',
   'неврони се задават различни уклони в сравнение с неврони, които често печелят.',
   'Самоорганизиращите се мрежи научават класификация на входни вектори в зависимост',
   'от това как са групирани във векторното пространство.'};

aboutTopicArray = {about1 about2 about3 about4 };

%=====================================
