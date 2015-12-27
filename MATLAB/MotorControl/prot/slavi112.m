function [ret,x0,str,ts,xts]=slavi112(t,x,u,flag);
%SLAVI112	is the M-file description of the SIMULINK system named SLAVI112.
%	The block-diagram can be displayed by typing: SLAVI112.
%
%	SYS=SLAVI112(T,X,U,FLAG) returns depending on FLAG certain
%	system values given time point, T, current state vector, X,
%	and input vector, U.
%	FLAG is used to indicate the type of output to be returned in SYS.
%
%	Setting FLAG=1 causes SLAVI112 to return state derivatives, FLAG=2
%	discrete states, FLAG=3 system outputs and FLAG=4 next sample
%	time. For more information and other options see SFUNC.
%
%	Calling SLAVI112 with a FLAG of zero:
%	[SIZES]=SLAVI112([],[],[],0),  returns a vector, SIZES, which
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
set_param(sys,'Stop time',     '10')
set_param(sys,'Min step size', '0.001')
set_param(sys,'Max step size', '0.001')
set_param(sys,'Relative error','1e-3')
set_param(sys,'Return vars',   '')

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
		'Mask Entries','10\/-10\/10\/200000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['',13,'Graph4'].

set_param([sys,'/',['',13,'Graph4']],...
		'position',[600,250,630,290])

add_block('built-in/Gain',[sys,'/','Gain10'])
set_param([sys,'/','Gain10'],...
		'orientation',2,...
		'Gain','1.97',...
		'position',[655,42,720,78])


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
		'Mask Entries','10\/-10\/10\/200000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph3'].

set_param([sys,'/',['Auto-Scale',13,'Graph3']],...
		'position',[765,100,795,140])

add_block('built-in/Sum',[sys,'/','Sum7'])
set_param([sys,'/','Sum7'],...
		'inputs','+-',...
		'position',[785,205,805,225])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn10'])
set_param([sys,'/','Transfer Fcn10'],...
		'Denominator','[1.65 0]',...
		'position',[840,198,900,232])

add_block('built-in/Step Fcn',[sys,'/','Step Input4'])
set_param([sys,'/','Step Input4'],...
		'After','80',...
		'position',[720,295,740,315])

add_block('built-in/Saturation',[sys,'/','Saturation'])
set_param([sys,'/','Saturation'],...
		'Lower Limit','-10',...
		'Upper Limit','10',...
		'position',[255,68,285,92])

add_block('built-in/Sum',[sys,'/','Sum4'])
set_param([sys,'/','Sum4'],...
		'inputs','+-',...
		'position',[130,200,150,220])

add_block('built-in/Transfer Fcn',[sys,'/','Transfer Fcn7'])
set_param([sys,'/','Transfer Fcn7'],...
		'Numerator','[0.116 1]',...
		'Denominator','[0.006 0]',...
		'position',[175,193,235,227])


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
		'Mask Entries','10\/-10\/10\/200000\/''y-/g--/c-./w:/m*/ro/b+''\/')


%     Finished composite block ['Auto-Scale',13,'Graph2'].

set_param([sys,'/',['Auto-Scale',13,'Graph2']],...
		'position',[955,195,985,235])


%     Subsystem  ['Limited',13,'Integrator'].

new_system([sys,'/',['Limited',13,'Integrator']])
set_param([sys,'/',['Limited',13,'Integrator']],'Location',[452,229,1117,789])

add_block('built-in/Saturation',[sys,'/',['Limited',13,'Integrator/Saturation']])
set_param([sys,'/',['Limited',13,'Integrator/Saturation']],...
		'Lower Limit','lower_limit',...
		'Upper Limit','upper_limit',...
		'position',[325,110,350,130])

add_block('built-in/Switch',[sys,'/',['Limited',13,'Integrator/Switch']])
set_param([sys,'/',['Limited',13,'Integrator/Switch']],...
		'Threshold','0.5',...
		'position',[110,80,135,160])

add_block('built-in/Integrator',[sys,'/',['Limited',13,'Integrator/Integrator']])
set_param([sys,'/',['Limited',13,'Integrator/Integrator']],...
		'Initial','X0',...
		'position',[165,99,200,141])

