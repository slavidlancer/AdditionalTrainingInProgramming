// ToDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi22.h"
#include "ToDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CToDlg dialog


CToDlg::CToDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CToDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CToDlg)
	m_x2 = 0.0;
	m_eps = 0.0;
	//}}AFX_DATA_INIT
}


void CToDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CToDlg)
	DDX_Text(pDX, IDC_ed3, m_x2);
	DDX_Text(pDX, IDC_ed4, m_eps);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CToDlg, CDialog)
	//{{AFX_MSG_MAP(CToDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CToDlg message handlers
