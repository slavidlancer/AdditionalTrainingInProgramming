// slavi22Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi22.h"
#include "BroiDlg.h"
#include "ToDlg.h"
#include "slavi22Dlg.h"
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
// CSlavi22Dlg dialog

CSlavi22Dlg::CSlavi22Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi22Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi22Dlg)
	m_rez = _T("");
	m_rr = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi22Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi22Dlg)
	DDX_Text(pDX, IDC_st, m_rez);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi22Dlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi22Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_COMMAND(ID_ex, Onex)
	ON_COMMAND(ID_EXP_BROI, OnExpBroi)
	ON_COMMAND(ID_EXP_TO4NOST, OnExpTo4nost)
	ON_COMMAND(ID_SQRT_BROI, OnSqrtBroi)
	ON_COMMAND(ID_SQRT_TO4NOST, OnSqrtTo4nost)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi22Dlg message handlers

BOOL CSlavi22Dlg::OnInitDialog()
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

void CSlavi22Dlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CSlavi22Dlg::OnPaint() 
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
HCURSOR CSlavi22Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CSlavi22Dlg::Onex() 
{
	// TODO: Add your command handler code here
	exit(0);
}

void CSlavi22Dlg::OnExpBroi() 
{
	// TODO: Add your command handler code here
	int k,i;
	double su,it,zn;
	CString iz,iz2,a1,a2,a3,suu;
	k=br.DoModal();
	UpdateData(TRUE);
	if(k==IDOK)
	{
		iz.Format("%.4lf",exp(br.m_x));
		su=1;it=1;zn=1;
		for(i=1;i<=br.m_n;i++)
		{
			it=it*br.m_x;
			zn=zn*i;
			su=su+it/zn;
		}
		a1="iz4islena stoinost=";a2="; deistvitelna stoinost=";
		iz2.Format("%.4lf",su);
		m_rez=a1+iz2+a2+iz;
		UpdateData(FALSE);
	}
}

void CSlavi22Dlg::OnExpTo4nost() 
{
	// TODO: Add your command handler code here
	int kk,i;
	double su,it,zn;
	CString iz,iz2,iz3,a1,a2,a3,a4;
	kk=to.DoModal();
	UpdateData(TRUE);
	if(kk==IDOK)
	{
		iz.Format("%.4lf",exp(to.m_x2));
		it=1;zn=1;su=1;i=1;
		do
		{
			it=it*to.m_x2;
			zn=zn*i;
			su=su+it/zn;
			i++;
		}
		while(fabs(it/zn)>to.m_eps);
		a1="iz4islena stoinost=";a2="; deistvitelna stoinost=";a3="; broi iz4isleni elementi=";
		iz2.Format("%.4lf",su);
		i--;
		iz3.Format("%d",i);
		m_rez=a1+iz2+a2+iz+a3+iz3;
		UpdateData(FALSE);
	}
}

void CSlavi22Dlg::OnSqrtBroi() 
{
	// TODO: Add your command handler code here
	int j,i;
	double yn,yc;
	CString iz,iz2,a1,a2,a3;
	j=br.DoModal();
	UpdateData(TRUE);
	if(j==IDOK)
	{
		iz.Format("%.4lf",sqrt(br.m_x));
		yc=1;
		for(i=1;i<=br.m_n;i++)
		{
			yn=(br.m_x/yc+yc)/2;
			yc=yn;
		}
		a1="iz4islena stoinost=";a2="; deistvitelna stoinost=";
		iz2.Format("%.4lf",yn);
		m_rez=a1+iz2+a2+iz;
		UpdateData(FALSE);
	}
}

void CSlavi22Dlg::OnSqrtTo4nost() 
{
	// TODO: Add your command handler code here
	int jj,i;
	double yn,yc,y;
	CString iz,iz2,iz3,a1,a2,a3,a4;
	jj=to.DoModal();
	UpdateData(TRUE);
	if(jj==IDOK)
	{
		iz.Format("%.4lf",sqrt(to.m_x2));
		i=1;yc=1;
		do
		{
			yn=(to.m_x2/yc+yc)/2;
			y=yc;
			yc=yn;
			i++;
		}
		while(fabs(y-yn)>to.m_eps);
		a1="iz4islena stoinost=";a2="; deistvitelna stoinost=";a3="; broi iz4isleni elementi=";
		iz2.Format("%.4lf",yn);
		iz3.Format("%d",i);
		m_rez=a1+iz2+a2+iz+a3+iz3;
		UpdateData(FALSE);
	}
}
