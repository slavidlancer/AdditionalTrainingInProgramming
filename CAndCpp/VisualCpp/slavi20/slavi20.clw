; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CSlavi20Dlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi20.h"

ClassCount=7
Class1=CSlavi20App
Class2=CSlavi20Dlg
Class3=CAboutDlg

ResourceCount=10
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI20_DIALOG
Resource4=IDD_DIALOG1
Resource5=IDD_DIALOG4
Resource6=IDD_ABOUTBOX (English (U.S.))
Resource7=IDD_SLAVI20_DIALOG (English (U.S.))
Resource8=IDD_DIALOG3
Resource9=IDD_DIALOG2
Class4=COpenDlg
Class5=CSaveDlg
Class6=CColorDlg
Class7=CGlobalDlg
Resource10=IDR_MENU1

[CLS:CSlavi20App]
Type=0
HeaderFile=slavi20.h
ImplementationFile=slavi20.cpp
Filter=N

[CLS:CSlavi20Dlg]
Type=0
HeaderFile=slavi20Dlg.h
ImplementationFile=slavi20Dlg.cpp
Filter=D
LastObject=CSlavi20Dlg
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi20Dlg.h
ImplementationFile=slavi20Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI20_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi20Dlg

[DLG:IDD_SLAVI20_DIALOG (English (U.S.))]
Type=1
Class=CSlavi20Dlg
ControlCount=1
Control1=IDC_st,static,1342308352

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
Class=CSlavi20Dlg
Command1=ID_FILE_OPEN
Command2=ID_FILE_SAVE
Command3=ID_FILE_COLOR
Command4=ID_FILE_EXIT
Command5=ID_Clear
Command6=ID_MESSAGE_LOCAL
Command7=ID_MESSAGE_GLOBAL
Command8=ID_About
CommandCount=8

[DLG:IDD_DIALOG1]
Type=1
Class=COpenDlg
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

[DLG:IDD_DIALOG2]
Type=1
Class=CSaveDlg
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

[DLG:IDD_DIALOG3]
Type=1
Class=CColorDlg
ControlCount=2
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816

[DLG:IDD_DIALOG4]
Type=1
Class=CGlobalDlg
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352

[CLS:COpenDlg]
Type=0
HeaderFile=OpenDlg.h
ImplementationFile=OpenDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=COpenDlg

[CLS:CSaveDlg]
Type=0
HeaderFile=SaveDlg.h
ImplementationFile=SaveDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CSaveDlg

[CLS:CColorDlg]
Type=0
HeaderFile=ColorDlg.h
ImplementationFile=ColorDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CColorDlg

[CLS:CGlobalDlg]
Type=0
HeaderFile=GlobalDlg.h
ImplementationFile=GlobalDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CGlobalDlg

