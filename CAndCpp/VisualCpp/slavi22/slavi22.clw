; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CToDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi22.h"

ClassCount=5
Class1=CSlavi22App
Class2=CSlavi22Dlg
Class3=CAboutDlg

ResourceCount=8
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI22_DIALOG
Resource4=IDD_DIALOG1
Resource5=IDD_DIALOG2
Resource6=IDD_ABOUTBOX (English (U.S.))
Class4=CBroiDlg
Resource7=IDD_SLAVI22_DIALOG (English (U.S.))
Class5=CToDlg
Resource8=IDR_MENU1

[CLS:CSlavi22App]
Type=0
HeaderFile=slavi22.h
ImplementationFile=slavi22.cpp
Filter=N

[CLS:CSlavi22Dlg]
Type=0
HeaderFile=slavi22Dlg.h
ImplementationFile=slavi22Dlg.cpp
Filter=D
LastObject=IDC_BUTTON1
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi22Dlg.h
ImplementationFile=slavi22Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI22_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi22Dlg

[DLG:IDD_SLAVI22_DIALOG (English (U.S.))]
Type=1
Class=CSlavi22Dlg
ControlCount=2
Control1=IDC_st,static,1342308352
Control2=IDC_STATIC,static,1342308352

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
Class=CSlavi22Dlg
Command1=ID_SQRT_BROI
Command2=ID_SQRT_TO4NOST
Command3=ID_EXP_BROI
Command4=ID_EXP_TO4NOST
Command5=ID_ex
CommandCount=5

[DLG:IDD_DIALOG1]
Type=1
Class=CBroiDlg
ControlCount=7
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_ed2,edit,1350631552
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT3,edit,1350631552
Control7=IDC_SPIN1,msctls_updown32,1342308402

[CLS:CBroiDlg]
Type=0
HeaderFile=BroiDlg.h
ImplementationFile=BroiDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_EDIT3

[DLG:IDD_DIALOG2]
Type=1
Class=CToDlg
ControlCount=6
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_ed3,edit,1350631552
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_ed4,edit,1350631552

[CLS:CToDlg]
Type=0
HeaderFile=ToDlg.h
ImplementationFile=ToDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_ed3

