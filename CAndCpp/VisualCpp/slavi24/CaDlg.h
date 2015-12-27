#if !defined(AFX_CADLG_H__4ED9BD3A_617E_4EC6_AA2C_52F7D215D09B__INCLUDED_)
#define AFX_CADLG_H__4ED9BD3A_617E_4EC6_AA2C_52F7D215D09B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// CaDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCaDlg dialog

class CCaDlg : public CDialog
{
// Construction
public:
	CCaDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCaDlg)
	enum { IDD = IDD_DIALOG2 };
	CString	m_iz;
	double	m_x;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCaDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCaDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CADLG_H__4ED9BD3A_617E_4EC6_AA2C_52F7D215D09B__INCLUDED_)
