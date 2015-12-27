function [ret,x0,str,ts,xts]=slavi18(t,x,u,flag);
%SLAVI18	is the M-file description of the SIMULINK system named SLAVI18.
%	The block-diagram can be displayed by typing: SLAVI18.
%
%	SYS=SLAVI18(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI18 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI18 with a FLAG of zero:
%	[SIZES]=SLAVI18([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Stop time',     '2')
set_param(sys,'Min step size', '0.001')
set_param(sys,'Max step size', '0.001')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn7'])
set_param([sys,'/','Transfer Fcn7'],...
		'Numerator','[18.75]',...
		'Denominator','[1]',...
		'position',[190,193,250,227])

add_block('built-in/Gain',[sys,'/','Gain7'])
set_param([sys,'/','Gain7'],...
		'Gain','1.97',...
		'position',[710,193,760,227])

add_block('built-in/Sum',[sys,'/','Sum6'])
set_param([sys,'/','Sum6'],...
		'inputs','-+',...
		'position',[550,200,570,220])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn13'])
set_param([sys,'/','Transfer Fcn13'],...
		'Numerator','[0.088 1]',...
		'Denominator','[0.187 0]',...
		'position',[340,198,400,232])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn10'])
set_param([sys,'/','Transfer Fcn10'],...
		'Denominator','[1.65 0]',...
		'position',[790,193,850,227])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn9'])
set_param([sys,'/','Transfer Fcn9'],...
		'Numerator','[3.049]',...
		'Denominator','[0.088 1]',...
		'position',[610,193,670,227])

add_block('built-in/Gain',[sys,'/','Gain8'])
set_param([sys,'/','Gain8'],...
		'orientation',2,...
		'Gain','0.75',...
		'position',[460,385,540,415])

add_block('built-in/Sum',[sys,'/','Sum4'])
set_param([sys,'/','Sum4'],...
		'inputs','+-',...
		'position',[140,200,160,220])

add_block('built-in/Step Fcn',[sys,'/','Step Input3'])
set_param([sys,'/','Step Input3'],...
		'Time','0',...
		'After','10',...
		'position',[55,195,75,215])

add_block('built-in/Sum',[sys,'/','Sum5'])
set_param([sys,'/','Sum5'],...
		'inputs','+-',...
		'position',[295,205,315,225])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn11'])
set_param([sys,'/','Transfer Fcn11'],...
		'orientation',2,...
		'Numerator','[155.04]',...
		'Denominator','[0.002 1]',...
		'position',[335,285,395,315])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn8'])
set_param([sys,'/','Transfer Fcn8'],...
		'orientation',2,...
		'Numerator','[0.12]',...
		'Denominator','[0.005 1]',...
		'position',[265,385,325,415])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn12'])
set_param([sys,'/','Transfer Fcn12'],...
		'Numerator','[22]',...
		'Denominator','[0.01 1]',...
		'position',[440,198,500,232])

add_block('built-in/Gain',[sys,'/','Gain9'])
set_param([sys,'/','Gain9'],...
		'orientation',2,...
		'Gain','0.00075',...
		'position',[430,285,530,315])


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
		'Mask Entries','2\/-10\/10\/2000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['',13,'Graph4'].

set_param([sys,'/',['',13,'Graph4']],...
		'position',[600,250,630,290])

add_block('built-in/Gain',[sys,'/','Gain10'])
set_param([sys,'/','Gain10'],...
		'orientation',2,...
		'Gain','1.97',...
		'position',[655,42,720,78])


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
		'Mask Entries','2\/-10\/10\/2000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph2'].

set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'position',[935,190,965,230])


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
		'Mask Entries','2\/-10\/10\/2000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph3'].

set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'position',[765,100,795,140])
add_line(sys,[80,205;135,205])
add_line(sys,[455,400;330,400])
add_line(sys,[855,210;930,210])
add_line(sys,[675,210;705,210])
add_line(sys,[765,210;785,210])
add_line(sys,[855,210;865,210;865,400;545,400])
add_line(sys,[425,300;400,300])
add_line(sys,[505,215;545,215])
add_line(sys,[650,60;510,60;510,205;545,205])
add_line(sys,[855,210;865,210;865,60;725,60])
add_line(sys,[575,210;605,210])
add_line(sys,[675,210;685,210;685,300;535,300])
add_line(sys,[330,300;270,300;270,220;290,220])
add_line(sys,[405,215;435,215])
add_line(sys,[320,215;335,215])
add_line(sys,[260,400;115,400;115,215;135,215])
add_line(sys,[165,210;185,210])
add_line(sys,[255,210;290,210])
add_line(sys,[505,215;520,215;520,270;595,270])
add_line(sys,[675,210;685,210;685,120;760,120])

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
