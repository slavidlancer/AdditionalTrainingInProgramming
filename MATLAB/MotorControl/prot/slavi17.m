function [ret,x0,str,ts,xts]=slavi17(t,x,u,flag);
%SLAVI17	is the M-file description of the SIMULINK system named SLAVI17.
%	The block-diagram can be displayed by typing: SLAVI17.
%
%	SYS=SLAVI17(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI17 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI17 with a FLAG of zero:
%	[SIZES]=SLAVI17([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Stop time',     '1')
set_param(sys,'Min step size', '0.001')
set_param(sys,'Max step size', '0.001')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

add_block('built-in/Gain',[sys,'/','Gain5'])
set_param([sys,'/','Gain5'],...
		'orientation',2,...
		'Gain','0.75',...
		'position',[360,125,440,155])

add_block('built-in/Gain',[sys,'/','Gain6'])
set_param([sys,'/','Gain6'],...
		'Gain','1.97',...
		'position',[425,25,485,55])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn5'])
set_param([sys,'/','Transfer Fcn5'],...
		'Denominator','[1.65 0]',...
		'position',[520,23,580,57])


%     Subsystem  ['Auto-Scale',13,'Graph1'].

new_system([sys,'/',['Auto-Scale',13,'Graph1']])
set_param([sys,'/',['Auto-Scale',13,'Graph1']],'Location',[0,59,274,252])

add_block('built-in/S-Function',[sys,'/',['Auto-Scale',13,'Graph1/S-function',13,'M-file which plots',13,'lines',13,'']])
set_param([sys,'/',['Auto-Scale',13,'Graph1/S-function',13,'M-file which plots',13,'lines',13,'']],...
		'function name','sfunyst',...
		'parameters','ax, color, npts, dt',...
		'position',[130,55,180,75])

add_block('built-in/Inport',[sys,'/',['Auto-Scale',13,'Graph1/x']])
set_param([sys,'/',['Auto-Scale',13,'Graph1/x']],...
		'position',[65,55,85,75])
add_line([sys,'/',['Auto-Scale',13,'Graph1']],[90,65;125,65])
set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'Mask Display','plot(0,0,100,100,[83,76,63,52,42,38,28,16,11,84,11,11,11,90,90,11],[75,58,47,54,72,80,84,74,65,65,65,90,40,40,90,90])',...
		'Mask Type','Storage scope.')
set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'Mask Dialogue','Storage scope using MATLAB graph window.\nEnter plotting ranges and line type.|Initial Time Range:|Initial y-min:|Initial y-max:|Storage pts.:|Line type (rgbw-.:xo):')
set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'Mask Translate','npts = @4; color = @5; ax = [0, @1, @2, @3]; dt=-1;')
set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'Mask Help','This block uses a MATLAB figure window to plot the input signal.  The graph limits are automatically scaled to the min and max values of the signal stored in the scope''s signal buffer.  Line type must be in quotes.  See the M-file sfunyst.m.')
set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'Mask Entries','1\/-10\/10\/2000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph1'].

set_param([sys,'/',['Auto-Scale',13,'Graph1']],...
		'position',[620,20,650,60])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn4'])
set_param([sys,'/','Transfer Fcn4'],...
		'Numerator','[8.62]',...
		'Denominator','[0.024 1]',...
		'position',[340,23,400,57])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn6'])
set_param([sys,'/','Transfer Fcn6'],...
		'orientation',2,...
		'Numerator','[0.12]',...
		'Denominator','[0.005 1]',...
		'position',[215,125,275,155])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn3'])
set_param([sys,'/','Transfer Fcn3'],...
		'Numerator','[0.116 1]',...
		'Denominator','[0.006 0]',...
		'position',[250,23,310,57])

add_block('built-in/Sum',[sys,'/','Sum3'])
set_param([sys,'/','Sum3'],...
		'inputs','+-',...
		'position',[185,30,205,50])

add_block('built-in/Step Fcn',[sys,'/','Step Input2'])
set_param([sys,'/','Step Input2'],...
		'Time','0',...
		'After','10',...
		'position',[100,25,120,45])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn8'])
