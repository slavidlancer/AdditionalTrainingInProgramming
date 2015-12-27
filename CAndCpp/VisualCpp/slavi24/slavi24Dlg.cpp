// slavi24Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "PaDlg.h"
#include "CaDlg.h"
#include "GraDlg.h"
#include "ScDlg.h"
#include "SiDlg.h"
#include "slavi24Dlg.h"
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
// CSlavi24Dlg dialog

CSlavi24Dlg::CSlavi24Dlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi24Dlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi24Dlg)
	m_re = _T("");
	m_rez = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi24Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi24Dlg)
	DDX_Text(pDX, IDC_rez, m_re);
	DDX_Text(pDX, IDC_stat, m_rez);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi24Dlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi24Dlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_COMMAND(ID_EXIT, OnExit)
	ON_COMMAND(ID_PARAMETERS, OnParameters)
	ON_COMMAND(ID_BASIC_CALC, OnBasicCalc)
	ON_COMMAND(ID_BASIC_GRAD, OnBasicGrad)
	ON_COMMAND(ID_BASIC_RADICALS, OnBasicRadicals)
	ON_COMMAND(ID_OPTIMIZATION_SCAN, OnOptimizationScan)
	ON_COMMAND(ID_OPTIMIZATION_SIMPLEX, OnOptimizationSimplex)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi24Dlg message handlers

BOOL CSlavi24Dlg::OnInitDialog()
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

void CSlavi24Dlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CSlavi24Dlg::OnPaint() 
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
HCURSOR CSlavi24Dlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

double iz4is(double aa,double bb,double cc,double xx)
{

	return(aa*xx*xx+bb*xx+cc);
}

double gradi(double aaa,double bbb,double ccc,double xxx,double dx)
{
	double p,z;
	p=xxx+dx;
	z=iz4is(aaa,bbb,ccc,p)-iz4is(aaa,bbb,ccc,xxx);
	return(z/dx);
}

double gradie(double aaa,double bbb,double ccc,double xxx,double dx)
{
	double p,z;
	p=xxx+dx;
	z=iz4is(aaa,bbb,ccc,p)-iz4is(aaa,bbb,ccc,xxx-dx);
	return(z/(2*dx));
}

double di(double a,double b,double c)
{
	return(b*b-4*a*c);
}

void CSlavi24Dlg::OnExit() 
{
	// TODO: Add your command handler code here
	exit(0);
}

void CSlavi24Dlg::OnParameters() 
{
	// TODO: Add your command handler code here
	int q;
	q=par.DoModal();
	if(q==IDOK)
	{
		UpdateData(TRUE);
		CString m;
		m.Format("a=%.2lf b=%.2lf c=%.2lf",par.m_a,par.m_b,par.m_c);
		m_re=m;
		UpdateData(FALSE);
	}
}

void CSlavi24Dlg::OnBasicCalc() 
{
	// TODO: Add your command handler code here
	CString mm;
	mm.Format("iz4islqvane na funkciqta:\n%.2lf*x^2+%.2lf*x+%.2lf",par.m_a,par.m_b,par.m_c);
	cal.m_iz=mm;
	UpdateData(FALSE);
	int qq;
	qq=cal.DoModal();
	if(qq==IDOK)
	{
		UpdateData(TRUE);
		double iz;
		CString mmm;
		iz=iz4is(par.m_a,par.m_b,par.m_c,cal.m_x);
		mmm.Format("rezultat: %.2lf",iz);
		m_rez=mmm;
		UpdateData(FALSE);
	}
	if(qq==IDCANCEL)
	{
		m_rez="";
		UpdateData(FALSE);
	}
}

