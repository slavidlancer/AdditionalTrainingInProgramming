// OpenDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi20.h"
#include "OpenDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// COpenDlg dialog


COpenDlg::COpenDlg(CWnd* pParent /*=NULL*/)
	: CDialog(COpenDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(COpenDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void COpenDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(COpenDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(COpenDlg, CDialog)
	//{{AFX_MSG_MAP(COpenDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// COpenDlg message handlers
