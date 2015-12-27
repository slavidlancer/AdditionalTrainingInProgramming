#if !defined(AFX_SCDLG_H__AD24C247_CDDB_4AB9_B198_71425B2A9D93__INCLUDED_)
#define AFX_SCDLG_H__AD24C247_CDDB_4AB9_B198_71425B2A9D93__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ScDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CScDlg dialog

class CScDlg : public CDialog
{
// Construction
public:
	CScDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CScDlg)
	enum { IDD = IDD_DIALOG4 };
	int		m_a;
	double	m_b;
	double	m_tos;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CScDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CScDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SCDLG_H__AD24C247_CDDB_4AB9_B198_71425B2A9D93__INCLUDED_)
