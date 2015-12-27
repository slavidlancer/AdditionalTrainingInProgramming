// SiDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "SiDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSiDlg dialog


CSiDlg::CSiDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSiDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSiDlg)
	m_nt = 0.0;
	m_ns = 0.0;
	m_tns = 0.0;
	m_p = -1;
	//}}AFX_DATA_INIT
}


void CSiDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSiDlg)
	DDX_Text(pDX, IDC_EDIT1, m_nt);
	DDX_Text(pDX, IDC_EDIT2, m_ns);
	DDX_Text(pDX, IDC_EDIT3, m_tns);
	DDX_Radio(pDX, IDC_RADIO1, m_p);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSiDlg, CDialog)
	//{{AFX_MSG_MAP(CSiDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSiDlg message handlers
