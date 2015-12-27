; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CfuDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi23.h"

ClassCount=5
Class1=CSlavi23App
Class2=CSlavi23Dlg
Class3=CAboutDlg

ResourceCount=8
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI23_DIALOG
Resource4=IDD_SLAVI23_DIALOG (English (U.S.))
Resource5=IDD_DIALOG2
Resource6=IDD_ABOUTBOX (English (U.S.))
Class4=CtrDlg
Resource7=IDD_DIALOG1
Class5=CfuDlg
Resource8=IDR_MENU1

[CLS:CSlavi23App]
Type=0
HeaderFile=slavi23.h
ImplementationFile=slavi23.cpp
Filter=N

[CLS:CSlavi23Dlg]
Type=0
HeaderFile=slavi23Dlg.h
ImplementationFile=slavi23Dlg.cpp
Filter=D
LastObject=ID_f
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi23Dlg.h
ImplementationFile=slavi23Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI23_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi23Dlg

[DLG:IDD_SLAVI23_DIALOG (English (U.S.))]
Type=1
Class=CSlavi23Dlg
ControlCount=1
Control1=IDC_STATI,static,1342308352

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
Class=CSlavi23Dlg
Command1=ID_t
Command2=ID_f
Command3=ID_e
CommandCount=3

[DLG:IDD_DIALOG1]
Type=1
Class=CtrDlg
ControlCount=6
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_RADIO1,button,1342308361
Control4=IDC_RADIO2,button,1342177289
Control5=IDC_STATIC,static,1342308352
Control6=IDC_EDIT1,edit,1350631552

[CLS:CtrDlg]
Type=0
HeaderFile=trDlg.h
ImplementationFile=trDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

[DLG:IDD_DIALOG2]
Type=1
Class=CfuDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_EDIT1,edit,1350631552
Control5=IDC_COMBO1,combobox,1344340226

[CLS:CfuDlg]
Type=0
HeaderFile=fuDlg.h
ImplementationFile=fuDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_COMBO1

