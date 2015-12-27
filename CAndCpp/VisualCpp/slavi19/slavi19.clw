; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CSlavi19Dlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi19.h"

ClassCount=4
Class1=CSlavi19App
Class2=CSlavi19Dlg
Class3=CAboutDlg

ResourceCount=6
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI19_DIALOG
Resource4=IDD_DIALOG1
Resource5=IDD_ABOUTBOX (English (U.S.))
Class4=CParDlg
Resource6=IDD_SLAVI19_DIALOG (English (U.S.))

[CLS:CSlavi19App]
Type=0
HeaderFile=slavi19.h
ImplementationFile=slavi19.cpp
Filter=N

[CLS:CSlavi19Dlg]
Type=0
HeaderFile=slavi19Dlg.h
ImplementationFile=slavi19Dlg.cpp
Filter=D
LastObject=CSlavi19Dlg
BaseClass=CDialog
VirtualFilter=dWC

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi19Dlg.h
ImplementationFile=slavi19Dlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI19_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi19Dlg

[DLG:IDD_SLAVI19_DIALOG (English (U.S.))]
Type=1
Class=CSlavi19Dlg
ControlCount=9
Control1=IDCANCEL,button,1342242816
Control2=IDC_PROGRESS1,msctls_progress32,1350565888
Control3=IDC_BUTTON1,button,1342242816
Control4=IDC_BUTTON2,button,1342242816
Control5=IDC_BUTTON3,button,1342242816
Control6=IDC_st1,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_st2,static,1342308352
Control9=IDC_st3,static,1342308352

[DLG:IDD_ABOUTBOX (English (U.S.))]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_DIALOG1]
Type=1
Class=CParDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_EDIT1,edit,1350631552
Control4=IDC_SPIN1,msctls_updown32,1342177330
Control5=IDC_STATIC,static,1342308352

[CLS:CParDlg]
Type=0
HeaderFile=ParDlg.h
ImplementationFile=ParDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC
LastObject=IDC_EDIT1

