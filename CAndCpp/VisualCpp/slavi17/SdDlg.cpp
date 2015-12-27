// SdDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi17.h"
#include "SdDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSdDlg dialog


CSdDlg::CSdDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSdDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSdDlg)
	m_ed = _T("");
	m_r = -1;
	//}}AFX_DATA_INIT
}


void CSdDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSdDlg)
	DDX_Text(pDX, IDC_e, m_ed);
	DDX_Radio(pDX, IDC_RADIO1, m_r);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSdDlg, CDialog)
	//{{AFX_MSG_MAP(CSdDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSdDlg message handlers
void CSdDlg::OnOK() 
{
	// TODO: Add extra validation here
	
	CDialog::OnOK();
}
