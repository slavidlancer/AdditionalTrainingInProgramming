// slavi23Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi23.h"
#include "trDlg.h"
#include "fuDlg.h"
#include "slavi23Dlg.h"
#include "math.h"

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
// CSlavi23Dlg dialog

CSlavi23Dlg::CSlavi23Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi23Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi23Dlg)
	m_rez = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi23Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi23Dlg)
	DDX_Text(pDX, IDC_STATI, m_rez);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi23Dlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi23Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_COMMAND(ID_e, One)
	ON_COMMAND(ID_t, Ont)
	ON_COMMAND(ID_f, Onf)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi23Dlg message handlers

BOOL CSlavi23Dlg::OnInitDialog()
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
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSlavi23Dlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CSlavi23Dlg::OnPaint() 
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
HCURSOR CSlavi23Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

double rad(double c)
{
	double r;
	r=c*(3.14/180);
	return(r);
}

double gra(double c)
{
	double r;
	r=c*(180/3.14);
	return(r);
}

void CSlavi23Dlg::One() 
{
	// TODO: Add your command handler code here
	exit(0);
}

void CSlavi23Dlg::Ont() 
{
	// TODO: Add your command handler code here
	int k;
	CString a;
	k=tra.DoModal();
	if(k==IDOK)
	{
		if(tra.m_r==0)
		{
			a.Format("%.2lf gradusa=%.4lf radiana",tra.m_e2,rad(tra.m_e2));
		}
		if(tra.m_r==1)
		{
			a.Format("%.2lf radiana=%.4lf gradusa",tra.m_e2,gra(tra.m_e2));
		}
		m_rez=a;
		UpdateData(FALSE);
	}
}

void CSlavi23Dlg::Onf() 
{
	// TODO: Add your command handler code here
	int j;
	double b;
	CString fo,fe;
	fe="";
	j=fun.DoModal();
	if(j==IDOK)
	{
		if(fun.m_c=="sin")
		{
			b=rad(fun.m_e);
			fo.Format("sin(%.2lf)=%.2lf",fun.m_e,sin(b));
		}
		if(fun.m_c=="cos")
		{
			b=rad(fun.m_e);
			fo.Format("cos(%.2lf)=%.2lf",fun.m_e,cos(b));
		}
		if(fun.m_c=="tan")
		{
			b=rad(fun.m_e);
			fo.Format("tan(%.2lf)=%.2lf",fun.m_e,tan(b));
		}
		if(fun.m_c=="asin")
		{
			b=rad(fun.m_e);
			fo.Format("asin(%.2lf)=%.2lf",fun.m_e,asin(fun.m_e));
			fe.Format("  %.2lf gradusi",gra(asin(fun.m_e)));
		}
		if(fun.m_c=="acos")
		{
			b=rad(fun.m_e);
			fo.Format("acos(%.2lf)=%.2lf",fun.m_e,acos(fun.m_e));
			fe.Format("  %.2lf gradusi",gra(acos(fun.m_e)));
		}
		if(fun.m_c=="atan")
		{
			b=rad(fun.m_e);
			fo.Format("atan(%.2lf)=%.4lf",fun.m_e,atan(fun.m_e));
			fe.Format("  %.2lf gradusi",gra(atan(fun.m_e)));
		}
		m_rez=fo+fe;
		UpdateData(FALSE);
	}
}
