#if !defined(AFX_OPENDLG_H__2F96EDD6_55A4_4DD7_8FBD_4BBA4147C227__INCLUDED_)
#define AFX_OPENDLG_H__2F96EDD6_55A4_4DD7_8FBD_4BBA4147C227__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// OpenDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// COpenDlg dialog

class COpenDlg : public CDialog
{
// Construction
public:
	COpenDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(COpenDlg)
	enum { IDD = IDD_DIALOG1 };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(COpenDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(COpenDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_OPENDLG_H__2F96EDD6_55A4_4DD7_8FBD_4BBA4147C227__INCLUDED_)
