#if !defined(AFX_PADLG_H__5A5E6A91_BB66_4271_817A_95405610976C__INCLUDED_)
#define AFX_PADLG_H__5A5E6A91_BB66_4271_817A_95405610976C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// PaDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CPaDlg dialog

class CPaDlg : public CDialog
{
// Construction
public:
	CPaDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CPaDlg)
	enum { IDD = IDD_DIALOG1 };
	double	m_a;
	double	m_b;
	double	m_c;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPaDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CPaDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PADLG_H__5A5E6A91_BB66_4271_817A_95405610976C__INCLUDED_)
