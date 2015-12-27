function [ret,x0,str,ts,xts]=slavi15(t,x,u,flag);
%SLAVI15	is the M-file description of the SIMULINK system named SLAVI15.
%	The block-diagram can be displayed by typing: SLAVI15.
%
%	SYS=SLAVI15(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI15 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI15 with a FLAG of zero:
%	[SIZES]=SLAVI15([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Stop time',     '4')
set_param(sys,'Min step size', '0.01')
set_param(sys,'Max step size', '0.01')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Gain',[sys,'/','Gain4'])
set_param([sys,'/','Gain4'],...
		'Gain','1.967',...
		'position',[335,125,395,155])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn3'])
set_param([sys,'/','Transfer Fcn3'],...
		'Numerator','[3.049]',...
		'Denominator','[0.08 1]',...
		'position',[250,123,310,157])

add_block('built-in/Sum',[sys,'/','Sum3'])
set_param([sys,'/','Sum3'],...
		'inputs','-+',...
		'position',[185,130,205,150])

add_block('built-in/Step Fcn',[sys,'/','Step Input3'])
set_param([sys,'/','Step Input3'],...
		'Time','0',...
		'After','220',...
		'position',[105,135,125,155])

add_block('built-in/Gain',[sys,'/','Gain3'])
set_param([sys,'/','Gain3'],...
		'orientation',2,...
		'Gain','1.967',...
		'position',[205,40,285,70])

add_block('built-in/Sum',[sys,'/','Sum2'])
set_param([sys,'/','Sum2'],...
		'inputs','+-',...
		'position',[415,135,435,155])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn2'])
set_param([sys,'/','Transfer Fcn2'],...
		'Denominator','[1.65 0]',...
		'position',[490,127,525,163])

add_block('built-in/Step Fcn',[sys,'/','Step Input2'])
set_param([sys,'/','Step Input2'],...
		'Time','2',...
		'After','2*84.581',...
		'position',[380,200,400,220])


%     Subsystem  'Graph3'.

new_system([sys,'/','Graph3'])
set_param([sys,'/','Graph3'],'Location',[0,59,274,252])

add_block('built-in/S-Function',[sys,'/',['Graph3/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Graph3/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfuny',...
		'parameters','ax, color,dt',...
		'position',[130,55,180,75])

add_block('built-in/Inport',[sys,'/','Graph3/x'])
set_param([sys,'/','Graph3/x'],...
		'position',[65,55,85,75])
add_line([sys,'/','Graph3'],[90,65;125,65])
set_param([sys,'/','Graph3'],...
		'Mask Display','plot(0,0,100,100,[90,10,10,10,90,90,10],[65,65,90,40,40,90,90],[90,78,69,54,40,31,25,10],[77,60,48,46,56,75,81,84])',...
		'Mask Type','Graph scope.')
set_param([sys,'/','Graph3'],...
		'Mask Dialogue','Graph scope using MATLAB graph window.\nEnter plotting ranges and line type.|Time range:|y-min:|y-max:|Line type (rgbw-:*). Seperate each plot by ''/'':')
set_param([sys,'/','Graph3'],...
		'Mask Translate','color = @4; ax = [0, @1, @2, @3]; dt = -1;')
set_param([sys,'/','Graph3'],...
		'Mask Help','This block plots to the MATLAB graph window and can be used as an improved version of the Scope block. Look at the m-file sfuny.m to see how it works. This block can take scalar or vector input signal.')
set_param([sys,'/','Graph3'],...
		'Mask Entries','4\/-30\/430\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block 'Graph3'.

set_param([sys,'/','Graph3'],...
		'position',[360,246,390,284])


%     Subsystem  'Graph2'.

new_system([sys,'/','Graph2'])
set_param([sys,'/','Graph2'],'Location',[0,59,274,252])

add_block('built-in/S-Function',[sys,'/',['Graph2/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Graph2/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfuny',...
		'parameters','ax, color,dt',...
		'position',[130,55,180,75])

add_block('built-in/Inport',[sys,'/','Graph2/x'])
set_param([sys,'/','Graph2/x'],...
		'position',[65,55,85,75])
add_line([sys,'/','Graph2'],[90,65;125,65])
set_param([sys,'/','Graph2'],...
		'Mask Display','plot(0,0,100,100,[90,10,10,10,90,90,10],[65,65,90,40,40,90,90],[90,78,69,54,40,31,25,10],[77,60,48,46,56,75,81,84])',...
		'Mask Type','Graph scope.')
set_param([sys,'/','Graph2'],...
		'Mask Dialogue','Graph scope using MATLAB graph window.\nEnter plotting ranges and line type.|Time range:|y-min:|y-max:|Line type (rgbw-:*). Seperate each plot by ''/'':')
set_param([sys,'/','Graph2'],...
		'Mask Translate','color = @4; ax = [0, @1, @2, @3]; dt = -1;')
set_param([sys,'/','Graph2'],...
		'Mask Help','This block plots to the MATLAB graph window and can be used as an improved version of the Scope block. Look at the m-file sfuny.m to see how it works. This block can take scalar or vector input signal.')
set_param([sys,'/','Graph2'],...
		'Mask Entries','4\/0\/120\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block 'Graph2'.

set_param([sys,'/','Graph2'],...
		'position',[610,126,640,164])
add_line(sys,[530,145;605,145])
add_line(sys,[315,140;330,140;330,265;355,265])
add_line(sys,[405,210;415,210;415,190;395,190;395,150;410,150])
add_line(sys,[530,145;530,55;290,55])
add_line(sys,[400,140;410,140])
add_line(sys,[200,55;160,55;160,135;180,135])
add_line(sys,[130,145;180,145])
add_line(sys,[210,140;245,140])
add_line(sys,[315,140;330,140])
add_line(sys,[440,145;485,145])

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
