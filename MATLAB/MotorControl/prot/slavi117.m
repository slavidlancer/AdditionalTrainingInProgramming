function [ret,x0,str,ts,xts]=slavi114(t,x,u,flag);
%SLAVI114	is the M-file description of the SIMULINK system named SLAVI114.
%	The block-diagram can be displayed by typing: SLAVI114.
%
%	SYS=SLAVI114(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI114 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI114 with a FLAG of zero:
%	[SIZES]=SLAVI114([],[],[],0),  returns a vector, SIZES, which
%	contains the sizes of the state vector and other parameters.
%		SIZES(1) number of states
%		SIZES(2) number of discrete states
%		SIZES(3) number of outputs
%		SIZES(4) number of inputs
%		SIZES(5) number of roots (currently unsupported)
%		SIZES(6) direct feedthrough flag
%		SIZES(7) number of sample times
%
%	For the definition of other parameters in SIZES, see SFUNC.
%	See also, TRIM, LINMOD, LINSIM, EULER, RK23, RK45, ADAMS, GEAR.

% Note: This M-file is only used for saving graphical information;
%       after the model is loaded into memory an internal model
%       representation is used.

% the system will take on the name of this mfile:
sys = mfilename;
new_system(sys)
simver(1.3)
if (0 == (nargin + nargout))
     set_param(sys,'Location',[0,46,1007,721])
     open_system(sys)
end;
set_param(sys,'algorithm',     'RK-45')
set_param(sys,'Start time',    '0')
set_param(sys,'Stop time',     '1.2')
set_param(sys,'Min step size', '0.001')
set_param(sys,'Max step size', '0.001')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Gain',[sys,'/','Gain10'])
set_param([sys,'/','Gain10'],...
		'orientation',2,...
		'Gain','1.97',...
		'position',[690,42,755,78])


%     Subsystem  ['',13,'Graph4'].

new_system([sys,'/',['',13,'Graph4']])
set_param([sys,'/',['',13,'Graph4']],'Location',[0,59,274,252])

add_block('built-in/S-Function',[sys,'/',['',13,'Graph4/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['',13,'Graph4/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunyst',...
		'parameters','ax, color, npts, dt',...
		'position',[130,55,180,75])

add_block('built-in/Inport',[sys,'/',['',13,'Graph4/x']])
set_param([sys,'/',['',13,'Graph4/x']],...
		'position',[65,55,85,75])
add_line([sys,'/',['',13,'Graph4']],[90,65;125,65])
set_param([sys,'/',['',13,'Graph4']],...
		'Mask Display','plot(0,0,100,100,[83,76,63,52,42,38,28,16,11,84,11,11,11,90,90,11],[75,58,47,54,72,80,84,74,65,65,65,90,40,40,90,90])',...
		'Mask Type','Storage scope.')
set_param([sys,'/',['',13,'Graph4']],...
		'Mask Dialogue','Storage scope using MATLAB graph window.\nEnter plotting ranges and line type.|Initial Time Range:|Initial y-min:|Initial y-max:|Storage pts.:|Line type (rgbw-.:xo):')
set_param([sys,'/',['',13,'Graph4']],...
		'Mask Translate','npts = @4; color = @5; ax = [0, @1, @2, @3]; dt=-1;')
set_param([sys,'/',['',13,'Graph4']],...
		'Mask Help','This block uses a MATLAB figure window to plot the input signal.  The graph limits are automatically scaled to the min and max values of the signal stored in the scope''s signal buffer.  Line type must be in quotes.  See the M-file sfunyst.m.')
set_param([sys,'/',['',13,'Graph4']],...
		'Mask Entries','1.2\/-10\/10\/200000\/''b-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['',13,'Graph4'].

set_param([sys,'/',['',13,'Graph4']],...
		'position',[635,250,665,290])

add_block('built-in/Gain',[sys,'/','Gain9'])
set_param([sys,'/','Gain9'],...
		'orientation',2,...
		'Gain','0.00075',...
		'position',[465,285,565,315])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn12'])
set_param([sys,'/','Transfer Fcn12'],...
		'Numerator','[22]',...
		'Denominator','[0.01 1]',...
		'position',[475,198,535,232])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn8'])
set_param([sys,'/','Transfer Fcn8'],...
		'orientation',2,...
		'Numerator','[0.12]',...
		'Denominator','[0.005 1]',...
		'position',[300,385,360,415])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn11'])
set_param([sys,'/','Transfer Fcn11'],...
		'orientation',2,...
		'Numerator','[155.04]',...
		'Denominator','[0.002 1]',...
		'position',[370,285,430,315])

add_block('built-in/Gain',[sys,'/','Gain8'])
set_param([sys,'/','Gain8'],...
		'orientation',2,...
		'Gain','0.75',...
		'position',[495,385,575,415])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn9'])
set_param([sys,'/','Transfer Fcn9'],...
		'Numerator','[3.049]',...
		'Denominator','[0.088 1]',...
		'position',[645,193,705,227])

add_block('built-in/Sum',[sys,'/','Sum6'])
set_param([sys,'/','Sum6'],...
		'inputs','-+',...
		'position',[585,200,605,220])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn13'])
set_param([sys,'/','Transfer Fcn13'],...
		'Numerator','[0.088 1]',...
		'Denominator','[0.187 0]',...
		'position',[395,198,455,232])

add_block('built-in/Sum',[sys,'/','Sum5'])
set_param([sys,'/','Sum5'],...
		'inputs','+-',...
		'position',[345,205,365,225])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn7'])
set_param([sys,'/','Transfer Fcn7'],...
		'Numerator','[18.75]',...
		'Denominator','[1]',...
		'position',[255,193,315,227])

add_block('built-in/Sum',[sys,'/','Sum4'])
set_param([sys,'/','Sum4'],...
		'inputs','+-',...
		'position',[215,200,235,220])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn10'])
set_param([sys,'/','Transfer Fcn10'],...
		'Denominator','[1.65 0]',...
		'position',[820,193,880,227])

add_block('built-in/Gain',[sys,'/','Gain7'])
set_param([sys,'/','Gain7'],...
		'Gain','1.97',...
		'position',[745,193,795,227])


%     Subsystem  ['Auto-Scale',13,'Graph2'].

new_system([sys,'/',['Auto-Scale',13,'Graph2']])
set_param([sys,'/',['Auto-Scale',13,'Graph2']],'Location',[0,59,274,252])

add_block('built-in/S-Function',[sys,'/',['Auto-Scale',13,'Graph2/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Auto-Scale',13,'Graph2/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunyst',...
		'parameters','ax, color, npts, dt',...
		'position',[130,55,180,75])

add_block('built-in/Inport',[sys,'/',['Auto-Scale',13,'Graph2/x']])
set_param([sys,'/',['Auto-Scale',13,'Graph2/x']],...
		'position',[65,55,85,75])
add_line([sys,'/',['Auto-Scale',13,'Graph2']],[90,65;125,65])
set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'Mask Display','plot(0,0,100,100,[83,76,63,52,42,38,28,16,11,84,11,11,11,90,90,11],[75,58,47,54,72,80,84,74,65,65,65,90,40,40,90,90])',...
		'Mask Type','Storage scope.')
set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'Mask Dialogue','Storage scope using MATLAB graph window.\nEnter plotting ranges and line type.|Initial Time Range:|Initial y-min:|Initial y-max:|Storage pts.:|Line type (rgbw-.:xo):')
set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'Mask Translate','npts = @4; color = @5; ax = [0, @1, @2, @3]; dt=-1;')
set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'Mask Help','This block uses a MATLAB figure window to plot the input signal.  The graph limits are automatically scaled to the min and max values of the signal stored in the scope''s signal buffer.  Line type must be in quotes.  See the M-file sfunyst.m.')
set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'Mask Entries','1.2\/-10\/10\/200000\/''b-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph2'].

set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'position',[1015,190,1045,230])

