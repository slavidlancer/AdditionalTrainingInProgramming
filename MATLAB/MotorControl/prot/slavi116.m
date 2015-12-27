function [ret,x0,str,ts,xts]=slavi113(t,x,u,flag);
%SLAVI113	is the M-file description of the SIMULINK system named SLAVI113.
%	The block-diagram can be displayed by typing: SLAVI113.
%
%	SYS=SLAVI113(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI113 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI113 with a FLAG of zero:
%	[SIZES]=SLAVI113([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Stop time',     '5')
set_param(sys,'Min step size', '0.001')
set_param(sys,'Max step size', '0.001')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Sum',[sys,'/','Sum1'])
set_param([sys,'/','Sum1'],...
		'inputs','-+',...
		'position',[380,185,400,205])

add_block('built-in/Gain',[sys,'/','Gain7'])
set_param([sys,'/','Gain7'],...
		'Gain','1.97',...
		'position',[540,179,595,211])


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
		'Mask Entries','5\/-10\/10\/20000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph2'].

set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'position',[785,175,815,215])

add_block('built-in/Integrator',[sys,'/','Integrator'])
set_param([sys,'/','Integrator'],...
		'position',[720,185,740,205])

add_block('built-in/Sum',[sys,'/','Sum'])
set_param([sys,'/','Sum'],...
		'position',[330,190,350,210])

add_block('built-in/Relay',[sys,'/','Relay1'])
set_param([sys,'/','Relay1'],...
		'On_switch_value','-50',...
		'Off_switch_value','-50',...
		'On_output_value','0',...
		'Off_output_value','-220',...
		'position',[230,238,260,262])

add_block('built-in/Relay',[sys,'/','Relay'])
set_param([sys,'/','Relay'],...
		'On_switch_value','50',...
		'Off_switch_value','50',...
		'On_output_value','220',...
		'position',[230,123,260,147])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn10'])
set_param([sys,'/','Transfer Fcn10'],...
		'Denominator','[4 0]',...
		'position',[620,175,660,215])

add_block('built-in/Step Fcn',[sys,'/','Step Input4'])
set_param([sys,'/','Step Input4'],...
		'Time','0',...
		'After','200',...
		'position',[80,185,100,205])

add_block('built-in/Gain',[sys,'/','Gain8'])
set_param([sys,'/','Gain8'],...
		'orientation',2,...
		'Gain','1.97',...
		'position',[510,95,570,125])


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
		'Mask Entries','-200\/200\/0\/120\/')


%     Finished composite block 'XY Graph'.

set_param([sys,'/','XY Graph'],...
		'position',[745,461,775,499])

add_block('built-in/Sum',[sys,'/','Sum2'])
set_param([sys,'/','Sum2'],...
		'inputs','+-',...
		'position',[150,190,170,210])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn9'])
set_param([sys,'/','Transfer Fcn9'],...
		'Numerator','[3.049]',...
		'Denominator','[0.088 1]',...
		'position',[445,178,505,212])
add_line(sys,[510,195;535,195])
add_line(sys,[665,195;715,195])
add_line(sys,[745,195;780,195])
add_line(sys,[265,135;290,135;290,195;325,195])
add_line(sys,[265,250;290,250;290,205;325,205])
add_line(sys,[355,200;375,200])
add_line(sys,[405,195;440,195])
add_line(sys,[600,195;615,195])
add_line(sys,[505,110;355,110;355,190;375,190])
add_line(sys,[665,195;675,195;675,110;575,110])
add_line(sys,[105,195;145,195])
add_line(sys,[745,195;755,195;755,320;135,320;145,205])
add_line(sys,[175,200;195,200;195,135;225,135])
add_line(sys,[175,200;195,200;195,250;225,250])
add_line(sys,[665,195;695,195;695,490;740,490])
add_line(sys,[175,200;175,290;450,290;450,470;740,470])

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
