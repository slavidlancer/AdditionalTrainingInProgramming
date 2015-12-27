// BroiDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi22.h"
#include "BroiDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CBroiDlg dialog


CBroiDlg::CBroiDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CBroiDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CBroiDlg)
	m_x = 0.0;
	m_n = 0;
	//}}AFX_DATA_INIT
}


void CBroiDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CBroiDlg)
	DDX_Text(pDX, IDC_ed2, m_x);
	DDV_MinMaxDouble(pDX, m_x, 1., 10000.);
	DDX_Text(pDX, IDC_EDIT3, m_n);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CBroiDlg, CDialog)
	//{{AFX_MSG_MAP(CBroiDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CBroiDlg message handlers
