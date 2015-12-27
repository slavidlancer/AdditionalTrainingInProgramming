// ParDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi19.h"
#include "ParDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CParDlg dialog


CParDlg::CParDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CParDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CParDlg)
	m_ed = 0;
	//}}AFX_DATA_INIT
}


void CParDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CParDlg)
	DDX_Control(pDX, IDC_SPIN1, m_s);
	DDX_Text(pDX, IDC_EDIT1, m_ed);
	DDV_MinMaxInt(pDX, m_ed, 0, 100);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CParDlg, CDialog)
	//{{AFX_MSG_MAP(CParDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CParDlg message handlers
