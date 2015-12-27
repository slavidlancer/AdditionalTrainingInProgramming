; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CGeDlg
LastTemplate=CDialog
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "slavi26a.h"

ClassCount=4
Class1=CSlavi26aApp
Class2=CSlavi26aDlg
Class3=CAboutDlg

ResourceCount=7
Resource1=IDD_ABOUTBOX
Resource2=IDR_MAINFRAME
Resource3=IDD_SLAVI26A_DIALOG
Resource4=IDD_SLAVI26A_DIALOG (English (U.S.))
Resource5=IDD_ABOUTBOX (English (U.S.))
Resource6=IDD_DIALOG1
Class4=CGeDlg
Resource7=IDR_MENU1

[CLS:CSlavi26aApp]
Type=0
HeaderFile=slavi26a.h
ImplementationFile=slavi26a.cpp
Filter=N

[CLS:CSlavi26aDlg]
Type=0
HeaderFile=slavi26aDlg.h
ImplementationFile=slavi26aDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_STATI

[CLS:CAboutDlg]
Type=0
HeaderFile=slavi26aDlg.h
ImplementationFile=slavi26aDlg.cpp
Filter=D

[DLG:IDD_ABOUTBOX]
Type=1
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Class=CAboutDlg


[DLG:IDD_SLAVI26A_DIALOG]
Type=1
ControlCount=3
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Class=CSlavi26aDlg

[DLG:IDD_SLAVI26A_DIALOG (English (U.S.))]
Type=1
Class=CSlavi26aDlg
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
Class=CSlavi26aDlg
Command1=ID_GENERIRANE
Command2=ID_POKAZVANE
Command3=ID_OBRABOTKA_SREDNO
Command4=ID_OBRABOTKA_MAKSIMALNO
Command5=ID_OBRABOTKA_PODREJDANE
Command6=ID_IZHOD
CommandCount=6

[DLG:IDD_DIALOG1]
Type=1
Class=CGeDlg
ControlCount=5
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_EDIT1,edit,1350631552
Control4=IDC_SPIN1,msctls_updown32,1342308402
Control5=IDC_STATIC,static,1342308352

[CLS:CGeDlg]
Type=0
HeaderFile=GeDlg.h
ImplementationFile=GeDlg.cpp
BaseClass=CDialog
Filter=D
VirtualFilter=dWC

