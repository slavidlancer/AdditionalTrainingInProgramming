function [ret,x0,str,ts,xts]=slavi4(t,x,u,flag);
%SLAVI4	is the M-file description of the SIMULINK system named SLAVI4.
%	The block-diagram can be displayed by typing: SLAVI4.
%
%	SYS=SLAVI4(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI4 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI4 with a FLAG of zero:
%	[SIZES]=SLAVI4([],[],[],0),  returns a vector, SIZES, which
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
     set_param(sys,'Location',[3,55,1010,730])
     open_system(sys)
end;
set_param(sys,'algorithm',     'RK-45')
set_param(sys,'Start time',    '0')
set_param(sys,'Stop time',     '0.9')
set_param(sys,'Min step size', '0.01')
set_param(sys,'Max step size', '0.01')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn1'])
set_param([sys,'/','Transfer Fcn1'],...
		'Numerator','[3 1]',...
		'Denominator','[0.2 0]',...
		'position',[255,115,300,155])

add_block('built-in/Sum',[sys,'/','Sum4'])
set_param([sys,'/','Sum4'],...
		'inputs','-+',...
		'position',[175,125,195,145])

add_block('built-in/Step Fcn',[sys,'/','Step Input2'])
set_param([sys,'/','Step Input2'],...
		'Time','0',...
		'After','220',...
		'position',[70,130,90,150])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn2'])
set_param([sys,'/','Transfer Fcn2'],...
		'Numerator','[0 2]',...
		'Denominator','[0.05 1]',...
		'position',[360,108,415,162])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn3'])
set_param([sys,'/','Transfer Fcn3'],...
		'Numerator','[0 0.5]',...
		'Denominator','[3 1]',...
		'position',[465,109,520,161])


%     Subsystem  'Graph'.

new_system([sys,'/','Graph'])
set_param([sys,'/','Graph'],'Location',[0,59,274,252])

add_block('built-in/Inport',[sys,'/','Graph/x'])
set_param([sys,'/','Graph/x'],...
		'position',[65,55,85,75])

add_block('built-in/S-Function',[sys,'/',['Graph/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Graph/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfuny',...
		'parameters','ax, color,dt',...
		'position',[130,55,180,75])
add_line([sys,'/','Graph'],[90,65;125,65])
set_param([sys,'/','Graph'],...
		'Mask Display','plot(0,0,100,100,[90,10,10,10,90,90,10],[65,65,90,40,40,90,90],[90,78,69,54,40,31,25,10],[77,60,48,46,56,75,81,84])',...
		'Mask Type','Graph scope.')
set_param([sys,'/','Graph'],...
		'Mask Dialogue','Graph scope using MATLAB graph window.\nEnter plotting ranges and line type.|Time range:|y-min:|y-max:|Line type (rgbw-:*). Seperate each plot by ''/'':')
set_param([sys,'/','Graph'],...
		'Mask Translate','color = @4; ax = [0, @1, @2, @3]; dt = -1;')
set_param([sys,'/','Graph'],...
		'Mask Help','This block plots to the MATLAB graph window and can be used as an improved version of the Scope block. Look at the m-file sfuny.m to see how it works. This block can take scalar or vector input signal.')
set_param([sys,'/','Graph'],...
		'Mask Entries','0.45\/0\/225\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block 'Graph'.

set_param([sys,'/','Graph'],...
		'position',[645,196,675,234])

add_block('built-in/Mux',[sys,'/','Mux'])
set_param([sys,'/','Mux'],...
		'inputs','2',...
		'position',[555,196,585,229])
add_line(sys,[200,135;250,135])
add_line(sys,[95,140;170,140])
add_line(sys,[305,135;355,135])
add_line(sys,[420,135;460,135])
add_line(sys,[525,135;535,130;535,105;155,105;155,130;170,130])
add_line(sys,[95,140;120,140;120,220;550,220])
add_line(sys,[525,135;525,205;550,205])
add_line(sys,[590,215;640,215])
add_line(sys,[525,135;570,135])

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