add_block('built-in/Constant',[sys,'/',['Limited',13,'Integrator/Constant2']])
set_param([sys,'/',['Limited',13,'Integrator/Constant2']],...
		'Value','0',...
		'position',[20,135,40,155])

add_block('built-in/Inport',[sys,'/',['Limited',13,'Integrator/Inport']])
set_param([sys,'/',['Limited',13,'Integrator/Inport']],...
		'position',[25,85,45,105])

add_block('built-in/Outport',[sys,'/',['Limited',13,'Integrator/Outport']])
set_param([sys,'/',['Limited',13,'Integrator/Outport']],...
		'position',[515,110,535,130])

add_block('built-in/Constant',[sys,'/',['Limited',13,'Integrator/Constant4']])
set_param([sys,'/',['Limited',13,'Integrator/Constant4']],...
		'hide name',0,...
		'Value','0',...
		'position',[355,425,375,445])

add_block('built-in/Constant',[sys,'/',['Limited',13,'Integrator/Constant3']])
set_param([sys,'/',['Limited',13,'Integrator/Constant3']],...
		'hide name',0,...
		'Value','0',...
		'position',[355,260,375,280])

add_block('built-in/Logical Operator',[sys,'/',['Limited',13,'Integrator/Logical',13,'Operator']])
set_param([sys,'/',['Limited',13,'Integrator/Logical',13,'Operator']],...
		'hide name',0,...
		'Operator','AND',...
		'position',[570,280,605,315])

add_block('built-in/Logical Operator',[sys,'/',['Limited',13,'Integrator/Logical',13,'Operator2']])
set_param([sys,'/',['Limited',13,'Integrator/Logical',13,'Operator2']],...
		'hide name',0,...
		'Operator','OR',...
		'position',[490,360,525,395])

add_block('built-in/Logical Operator',[sys,'/',['Limited',13,'Integrator/Logical',13,'Operator1']])
set_param([sys,'/',['Limited',13,'Integrator/Logical',13,'Operator1']],...
		'hide name',0,...
		'Operator','OR',...
		'position',[490,200,525,235])

add_block('built-in/Relational Operator',[sys,'/',['Limited',13,'Integrator/Relational',13,'operator2']])
set_param([sys,'/',['Limited',13,'Integrator/Relational',13,'operator2']],...
		'hide name',0,...
		'Operator','<=',...
		'position',[415,231,445,284])

add_block('built-in/Relational Operator',[sys,'/',['Limited',13,'Integrator/Relational',13,'operator3']])
set_param([sys,'/',['Limited',13,'Integrator/Relational',13,'operator3']],...
		'hide name',0,...
		'position',[415,396,445,449])

add_block('built-in/Constant',[sys,'/',['Limited',13,'Integrator/Constant1']])
set_param([sys,'/',['Limited',13,'Integrator/Constant1']],...
		'hide name',0,...
		'Value','lower_limit',...
		'position',[325,345,390,365])

add_block('built-in/Relational Operator',[sys,'/',['Limited',13,'Integrator/Relational',13,'operator1']])
set_param([sys,'/',['Limited',13,'Integrator/Relational',13,'operator1']],...
		'hide name',0,...
		'position',[415,312,445,368])

add_block('built-in/Constant',[sys,'/',['Limited',13,'Integrator/Constant']])
set_param([sys,'/',['Limited',13,'Integrator/Constant']],...
		'hide name',0,...
		'Value','upper_limit',...
		'position',[325,179,395,201])

add_block('built-in/Relational Operator',[sys,'/',['Limited',13,'Integrator/Relational',13,'operator']])
set_param([sys,'/',['Limited',13,'Integrator/Relational',13,'operator']],...
		'hide name',0,...
		'Operator','<=',...
		'position',[415,151,445,204])
