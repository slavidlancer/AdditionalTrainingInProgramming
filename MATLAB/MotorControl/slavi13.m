function [ret,x0,str,ts,xts]=slavi13(t,x,u,flag);
%SLAVI13	is the M-file description of the SIMULINK system named SLAVI13.
%	The block-diagram can be displayed by typing: SLAVI13.
%
%	SYS=SLAVI13(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI13 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI13 with a FLAG of zero:
%	[SIZES]=SLAVI13([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Start time',    '0.0')
set_param(sys,'Stop time',     '2')
set_param(sys,'Min step size', '0.01')
set_param(sys,'Max step size', '0.1')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Gain',[sys,'/','Gain1'])
set_param([sys,'/','Gain1'],...
		'Gain','1.967',...
		'position',[325,217,350,243])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn'])
set_param([sys,'/','Transfer Fcn'],...
		'Numerator','[3.049]',...
		'Denominator','[0.08 1]',...
		'position',[240,213,300,247])

add_block('built-in/Sum',[sys,'/','Sum'])
set_param([sys,'/','Sum'],...
		'inputs','-+',...
		'position',[175,220,195,240])

add_block('built-in/Step Fcn',[sys,'/','Step Input'])
set_param([sys,'/','Step Input'],...
		'Time','0',...
		'After','220',...
		'position',[95,225,115,245])

add_block('built-in/Gain',[sys,'/','Gain2'])
set_param([sys,'/','Gain2'],...
		'orientation',2,...
		'Gain','1.967',...
		'position',[245,130,275,160])

add_block('built-in/Sum',[sys,'/','Sum1'])
set_param([sys,'/','Sum1'],...
		'inputs','+-',...
		'position',[405,225,425,245])

add_block('built-in/Step Fcn',[sys,'/','Step Input1'])
set_param([sys,'/','Step Input1'],...
		'Time','0',...
		'After','0',...
		'position',[670,300,690,320])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn4'])
set_param([sys,'/','Transfer Fcn4'],...
		'Denominator','[2 0]',...
		'position',[785,217,820,253])

add_block('built-in/Sum',[sys,'/','Sum3'])
set_param([sys,'/','Sum3'],...
		'inputs','+-',...
		'position',[720,225,740,245])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer F'])
set_param([sys,'/','Transfer F'],...
		'Numerator','[2000]',...
		'Denominator','[1 0]',...
		'position',[625,212,660,248])

add_block('built-in/Sum',[sys,'/','Sum2'])
set_param([sys,'/','Sum2'],...
		'inputs','-+',...
		'position',[560,220,580,240])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn1'])
set_param([sys,'/','Transfer Fcn1'],...
		'Denominator','[1.65 0]',...
		'position',[480,217,515,253])


%     Subsystem  ['Auto-Scale',13,'Graph'].

new_system([sys,'/',['Auto-Scale',13,'Graph']])
set_param([sys,'/',['Auto-Scale',13,'Graph']],'Location',[0,59,274,252])

add_block('built-in/Inport',[sys,'/',['Auto-Scale',13,'Graph/x']])
set_param([sys,'/',['Auto-Scale',13,'Graph/x']],...
		'position',[65,55,85,75])

add_block('built-in/S-Function',[sys,'/',['Auto-Scale',13,'Graph/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Auto-Scale',13,'Graph/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunyst',...
		'parameters','ax, color, npts, dt',...
		'position',[130,55,180,75])
add_line([sys,'/',['Auto-Scale',13,'Graph']],[90,65;125,65])
set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'Mask Display','plot(0,0,100,100,[83,76,63,52,42,38,28,16,11,84,11,11,11,90,90,11],[75,58,47,54,72,80,84,74,65,65,65,90,40,40,90,90])',...
		'Mask Type','Storage scope.')
set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'Mask Dialogue','Storage scope using MATLAB graph window.\nEnter plotting ranges and line type.|Initial Time Range:|Initial y-min:|Initial y-max:|Storage pts.:|Line type (rgbw-.:xo):')
set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'Mask Translate','npts = @4; color = @5; ax = [0, @1, @2, @3]; dt=-1;')
set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'Mask Help','This block uses a MATLAB figure window to plot the input signal.  The graph limits are automatically scaled to the min and max values of the signal stored in the scope''s signal buffer.  Line type must be in quotes.  See the M-file sfunyst.m.')
set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'Mask Entries','1\/-10\/10\/4000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph'].

set_param([sys,'/',['Auto-Scale',13,'Graph']],...
		'position',[870,360,900,400])
add_line(sys,[430,235;475,235])
add_line(sys,[520,235;555,235])
add_line(sys,[745,235;780,235])
add_line(sys,[305,230;320,230])
add_line(sys,[200,230;235,230])
add_line(sys,[120,235;170,235])
add_line(sys,[665,230;715,230])
add_line(sys,[695,310;700,310;700,240;715,240])
add_line(sys,[240,145;150,145;150,225;170,225])
add_line(sys,[825,235;835,235;835,195;540,195;540,225;555,225])
add_line(sys,[585,230;620,230])
add_line(sys,[355,230;400,230])
add_line(sys,[665,230;675,230;675,280;385,280;385,240;400,240])
add_line(sys,[835,235;835,380;865,380])
add_line(sys,[520,235;530,235;530,145;280,145])

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
