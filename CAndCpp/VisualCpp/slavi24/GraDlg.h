#if !defined(AFX_GRADLG_H__6618DDE8_EAE5_42D3_977F_E70F4FF34140__INCLUDED_)
#define AFX_GRADLG_H__6618DDE8_EAE5_42D3_977F_E70F4FF34140__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GraDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CGraDlg dialog

class CGraDlg : public CDialog
{
// Construction
public:
	CGraDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CGraDlg)
	enum { IDD = IDD_DIALOG3 };
	CString	m_gra;
	double	m_xx;
	double	m_to;
	int		m_k;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGraDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CGraDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GRADLG_H__6618DDE8_EAE5_42D3_977F_E70F4FF34140__INCLUDED_)