add_line([sys,'/',['Limited',13,'Integrator']],[355,120;510,120])
add_line([sys,'/',['Limited',13,'Integrator']],[205,120;320,120])
add_line([sys,'/',['Limited',13,'Integrator']],[50,95;105,95])
add_line([sys,'/',['Limited',13,'Integrator']],[65,95;65,245;410,245])
add_line([sys,'/',['Limited',13,'Integrator']],[65,245;65,410;410,410])
add_line([sys,'/',['Limited',13,'Integrator']],[140,120;160,120])
add_line([sys,'/',['Limited',13,'Integrator']],[400,190;410,190])
add_line([sys,'/',['Limited',13,'Integrator']],[395,355;410,355])
add_line([sys,'/',['Limited',13,'Integrator']],[610,300;625,300;625,490;85,490;85,120;105,120])
add_line([sys,'/',['Limited',13,'Integrator']],[45,145;105,145])
add_line([sys,'/',['Limited',13,'Integrator']],[450,180;465,180;465,210;485,210])
add_line([sys,'/',['Limited',13,'Integrator']],[450,260;465,260;465,225;485,225])
add_line([sys,'/',['Limited',13,'Integrator']],[530,220;540,220;540,290;565,290])
add_line([sys,'/',['Limited',13,'Integrator']],[450,340;460,340;460,370;485,370])
add_line([sys,'/',['Limited',13,'Integrator']],[450,425;460,425;460,385;485,385])
add_line([sys,'/',['Limited',13,'Integrator']],[530,380;540,380;540,305;565,305])
add_line([sys,'/',['Limited',13,'Integrator']],[380,270;410,270])
add_line([sys,'/',['Limited',13,'Integrator']],[380,435;410,435])
add_line([sys,'/',['Limited',13,'Integrator']],[205,120;245,120;245,165;315,165;315,325;410,325])
add_line([sys,'/',['Limited',13,'Integrator']],[315,165;410,165])
set_param([sys,'/',['Limited',13,'Integrator']],...
		'Mask Display','plot(-1,-0.2,3.5,1.2,[0.05,1,2,2.9],[0,0,1,1]); 1/s    ',...
		'Mask Type','Limited Integrator.')
set_param([sys,'/',['Limited',13,'Integrator']],...
		'Mask Dialogue','Limited Integrator|Lower bound:|Upper bound:|Initial condition:',...
		'Mask Translate','lower_limit=@1;upper_limit=@2;X0=@3;')
set_param([sys,'/',['Limited',13,'Integrator']],...
		'Mask Help','Implements a limited integrator with \nan expression of the form:\n\nif(x<=lb and u<0) or (x>=ub and u>0)\n   xdot=0\nelse\n   xdot=u',...
		'Mask Entries','-10\/10\/0\/')


%     Finished composite block ['Limited',13,'Integrator'].

set_param([sys,'/',['Limited',13,'Integrator']],...
		'position',[65,190,105,220])

add_block('built-in/Step Fcn',[sys,'/','Step Input3'])
set_param([sys,'/','Step Input3'],...
		'Time','0',...
		'After','2',...
		'position',[25,195,45,215])
add_line(sys,[455,400;330,400])
add_line(sys,[905,215;950,215])
add_line(sys,[675,210;705,210])
add_line(sys,[425,300;400,300])
add_line(sys,[505,215;545,215])
add_line(sys,[650,60;510,60;510,205;545,205])
add_line(sys,[575,210;605,210])
add_line(sys,[675,210;685,210;685,300;535,300])
add_line(sys,[330,300;270,300;270,220;290,220])
add_line(sys,[405,215;435,215])
add_line(sys,[320,215;335,215])
add_line(sys,[260,400;115,400;125,215])
add_line(sys,[155,210;170,210])
add_line(sys,[905,215;915,215;915,400;545,400])
add_line(sys,[905,215;915,215;915,60;725,60])
add_line(sys,[765,210;780,210])
add_line(sys,[810,215;835,215])
add_line(sys,[745,305;765,305;765,220;780,220])
add_line(sys,[240,210;250,80])
add_line(sys,[290,80;300,80;300,135;275,135;275,210;290,210])
add_line(sys,[675,210;685,210;685,120;760,120])
add_line(sys,[505,215;525,215;525,270;595,270])
add_line(sys,[50,205;60,205])
add_line(sys,[110,205;125,205])

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
