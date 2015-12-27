; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CPaDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi24.h"

ClassCount=8
Class1=CSlavi24App
Class2=CSlavi24Dlg
Class3=CAboutDlg

ResourceCount=11
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI24_DIALOG
Resource4=IDD_DIALOG2
Resource5=IDD_DIALOG5
Resource6=IDD_DIALOG4
Class4=CPaDlg
Resource7=IDD_SLAVI24_DIALOG (English (U.S.))
Class5=CCaDlg
Resource8=IDD_ABOUTBOX (English (U.S.))
Class6=CGraDlg
Resource9=IDD_DIALOG1
Class7=CScDlg
Resource10=IDD_DIALOG3
Class8=CSiDlg
Resource11=IDR_MENU1

[CLS:CSlavi24App]
Type=0
HeaderFile=slavi24.h
ImplementationFile=slavi24.cpp
Filter=N

[CLS:CSlavi24Dlg]
Type=0
HeaderFile=slavi24Dlg.h
ImplementationFile=slavi24Dlg.cpp
Filter=D
LastObject=ID_OPTIMIZATION_SIMPLEX
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi24Dlg.h
ImplementationFile=slavi24Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI24_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi24Dlg

[DLG:IDD_SLAVI24_DIALOG (English (U.S.))]
Type=1
Class=CSlavi24Dlg
ControlCount=2
Control1=IDC_rez,static,1342308352
Control2=IDC_stat,static,1342308352

[DLG:IDD_ABOUTBOX (English (U.S.))]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MENU1]
Type=1
Class=CSlavi24Dlg
Command1=ID_PARAMETERS
Command2=ID_BASIC_CALC
Command3=ID_BASIC_GRAD
Command4=ID_BASIC_RADICALS
Command5=ID_OPTIMIZATION_SCAN
Command6=ID_OPTIMIZATION_SIMPLEX
Command7=ID_EXIT
CommandCount=7

[DLG:IDD_DIALOG1]
Type=1
Class=CPaDlg
ControlCount=8
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT1,edit,1350631552
Control7=IDC_EDIT2,edit,1350631552
Control8=IDC_EDIT3,edit,1350631552

[CLS:CPaDlg]
Type=0
HeaderFile=PaDlg.h
ImplementationFile=PaDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_EDIT1
VirtualFilter=dWC

[DLG:IDD_DIALOG2]
Type=1
Class=CCaDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_st,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_EDIT1,edit,1350631552

[CLS:CCaDlg]
Type=0
HeaderFile=CaDlg.h
ImplementationFile=CaDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_st

[DLG:IDD_DIALOG3]
Type=1
Class=CGraDlg
ControlCount=9
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STA,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_EDIT1,edit,1350631552
Control6=IDC_STATIC,static,1342308352
Control7=IDC_EDIT2,edit,1350631552
Control8=IDC_RADIO1,button,1342308361
Control9=IDC_RADIO2,button,1342177289

[CLS:CGraDlg]
Type=0
HeaderFile=GraDlg.h
ImplementationFile=GraDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_STA

[DLG:IDD_DIALOG4]
Type=1
Class=CScDlg
ControlCount=8
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_EDIT1,edit,1350631552
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT2,edit,1350631552
Control7=IDC_STATIC,static,1342308352
Control8=IDC_EDIT3,edit,1350631552

[CLS:CScDlg]
Type=0
HeaderFile=ScDlg.h
ImplementationFile=ScDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_EDIT1

[DLG:IDD_DIALOG5]
Type=1
Class=CSiDlg
ControlCount=11
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT1,edit,1350631552
Control7=IDC_EDIT2,edit,1350631552
Control8=IDC_EDIT3,edit,1350631552
Control9=IDC_RADIO1,button,1342308361
Control10=IDC_RADIO2,button,1342177289
Control11=IDC_STATIC,static,1342308352

[CLS:CSiDlg]
Type=0
HeaderFile=SiDlg.h
ImplementationFile=SiDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=CSiDlg

