// slavi26aDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi26a.h"
#include "GeDlg.h"
#include "slavi26aDlg.h"

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
// CSlavi26aDlg dialog

CSlavi26aDlg::CSlavi26aDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSlavi26aDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSlavi26aDlg)
	m_rez = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CSlavi26aDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSlavi26aDlg)
	DDX_Text(pDX, IDC_STATI, m_rez);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSlavi26aDlg, CDialog)
	//{{AFX_MSG_MAP(CSlavi26aDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_COMMAND(ID_GENERIRANE, OnGenerirane)
	ON_COMMAND(ID_IZHOD, OnIzhod)
	ON_COMMAND(ID_OBRABOTKA_MAKSIMALNO, OnObrabotkaMaksimalno)
	ON_COMMAND(ID_OBRABOTKA_PODREJDANE, OnObrabotkaPodrejdane)
	ON_COMMAND(ID_OBRABOTKA_SREDNO, OnObrabotkaSredno)
	ON_COMMAND(ID_POKAZVANE, OnPokazvane)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSlavi26aDlg message handlers

BOOL CSlavi26aDlg::OnInitDialog()
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
	f=0;
	gen.m_n=1;
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSlavi26aDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CSlavi26aDlg::OnPaint() 
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
HCURSOR CSlavi26aDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void gene(int br,int *xx)
{
	int *p;
	for(p=xx;p<xx+br;p++)
	{
		*p=2+rand()%5;
	}
}

void pok(int br,int *xx,CString *mr)
{
	int *p,i,it;
	CString mrp,mrr;
	i=1;
	for(p=xx;p<xx+br;p++)
	{
		it=*p;
		mrp.Format("\t%d\t",it);
		mrr=mrr+mrp;
		if(i%5==0) mrr=mrr+"\n\n";
		i++;
	}
	*mr=mrr;
}

void sre(int br,int *xx,double *sr)
{
	int *p,su;
	su=0;
	for(p=xx;p<xx+br;p++)
		su=su+(*p);
	*sr=double(su)/double(br);
}

void maxi(int br,int *xx,int *ma,int *iz,int *y,int *ba,CString *poz)
{
	int *p,io,ioo,ixi,maxim;
	CString rtt,trr,tpoz,tpozi;
	p=xx;
	maxim=*p;
	io=1;
	for(p=xx+1;p<xx+br;p++)
	{
		if(*p>maxim)
		{
			maxim=*p;
			io++;
		}
	}
	*ma=maxim;
	*iz=io;
	ioo=1;
	ixi=0;
	for(p=xx;p<xx+br;p++)
	{	
		if(*p==maxim)
		{
			*y=ioo;
			tpozi.Format(" %d ",ioo);
			tpoz=tpoz+tpozi;
			*ba=ixi;
			ixi++;
			y++;
		}
		ioo++;
	}
	*poz=tpoz;
}

void sor(int br,int *xx)
{
	int *p,*pp,*ppp,t;
	for(pp=xx;pp<xx+br;pp++)
	{
		p=pp;
		for(ppp=pp;ppp<xx+br;ppp++)
		{
			if(*p>*ppp) p=ppp;
		}
		t=*pp;
		*pp=(*p);
		*p=t;
	}
}

void CSlavi26aDlg::OnGenerirane() 
{
	// TODO: Add your command handler code here
	int k;
	CString m;
	k=gen.DoModal();
	if(k==IDOK)
	{
		gene(gen.m_n,x);
		f=1;
		m.Format("generiran e masiv s %d elementa",gen.m_n);
		m_rez=m;
		UpdateData(FALSE);
	}
	else
	{
		m_rez="";
		UpdateData(FALSE);
	}
}

void CSlavi26aDlg::OnIzhod() 
{
	// TODO: Add your command handler code here
	exit(0);
}

void CSlavi26aDlg::OnObrabotkaMaksimalno() 
{
	// TODO: Add your command handler code here
	int ix=0;
	int max,bab,tx,t[100];
	CString mx,mp,mpp,pozt;
	if(f)
	{
		maxi(gen.m_n,x,&max,&tx,t,&bab,&pozt);
		mx.Format("\nmaksimalnata ocenka e %d (na ",max);
		m_rez=m_rez+mx+" poziciq(i)"+pozt+")";
		UpdateData(FALSE);
	}
	else
		MessageBox("generiraite masiv","gre6ka");
}

void CSlavi26aDlg::OnObrabotkaPodrejdane() 
{
	// TODO: Add your command handler code here
	if(f)
	{
		sor(gen.m_n,x);
	}
	else
		MessageBox("generiraite masiv","gre6ka");
}

void CSlavi26aDlg::OnObrabotkaSredno() 
{
	// TODO: Add your command handler code here
	double sred;
	CString ms;
	if(f)
	{
		sre(gen.m_n,x,&sred);
		ms.Format("\nsredniq uspeh e %.2lf",sred);
		m_rez=m_rez+ms;
		UpdateData(FALSE);
	}
	else
		MessageBox("generiraite masiv","gre6ka");
}

void CSlavi26aDlg::OnPokazvane() 
{
	// TODO: Add your command handler code here
	int i=0;
	CString mpr;
	m_rez=m_rez+"\n\n";
	if(f)
	{
		pok(gen.m_n,x,&mpr);
		m_rez=m_rez+mpr;
		UpdateData(FALSE);
	}
	else
		MessageBox("generiraite masiv","gre6ka");
}
