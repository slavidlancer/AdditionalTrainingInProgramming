// SnDlg.cpp : implementation file
//

#include "stdafx.h"
#include "slavi18.h"
#include "SnDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSnDlg dialog


CSnDlg::CSnDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSnDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSnDlg)
	m_c1 = TRUE;
	m_c2 = TRUE;
	m_us = 0.0f;
	m_vr = 0.0f;
	//}}AFX_DATA_INIT
}


void CSnDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSnDlg)
	DDX_Check(pDX, IDC_CHECK1, m_c1);
	DDX_Check(pDX, IDC_CHECK2, m_c2);
	DDX_Text(pDX, IDC_e1, m_us);
	DDX_Text(pDX, IDC_e2, m_vr);
	DDV_MinMaxFloat(pDX, m_vr, 0.f, 10000.f);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSnDlg, CDialog)
	//{{AFX_MSG_MAP(CSnDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSnDlg message handlers
