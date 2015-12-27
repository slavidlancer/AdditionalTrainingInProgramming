// fuDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi23.h"
#include "fuDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CfuDlg dialog


CfuDlg::CfuDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CfuDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CfuDlg)
	m_c = _T("");
	m_e = 0.0;
	//}}AFX_DATA_INIT
}


void CfuDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CfuDlg)
	DDX_CBString(pDX, IDC_COMBO1, m_c);
	DDX_Text(pDX, IDC_EDIT1, m_e);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CfuDlg, CDialog)
	//{{AFX_MSG_MAP(CfuDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CfuDlg message handlers
