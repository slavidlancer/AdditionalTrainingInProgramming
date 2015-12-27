#if !defined(AFX_GLOBALDLG_H__8142CDBC_42BB_4EBC_A005_E67FD3D6D55B__INCLUDED_)
#define AFX_GLOBALDLG_H__8142CDBC_42BB_4EBC_A005_E67FD3D6D55B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GlobalDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CGlobalDlg dialog

class CGlobalDlg : public CDialog
{
// Construction
public:
	CGlobalDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CGlobalDlg)
	enum { IDD = IDD_DIALOG4 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGlobalDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CGlobalDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GLOBALDLG_H__8142CDBC_42BB_4EBC_A005_E67FD3D6D55B__INCLUDED_)
