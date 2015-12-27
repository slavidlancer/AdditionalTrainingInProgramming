// slavi25aDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi25a.h"
#include "slavi25aDlg.h"
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
// CSlavi25aDlg dialog

CSlavi25aDlg::CSlavi25aDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi25aDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi25aDlg)
	m_a = 0.0;
	m_b = 0.0;
	m_c = 0.0;
	m_at = _T("");
	m_bt = _T("");
	m_ct = _T("");
	m_rez = _T("");
	m_n = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi25aDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi25aDlg)
	DDX_Control(pDX, IDC_BUTTON1, m_i);
	DDX_Control(pDX, IDC_EDIT3, m_e3);
	DDX_Control(pDX, IDC_EDIT2, m_e2);
	DDX_Control(pDX, IDC_EDIT1, m_e1);
	DDX_Text(pDX, IDC_EDIT1, m_a);
	DDX_Text(pDX, IDC_EDIT2, m_b);
	DDX_Text(pDX, IDC_EDIT3, m_c);
	DDX_Text(pDX, IDC_STAT, m_at);
	DDX_Text(pDX, IDC_STA, m_bt);
	DDX_Text(pDX, IDC_ST, m_ct);
	DDX_Text(pDX, IDC_STATI, m_rez);
	DDX_Text(pDX, IDC_S, m_n);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi25aDlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi25aDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON1, OnButton1)
	ON_BN_CLICKED(IDC_BUTTON2, OnButton2)
	ON_COMMAND(ID_FIGURI_LICEPERIMETAR_OKRAJNOST, OnFiguriLiceperimetarOkrajnost)
	ON_COMMAND(ID_FIGURI_LICEPERIMETAR_PRAVOAGALNIK, OnFiguriLiceperimetarPravoagalnik)
	ON_COMMAND(ID_FIGURI_LICEPERIMETAR_TRIAGALNIK, OnFiguriLiceperimetarTriagalnik)
	ON_COMMAND(ID_FIGURI_POVARHNINAOBEM_PARALELEPIPED, OnFiguriPovarhninaobemParalelepiped)
	ON_COMMAND(ID_FIGURI_POVARHNINAOBEM_SFERA, OnFiguriPovarhninaobemSfera)
	ON_COMMAND(ID_FIGURI_POVARHNINAOBEM_TETRAEDAR, OnFiguriPovarhninaobemTetraedar)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi25aDlg message handlers

BOOL CSlavi25aDlg::OnInitDialog()
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
	m_i.EnableWindow(FALSE);
	m_e1.EnableWindow(FALSE);
	m_e2.EnableWindow(FALSE);
	m_e3.EnableWindow(FALSE);
	f=6;
	m_n="izberete figura";
	UpdateData(FALSE);
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSlavi25aDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CSlavi25aDlg::OnPaint() 
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
HCURSOR CSlavi25aDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void okr(double r,double *p,double *s)
{
	*p=2*3.14*r;
	*s=3.14*r*r;
}

void pra(double a,double b,double *p,double *s)
{
	*p=2*a+2*b;
	*s=a*b;
}

void tri(double a,double b,double c,double *p,double *s)
{
	double pe,per;
	per=a+b+c;
	pe=(per)/2;
	*p=per;
	*s=sqrt(pe*(pe-a)*(pe-b)*(pe-c));
}

void sfe(double r,double *s,double *v)
{
	*s=4*3.14*r*r;
	*v=(4*3.14*r*r*r)/3;
}

void par(double a,double b,double c,double *s,double *v)
{
	*s=2*(a*b+b*c+a*c);
	*v=a*b*c;
}

void tet(double a,double b,double c,double *s,double *v)
{
	double be,peri;
	tri(a,a,a,&peri,&be);
	*s=(peri*b)/2+be;
	*v=(be*c)/3;
}

