// PaDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi24.h"
#include "PaDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPaDlg dialog


CPaDlg::CPaDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CPaDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CPaDlg)
	m_a = 0.0;
	m_b = 0.0;
	m_c = 0.0;
	//}}AFX_DATA_INIT
}


void CPaDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CPaDlg)
	DDX_Text(pDX, IDC_EDIT1, m_a);
	DDX_Text(pDX, IDC_EDIT2, m_b);
	DDX_Text(pDX, IDC_EDIT3, m_c);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CPaDlg, CDialog)
	//{{AFX_MSG_MAP(CPaDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPaDlg message handlers