add_block('built-in/Integrator',[sys,'/','Integrator'])
set_param([sys,'/','Integrator'],...
		'position',[940,200,960,220])

add_block('built-in/Step Fcn',[sys,'/','Step Input3'])
set_param([sys,'/','Step Input3'],...
		'Time','0',...
		'After','200',...
		'position',[20,190,40,210])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn14'])
set_param([sys,'/','Transfer Fcn14'],...
		'Numerator','[0.388]',...
		'Denominator','[1]',...
		'position',[135,188,195,222])

add_block('built-in/Sum',[sys,'/','Sum8'])
set_param([sys,'/','Sum8'],...
		'inputs','+-',...
		'position',[80,195,100,215])


%     Subsystem  ['Auto-Scale',13,'Graph3'].

new_system([sys,'/',['Auto-Scale',13,'Graph3']])
set_param([sys,'/',['Auto-Scale',13,'Graph3']],'Location',[0,59,274,252])

add_block('built-in/Inport',[sys,'/',['Auto-Scale',13,'Graph3/x']])
set_param([sys,'/',['Auto-Scale',13,'Graph3/x']],...
		'position',[65,55,85,75])

add_block('built-in/S-Function',[sys,'/',['Auto-Scale',13,'Graph3/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Auto-Scale',13,'Graph3/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunyst',...
		'parameters','ax, color, npts, dt',...
		'position',[130,55,180,75])
add_line([sys,'/',['Auto-Scale',13,'Graph3']],[90,65;125,65])
set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'Mask Display','plot(0,0,100,100,[83,76,63,52,42,38,28,16,11,84,11,11,11,90,90,11],[75,58,47,54,72,80,84,74,65,65,65,90,40,40,90,90])',...
		'Mask Type','Storage scope.')
set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'Mask Dialogue','Storage scope using MATLAB graph window.\nEnter plotting ranges and line type.|Initial Time Range:|Initial y-min:|Initial y-max:|Storage pts.:|Line type (rgbw-.:xo):')
set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'Mask Translate','npts = @4; color = @5; ax = [0, @1, @2, @3]; dt=-1;')
set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'Mask Help','This block uses a MATLAB figure window to plot the input signal.  The graph limits are automatically scaled to the min and max values of the signal stored in the scope''s signal buffer.  Line type must be in quotes.  See the M-file sfunyst.m.')
set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'Mask Entries','1.2\/-10\/10\/200000\/''b-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph3'].