void CSlavi24Dlg::OnBasicGrad() 
{
	// TODO: Add your command handler code here
	CString mmm;
	mmm.Format("gradient na funkciqta:\n%.2lf*x^2+%.2lf*x+%.2lf",par.m_a,par.m_b,par.m_c);
	gra.m_gra=mmm;
	gra.m_k=0;
	gra.m_to=0.01;
	UpdateData(FALSE);
	int qqq;
	qqq=gra.DoModal();
	if(qqq==IDOK)
	{
		UpdateData(TRUE);
		double izz;
		CString mmm;
		if(gra.m_k==0)
		{
			izz=gradi(par.m_a,par.m_b,par.m_c,gra.m_xx,gra.m_to);
		}
		if(gra.m_k==1)
		{
			izz=gradie(par.m_a,par.m_b,par.m_c,gra.m_xx,gra.m_to);
		}
		mmm.Format("rezultat: %.2lf",izz);
		m_rez=mmm;
		UpdateData(FALSE);
	}
	if(qqq==IDCANCEL)
	{
		m_rez="";
		UpdateData(FALSE);
	}
}

void CSlavi24Dlg::OnBasicRadicals() 
{
	// TODO: Add your command handler code here
	double dd;
	dd=di(par.m_a,par.m_b,par.m_c);
	CString pr1,pr2;
	if(dd>0)
	{
		pr1.Format("realni koreni:\nx1=%.2lf  ",(-par.m_b+sqrt(dd))/(2*par.m_a));
		pr2.Format("x2=%.2lf",(-par.m_b-sqrt(dd))/(2*par.m_a));
	}
	if(dd<0)
	{
		pr1.Format("kompleksno spregnati koreni:\nrealna 4ast: %.2lf  ",(-par.m_b)/(2*par.m_a));
		pr2.Format("imaginerna 4ast: %.2lf",sqrt(fabs(dd))/(2*par.m_a));
	}
	m_rez=pr1+pr2;
	UpdateData(FALSE);
}

void CSlavi24Dlg::OnOptimizationScan() 
{
	// TODO: Add your command handler code here
	int qp;
	CString mmm;
	qp=sca.DoModal();
	if(qp==IDOK)
	{
		UpdateData(TRUE);
		double qt,qe,xe;
		if((sca.m_a<sca.m_b)&&((sca.m_b-sca.m_a)>sca.m_tos))
		{
		double ex=sca.m_a;
		xe=sca.m_a;
		qe=iz4is(par.m_a,par.m_b,par.m_c,sca.m_a);
		do
		{
			ex=ex+sca.m_tos;
			qt=iz4is(par.m_a,par.m_b,par.m_c,ex);
			if(qt>qe)
			{
				qe=qt;
				xe=ex;
			}
		}
		while((ex+sca.m_tos)<=sca.m_b);
		mmm.Format("rezultat: %.2lf pri %.2lf",qe,xe);
		m_rez=mmm;
		UpdateData(FALSE);
		}
		else MessageBox("Gre6no vavedeni danni","gre6ka");
	}
	if(qp==IDCANCEL)
	{
		m_rez="";
		UpdateData(FALSE);
	}
}

void CSlavi24Dlg::OnOptimizationSimplex() 
{
	// TODO: Add your command handler code here
	int qpp,c;
	double xi,xee,qee,qold,qnew,tot;
	CString mmx;
	sim.m_p=0;
	qpp=sim.DoModal();
	if(qpp==IDOK)
	{
		if(sim.m_p==0)
		{
			c=1;
		}
		if(sim.m_p==1)
		{
			c=-1;
		}
		tot=sim.m_ns;
		xee=sim.m_nt;
		xi=sim.m_nt;
		qold=iz4is(par.m_a,par.m_b,par.m_c,sim.m_nt);
		qee=qold;
		do
		{
			xi=xi+c*tot;
			qnew=iz4is(par.m_a,par.m_b,par.m_c,xi);
			if(qnew<qold)
			{
				c=-c;
				tot=tot/2;
			}
			if(qnew>qee)
			{
				qee=qnew;
				xee=xi;
			}
			qold=qnew;
		}
		while((tot*2)>sim.m_tns);
		mmx.Format("rezultat: %.2lf pri %.2lf",qee,xee);
		m_rez=mmx;
		UpdateData(FALSE);
	}		
	if(qpp==IDCANCEL)
	{
		m_rez="";
		UpdateData(FALSE);
	}
}
