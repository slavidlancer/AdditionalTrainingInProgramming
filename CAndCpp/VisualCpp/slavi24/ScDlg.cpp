// ScDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "ScDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CScDlg dialog


CScDlg::CScDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CScDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CScDlg)
	m_a = 0;
	m_b = 0.0;
	m_tos = 0.0;
	//}}AFX_DATA_INIT
}


void CScDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CScDlg)
	DDX_Text(pDX, IDC_EDIT1, m_a);
	DDX_Text(pDX, IDC_EDIT2, m_b);
	DDX_Text(pDX, IDC_EDIT3, m_tos);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CScDlg, CDialog)
	//{{AFX_MSG_MAP(CScDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CScDlg message handlers
