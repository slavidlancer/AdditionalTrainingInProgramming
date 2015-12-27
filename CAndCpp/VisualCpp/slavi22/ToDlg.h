#if !defined(AFX_TODLG_H__2F5813FD_B369_4443_8B4E_85811610DDF0__INCLUDED_)
#define AFX_TODLG_H__2F5813FD_B369_4443_8B4E_85811610DDF0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ToDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CToDlg dialog

class CToDlg : public CDialog
{
// Construction
public:
	CToDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CToDlg)
	enum { IDD = IDD_DIALOG2 };
	double	m_x2;
	double	m_eps;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CToDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CToDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TODLG_H__2F5813FD_B369_4443_8B4E_85811610DDF0__INCLUDED_)
