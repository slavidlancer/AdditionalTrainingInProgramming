function earthmap(action)
%EARTHMAP View Earth's topography

%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.10 $  $Date: 1997/12/06 00:10:37 $

if nargin==1
   fig = gcf;
   f = get(fig, 'UserData');
   switch action
   case 'contour'
      locselect(1,f)
   case 'image'
      locselect(2,f)
   case '3d'
      locselect(3,f)
   case 'close'
      close(f.fig);
   end
else
   locinitfig
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function locinitfig

load topo

bgcolor=[.8 .8 .8];
f.fig = figure('Tag','Earthmap','colormap',topomap1,'Color',bgcolor);

[x,y,z] = sphere(50);

%CREATE BUTTONS

labels = {
   '2-D Contour'
   '2-D Image'
   '3-D Pseudocolor'
   'Close'};
callbacks = {
   'earthmap contour'
   'earthmap image'
   'earthmap 3d'
   'earthmap close'};

button.units = 'normalized';
button.HorizontalAlignment = 'center';

rect = [.025 .02 .23 .07];
for i=1:size(labels,1)
   f.btn(i) = uicontrol(button                        ,...
                  'position'  ,rect+[(i-1)*.24 0 0 0] ,...
                  'string'    ,labels{i}              ,...
                  'callback'  ,callbacks{i}           );
end

%tells which axes should be visible
f.viz = {'on' ;'on'; 'off'};

hg.axes2.Xtick = [0 60 120 180 240 300 360];
hg.axes2.DataAspectRatio = [1 1 1];
hg.axes2.PlotBoxAspectRatioMode = 'auto';
hg.axes2.Ytick = [-90 -60 -30 0 30 60 90];
hg.axes2.Xlim = [0 360];
hg.axes2.Ylim = [-90 90];
hg.axes2.box = 'on';
hg.axes2.NextPlot = 'add';

%create contour plot
   f.ax(1) = axes(hg.axes2,'Tag','Contour');
   contour(0:359,-89:90,topo,[0 0],'b')
%create 2-d image plot
   f.ax(2) = axes(hg.axes2,'Tag','Image');
   image([0 360],[-90 90],topo,'Parent',f.ax(2), 'CDataMapping', 'scaled');
	
%create 3-d plot
   hg.axes3.DataAspectRatio = [1 1 1];
   hg.axes3.PlotBoxAspectRatioMode = 'auto';
   
   f.ax(3) = axes('Tag','3D','Visible','off', hg.axes3);
   
   mat.dull.AmbientStrength = 0.1;
   mat.dull.DiffuseStrength = 1;
   mat.dull.SpecularColorReflectance = .5; 
   mat.dull.SpecularExponent = 20;
   mat.dull.SpecularStrength = 1;
   f.surf = surface(x,y,z, ...
                  mat.dull, ...
                  'FaceColor','texture',...
                  'EdgeColor','none',...
                  'FaceLighting','phong',...
                  'Cdata',topo,...
                  'Parent',f.ax(3));
   f.lite(1) = light('position',[-1 0 1]);
   f.lite(2) = light('position',[-1.5 0.5 -0.5], 'color', [.6 .2 .2]);
   view(3) 
%create startup screen

   mytext={  'The topography data used in this demo is available from'
             'the National Geophysical Data Center, NOAA'
	     'US Department of Commerce under data announcement 88-MGG-02'
             ''
             ''
             ''
             'Select a view of the earth.'};

	f.text = uicontrol('style','text',...
               'string',mytext,...
               'HorizontalAlignment','center',...
               'units','normalized',...
               'position',[0 .3 1 .4],...
               'parent',f.fig,...
               'BackgroundColor',bgcolor);

%finish up
   locselect(4,f)
   set(f.fig,'UserData',f)

%END FUNCTION

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function locselect(i,f)

if i<4
  set(f.text,'Visible','off')
end
for j=1:3
   if j==i
      %Make axis children visible
      set(get(f.ax(j),'Children'),'Visible','on')
      set(f.ax(j),'Visible',f.viz{j})
   else	
      set(get(f.ax(j),'Children'),'Visible','off')
      set(f.ax(j),'Visible','off')
      set(f.btn(j),'Enable','on')
   end
end
