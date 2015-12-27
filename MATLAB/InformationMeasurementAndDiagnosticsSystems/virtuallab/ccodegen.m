function ccodegen
%CCODEGEN Provides information about the Real-Time Workshop

%   Ned Gulley, 6-21-93
%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.5 $  $Date: 1998/04/13 15:20:32 $

ttlStr='The Real-Time Workshop';
txtStr= ...                                                           
    [' After building a model in Simulink, Real-Time Workshop is  '
     ' used to automatically generate C code from Simulink block  '
     ' diagrams. Generated code is applied in a variety of        '
     ' applications such as real-time embedded control, DSP       '
     ' design, hardware-in-the-loop simulation, and stand-alone   '
     ' simulation. The Generated C code is portable and runs on   '
     ' many floating point processors.                            '
     '                                                            '
     ' Real-Time Workshop generates C code for Simulink block     '
     ' diagrams consisting of discrete-time, continuous-time,     '
     ' and hybrid systems. The generated code is optimized for    '
     ' real-time applications and includes numerous speed         '
     ' optimizations. Included with Real-Time Workshop are        '
     ' target support files for running real-time code on VME     '
     ' hardware under the Tornado real-time operating system, on  '
     ' PC hardware under DOS, and stand-alone on your host        '
     ' computer. Template makefiles are provided to allow you to  '
     ' specify compilers, compiler options and build dependencies.'
     '                                                            '
     ' In order to generate C code using Real-Time Workshop,      '
     ' click on the RTW tab and specify code generation options.  '
     ' For systems containing continuous-time components, it is   '
     ' necessary to also specify Fixed-step from the Solver page  '
     ' and select an appropriate integration method.              '
     '                                                            '
     ' Also see the Connections Directory for an extensive list   '
     ' of 3rd party real-time target support.                     '];
helpwin(txtStr,ttlStr);