set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'position',[800,105,830,145])


%     Subsystem  'XY Graph'.

new_system([sys,'/','XY Graph'])
set_param([sys,'/','XY Graph'],'Location',[8,52,282,245])

add_block('built-in/Inport',[sys,'/','XY Graph/y'])
set_param([sys,'/','XY Graph/y'],...
		'Port','2',...
		'position',[10,100,30,120])

add_block('built-in/Inport',[sys,'/','XY Graph/x'])
set_param([sys,'/','XY Graph/x'],...
		'position',[10,30,30,50])

add_block('built-in/Mux',[sys,'/','XY Graph/Mux'])
set_param([sys,'/','XY Graph/Mux'],...
		'inputs','2',...
		'position',[100,61,130,94])

add_block('built-in/S-Function',[sys,'/',['XY Graph/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['XY Graph/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunxy',...
		'parameters','ax, st',...
		'position',[185,70,235,90])
add_line([sys,'/','XY Graph'],[35,110;70,110;70,85;95,85])
add_line([sys,'/','XY Graph'],[35,40;70,40;70,70;95,70])
add_line([sys,'/','XY Graph'],[135,80;180,80])
set_param([sys,'/','XY Graph'],...
		'Mask Display','plot(0,0,100,100,[12,91,91,12,12],[90,90,45,45,90],[51,57,65,75,80,79,75,67,60,54,51,48,42,34,28,27,31,42,51],[71,68,66,66,72,79,83,84,81,77,71,60,54,54,58,65,71,74,71])')
set_param([sys,'/','XY Graph'],...
		'Mask Type','XY scope.',...
		'Mask Dialogue','XY scope using MATLAB graph window.\nFirst input is used as time base.\nEnter plotting ranges.|x-min:|x-max:|y-min:|y-max:')
set_param([sys,'/','XY Graph'],...
		'Mask Translate','ax = [@1, @2, @3, @4];st=-1;',...
		'Mask Help','This block can be used to explore limit cycles. Look at the m-file sfunxy.m to see how it works.',...
		'Mask Entries','-220\/220\/-10\/800\/')


%     Finished composite block 'XY Graph'.

set_param([sys,'/','XY Graph'],...
		'position',[1030,481,1060,519])
add_line(sys,[490,400;365,400])
add_line(sys,[710,210;740,210])
add_line(sys,[460,300;435,300])
add_line(sys,[540,215;580,215])
add_line(sys,[685,60;545,60;545,205;580,205])
add_line(sys,[610,210;640,210])
add_line(sys,[710,210;720,210;720,300;570,300])
add_line(sys,[365,300;320,300;320,220;340,220])
add_line(sys,[460,215;470,215])
add_line(sys,[370,215;390,215])
add_line(sys,[295,400;200,400;210,215])
add_line(sys,[240,210;250,210])
add_line(sys,[885,210;905,210;905,60;760,60])
add_line(sys,[800,210;815,210])
add_line(sys,[710,210;720,210;720,125;795,125])
add_line(sys,[540,215;560,215;560,270;630,270])
add_line(sys,[320,210;340,210])
add_line(sys,[200,205;210,205])
add_line(sys,[105,205;130,205])
add_line(sys,[885,210;895,210;895,400;580,400])
add_line(sys,[885,210;935,210])
add_line(sys,[965,210;1010,210])
add_line(sys,[965,210;975,210;975,465;60,465;60,210;75,210])
add_line(sys,[45,200;75,200])
add_line(sys,[105,205;115,205;115,490;1025,490])
add_line(sys,[885,210;915,210;915,510;1025,510])

drawnow

% Return any arguments.
if (nargin | nargout)
	% Must use feval here to access system in memory
	if (nargin > 3)
		if (flag == 0)
			eval(['[ret,x0,str,ts,xts]=',sys,'(t,x,u,flag);'])
		else
			eval(['ret =', sys,'(t,x,u,flag);'])
		end
	else
		[ret,x0,str,ts,xts] = feval(sys);
	end
else
	drawnow % Flash up the model and execute load callback
end
