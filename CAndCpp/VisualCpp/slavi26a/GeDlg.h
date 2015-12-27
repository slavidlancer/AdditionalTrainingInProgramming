#if !defined(AFX_GEDLG_H__D77D80BD_184A_482E_A90A_CB91F0EDF290__INCLUDED_)
#define AFX_GEDLG_H__D77D80BD_184A_482E_A90A_CB91F0EDF290__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GeDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CGeDlg dialog

class CGeDlg : public CDialog
{
// Construction
public:
	CGeDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CGeDlg)
	enum { IDD = IDD_DIALOG1 };
	int		m_n;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGeDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CGeDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GEDLG_H__D77D80BD_184A_482E_A90A_CB91F0EDF290__INCLUDED_)
