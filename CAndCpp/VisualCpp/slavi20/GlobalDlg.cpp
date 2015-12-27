// GlobalDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi20.h"
#include "GlobalDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGlobalDlg dialog


CGlobalDlg::CGlobalDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CGlobalDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CGlobalDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CGlobalDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CGlobalDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CGlobalDlg, CDialog)
	//{{AFX_MSG_MAP(CGlobalDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGlobalDlg message handlers
