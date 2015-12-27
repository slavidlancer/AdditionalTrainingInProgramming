// GeDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi26a.h"
#include "GeDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGeDlg dialog


CGeDlg::CGeDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CGeDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CGeDlg)
	m_n = 0;
	//}}AFX_DATA_INIT
}


void CGeDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CGeDlg)
	DDX_Text(pDX, IDC_EDIT1, m_n);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CGeDlg, CDialog)
	//{{AFX_MSG_MAP(CGeDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGeDlg message handlers