set_param([sys,'/','Transfer Fcn8'],...
		'orientation',2,...
		'Numerator','[0.12]',...
		'Denominator','[0.005 1]',...
		'position',[240,505,300,535])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn11'])
set_param([sys,'/','Transfer Fcn11'],...
		'orientation',2,...
		'Numerator','[155.04]',...
		'Denominator','[0.002 1]',...
		'position',[310,405,370,435])

add_block('built-in/Sum',[sys,'/','Sum5'])
set_param([sys,'/','Sum5'],...
		'inputs','+-',...
		'position',[270,325,290,345])

add_block('built-in/Step Fcn',[sys,'/','Step Input3'])
set_param([sys,'/','Step Input3'],...
		'Time','0',...
		'After','10',...
		'position',[30,315,50,335])

add_block('built-in/Sum',[sys,'/','Sum4'])
set_param([sys,'/','Sum4'],...
		'inputs','+-',...
		'position',[115,320,135,340])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn12'])
set_param([sys,'/','Transfer Fcn12'],...
		'Numerator','[22]',...
		'Denominator','[0.01 1]',...
		'position',[410,318,470,352])

add_block('built-in/Gain',[sys,'/','Gain9'])
set_param([sys,'/','Gain9'],...
		'orientation',2,...
		'Gain','0.00075',...
		'position',[475,405,575,435])

add_block('built-in/Gain',[sys,'/','Gain8'])
set_param([sys,'/','Gain8'],...
		'orientation',2,...
		'Gain','0.75',...
		'position',[435,505,515,535])

add_block('built-in/Gain',[sys,'/','Gain10'])
set_param([sys,'/','Gain10'],...
		'orientation',2,...
		'Gain','1.97',...
		'position',[625,247,690,283])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn9'])
set_param([sys,'/','Transfer Fcn9'],...
		'Numerator','[3.049]',...
		'Denominator','[0.088 1]',...
		'position',[585,313,645,347])


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
		'Mask Entries','1\/-10\/10\/2000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph2'].

set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'position',[865,310,895,350])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn10'])
set_param([sys,'/','Transfer Fcn10'],...
		'Denominator','[1.65 0]',...
		'position',[765,313,825,347])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn13'])
set_param([sys,'/','Transfer Fcn13'],...
		'Numerator','[0.088 1]',...
		'Denominator','[0.187 0]',...
		'position',[315,318,375,352])

add_block('built-in/Sum',[sys,'/','Sum6'])
set_param([sys,'/','Sum6'],...
		'inputs','-+',...
		'position',[525,320,545,340])

add_block('built-in/Gain',[sys,'/','Gain7'])
set_param([sys,'/','Gain7'],...
		'Gain','1.97',...
		'position',[685,313,735,347])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn7'])
set_param([sys,'/','Transfer Fcn7'],...
		'Numerator','[18.75]',...
		'Denominator','[1]',...
		'position',[165,313,225,347])
add_line(sys,[125,35;180,35])
add_line(sys,[210,140;160,140;160,45;180,45])
add_line(sys,[210,40;245,40])
add_line(sys,[315,40;335,40])
add_line(sys,[355,140;280,140])
add_line(sys,[585,40;615,40])
add_line(sys,[405,40;420,40])
add_line(sys,[490,40;515,40])
add_line(sys,[585,40;595,40;595,140;445,140])
add_line(sys,[55,325;110,325])
add_line(sys,[430,520;305,520])
add_line(sys,[830,330;860,330])
add_line(sys,[650,330;680,330])
add_line(sys,[740,330;760,330])
add_line(sys,[830,330;840,330;840,520;520,520])
add_line(sys,[470,420;375,420])
add_line(sys,[475,335;520,335])
add_line(sys,[620,265;485,265;485,325;520,325])
add_line(sys,[830,330;840,330;840,265;695,265])
add_line(sys,[550,330;580,330])
add_line(sys,[650,330;660,330;660,420;580,420])
add_line(sys,[305,420;245,420;245,340;265,340])
add_line(sys,[380,335;405,335])
add_line(sys,[295,335;310,335])
add_line(sys,[235,520;90,520;90,335;110,335])
add_line(sys,[140,330;160,330])
add_line(sys,[230,330;265,330])

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
