; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CSlavi21Dlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi21.h"

ClassCount=3
Class1=CSlavi21App
Class2=CSlavi21Dlg
Class3=CAboutDlg

ResourceCount=6
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI21_DIALOG
Resource4=IDD_ABOUTBOX (English (U.S.))
Resource5=IDR_MENU1
Resource6=IDD_SLAVI21_DIALOG (English (U.S.))

[CLS:CSlavi21App]
Type=0
HeaderFile=slavi21.h
ImplementationFile=slavi21.cpp
Filter=N

[CLS:CSlavi21Dlg]
Type=0
HeaderFile=slavi21Dlg.h
ImplementationFile=slavi21Dlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDCANCEL

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi21Dlg.h
ImplementationFile=slavi21Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI21_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi21Dlg

[DLG:IDD_SLAVI21_DIALOG (English (U.S.))]
Type=1
Class=CSlavi21Dlg
ControlCount=3
Control1=IDCANCEL,button,1342242816
Control2=IDC_edit,edit,1350631552
Control3=IDC_st,static,1342308352

[DLG:IDD_ABOUTBOX (English (U.S.))]
Type=1
Class=?
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[MNU:IDR_MENU1]
Type=1
Class=CSlavi21Dlg
Command1=ID_hi
Command2=ID__LOW
Command3=ID__CANCEL
CommandCount=3

