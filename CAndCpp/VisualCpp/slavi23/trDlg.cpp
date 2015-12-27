// trDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi23.h"
#include "trDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CtrDlg dialog


CtrDlg::CtrDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CtrDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CtrDlg)
	m_r = -1;
	m_e2 = 0.0;
	//}}AFX_DATA_INIT
}


void CtrDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CtrDlg)
	DDX_Radio(pDX, IDC_RADIO1, m_r);
	DDX_Text(pDX, IDC_EDIT1, m_e2);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CtrDlg, CDialog)
	//{{AFX_MSG_MAP(CtrDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CtrDlg message handlers
