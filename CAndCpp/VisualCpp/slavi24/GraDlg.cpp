// GraDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "GraDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGraDlg dialog


CGraDlg::CGraDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CGraDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CGraDlg)
	m_gra = _T("");
	m_xx = 0.0;
	m_to = 0.0;
	m_k = -1;
	//}}AFX_DATA_INIT
}


void CGraDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CGraDlg)
	DDX_Text(pDX, IDC_STA, m_gra);
	DDX_Text(pDX, IDC_EDIT1, m_xx);
	DDX_Text(pDX, IDC_EDIT2, m_to);
	DDX_Radio(pDX, IDC_RADIO1, m_k);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CGraDlg, CDialog)
	//{{AFX_MSG_MAP(CGraDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGraDlg message handlers
