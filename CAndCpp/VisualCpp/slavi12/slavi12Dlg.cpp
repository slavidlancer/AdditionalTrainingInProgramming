// slavi12Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi12.h"
#include "slavi12Dlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi12Dlg dialog

CSlavi12Dlg::CSlavi12Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi12Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi12Dlg)
	m_a = _T("");
	m_e = 0;
	m_st = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi12Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi12Dlg)
	DDX_Control(pDX, IDC_BUTTON2, m_b2);
	DDX_Control(pDX, IDC_BUTTON1, m_b1);
	DDX_Text(pDX, IDC_st, m_a);
	DDX_Text(pDX, IDC_EDIT1, m_e);
	DDX_Text(pDX, IDC_st2, m_st);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi12Dlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi12Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON1, OnButton1)
	ON_BN_CLICKED(IDC_BUTTON2, OnButton2)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi12Dlg message handlers

BOOL CSlavi12Dlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	SetTimer(ID_tim,1000,NULL);
	m_b2.EnableWindow(FALSE);
	flag=false;
	br=0;
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSlavi12Dlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CSlavi12Dlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CSlavi12Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CSlavi12Dlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	UpdateData(TRUE);
	int h,m,s;
	CTime cha;
	CString iz,ou;
	cha=CTime::GetCurrentTime();
	h=cha.GetHour();
	m=cha.GetMinute();
	s=cha.GetSecond();
	iz.Format("%d : %d : %d",h,m,s);
	m_a=iz;
	if(nIDEvent==2)
	{
		KillTimer(ID_cnt);
		m_b1.EnableWindow(TRUE);
		m_b2.EnableWindow(FALSE);
		flag=false;
		ou.Format("%d",br);
		m_st=ou;
	}
	if(flag) 
	{
		br++;
		ou.Format("%d",br);
		m_st=ou;
	}
	UpdateData(FALSE);
	CDialog::OnTimer(nIDEvent);
}

void CSlavi12Dlg::OnButton1() 
{
	// TODO: Add your control notification handler code here
	CString ou;
	SetTimer(ID_cnt,m_e*1000,NULL);
	flag=true;
	br=0;
	m_st="0";
	UpdateData(FALSE);
	ou.Format("%d",br);
	m_st=ou;
	m_b1.EnableWindow(FALSE);
	m_b2.EnableWindow(TRUE);
	UpdateData(TRUE);
}

void CSlavi12Dlg::OnButton2() 
{
	// TODO: Add your control notification handler code here
	CString out;
	m_b1.EnableWindow(TRUE);
	m_b2.EnableWindow(FALSE);
	flag=false;
	out.Format("%d",br);
	m_st=out;
	KillTimer(ID_cnt);
	UpdateData(FALSE);
}