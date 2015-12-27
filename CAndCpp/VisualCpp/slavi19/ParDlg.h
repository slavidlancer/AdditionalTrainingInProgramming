#if !defined(AFX_PARDLG_H__7251F769_C542_429B_A2E3_392DA6D0E8D0__INCLUDED_)
#define AFX_PARDLG_H__7251F769_C542_429B_A2E3_392DA6D0E8D0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ParDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CParDlg dialog

class CParDlg : public CDialog
{
// Construction
public:
	CParDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CParDlg)
	enum { IDD = IDD_DIALOG1 };
	CSpinButtonCtrl	m_s;
	int		m_ed;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CParDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CParDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARDLG_H__7251F769_C542_429B_A2E3_392DA6D0E8D0__INCLUDED_)
