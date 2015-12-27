// CaDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "CaDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCaDlg dialog


CCaDlg::CCaDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CCaDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCaDlg)
	m_iz = _T("");
	m_x = 0.0;
	//}}AFX_DATA_INIT
}


void CCaDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCaDlg)
	DDX_Text(pDX, IDC_st, m_iz);
	DDX_Text(pDX, IDC_EDIT1, m_x);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCaDlg, CDialog)
	//{{AFX_MSG_MAP(CCaDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCaDlg message handlers
