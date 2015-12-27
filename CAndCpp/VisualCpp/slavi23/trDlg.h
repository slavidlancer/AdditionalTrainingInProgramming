#if !defined(AFX_TRDLG_H__E926B8EC_0AE2_4D39_A073_0884E2F3CE8C__INCLUDED_)
#define AFX_TRDLG_H__E926B8EC_0AE2_4D39_A073_0884E2F3CE8C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// trDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CtrDlg dialog

class CtrDlg : public CDialog
{
// Construction
public:
	CtrDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CtrDlg)
	enum { IDD = IDD_DIALOG1 };
	int		m_r;
	double	m_e2;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CtrDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CtrDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TRDLG_H__E926B8EC_0AE2_4D39_A073_0884E2F3CE8C__INCLUDED_)