void CSlavi25aDlg::OnButton1() 
{
	// TODO: Add your control notification handler code here
	double pe,li;
	UpdateData(TRUE);
	if(f==0) okr(m_a,&pe,&li);
	if(f==1) pra(m_a,m_b,&pe,&li);
	if(f==2)
	{
		if(((m_a+m_b)>m_c)&&((m_a+m_c)>m_b)&&((m_b+m_c)>m_a))
			tri(m_a,m_b,m_c,&pe,&li);
		else
		{
			MessageBox("vavedete strani na triagalnik","gre6ka");
			pe=0;
			li=0;
		}
	}
	m_rez.Format("rezultata e:\nperimetar=%.2lf\nlice=%.2lf",pe,li);
	if(f==3) par(m_a,m_b,m_c,&pe,&li);
	if(f==4) sfe(m_a,&pe,&li);
	if(f==5) tet(m_a,m_b,m_c,&pe,&li);
	if(f<3)
		m_rez.Format("rezultata e:\nperimetar=%.2lf\nlice=%.2lf",pe,li);
	else if((f>2)&&(f<6))
		m_rez.Format("rezultata e:\npovarhnina=%.2lf\nobem=%.2lf",pe,li);
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnButton2() 
{
	// TODO: Add your control notification handler code here
	exit(0);
}

void CSlavi25aDlg::OnFiguriLiceperimetarOkrajnost() 
{
	// TODO: Add your command handler code here
	f=0;
	m_e1.EnableWindow(FALSE);
	m_at="";
	m_e2.EnableWindow(FALSE);
	m_bt="";
	m_e3.EnableWindow(FALSE);
	m_ct="";
	m_rez="";
	m_e1.EnableWindow(TRUE);
	m_at="radius=";
	m_i.EnableWindow(TRUE);
	m_n="figura:okrajnost";
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnFiguriLiceperimetarPravoagalnik() 
{
	// TODO: Add your command handler code here
	f=1;
	m_e1.EnableWindow(FALSE);
	m_at="";
	m_e2.EnableWindow(FALSE);
	m_bt="";
	m_e3.EnableWindow(FALSE);
	m_ct="";
	m_rez="";
	m_e1.EnableWindow(TRUE);
	m_at="a=";
	m_e2.EnableWindow(TRUE);
	m_bt="b=";
	m_i.EnableWindow(TRUE);
	m_n="figura:pravoagalnik";
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnFiguriLiceperimetarTriagalnik() 
{
	// TODO: Add your command handler code here
	f=2;
	m_e1.EnableWindow(TRUE);
	m_at="a=";
	m_e2.EnableWindow(TRUE);
	m_bt="b=";
	m_e3.EnableWindow(TRUE);
	m_ct="c=";
	m_rez="";
	m_i.EnableWindow(TRUE);
	m_n="figura:triagalnik";
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnFiguriPovarhninaobemParalelepiped() 
{
	// TODO: Add your command handler code here
	f=3;
	m_e1.EnableWindow(FALSE);
	m_at="";
	m_e2.EnableWindow(FALSE);
	m_bt="";
	m_e3.EnableWindow(FALSE);
	m_ct="";
	m_rez="";
	m_e1.EnableWindow(TRUE);
	m_at="a=";
	m_e2.EnableWindow(TRUE);
	m_bt="b=";
	m_e3.EnableWindow(TRUE);
	m_ct="c=";
	m_i.EnableWindow(TRUE);
	m_n="figura:paralelepiped";
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnFiguriPovarhninaobemSfera() 
{
	// TODO: Add your command handler code here
	f=4;
	m_e1.EnableWindow(FALSE);
	m_at="";
	m_e2.EnableWindow(FALSE);
	m_bt="";
	m_e3.EnableWindow(FALSE);
	m_ct="";
	m_rez="";
	m_e1.EnableWindow(TRUE);
	m_at="radius=";
	m_i.EnableWindow(TRUE);
	m_n="figura:sfera";
	UpdateData(FALSE);
}

void CSlavi25aDlg::OnFiguriPovarhninaobemTetraedar() 
{
	// TODO: Add your command handler code here
	f=5;
	m_e1.EnableWindow(FALSE);
	m_at="";
	m_e2.EnableWindow(FALSE);
	m_bt="";
	m_e3.EnableWindow(FALSE);
	m_ct="";
	m_rez="";
	m_e1.EnableWindow(TRUE);
	m_at="rab=";
	m_e2.EnableWindow(TRUE);
	m_bt="apotema=";
	m_e3.EnableWindow(TRUE);
	m_ct="viso4ina=";
	m_i.EnableWindow(TRUE);
	m_n="figura:tetraedar";
	UpdateData(FALSE);
}
