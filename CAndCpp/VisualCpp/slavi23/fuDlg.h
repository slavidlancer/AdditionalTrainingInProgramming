#if !defined(AFX_FUDLG_H__4D3F65F9_8383_4BF5_817E_C2BED02E186E__INCLUDED_)
#define AFX_FUDLG_H__4D3F65F9_8383_4BF5_817E_C2BED02E186E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// fuDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CfuDlg dialog

class CfuDlg : public CDialog
{
// Construction
public:
	CfuDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CfuDlg)
	enum { IDD = IDD_DIALOG2 };
	CString	m_c;
	double	m_e;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CfuDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CfuDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FUDLG_H__4D3F65F9_8383_4BF5_817E_C2BED02E186E__INCLUDED_)
