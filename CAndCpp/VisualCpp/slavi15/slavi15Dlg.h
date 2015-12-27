// slavi15Dlg.h : header file
//

#if !defined(AFX_SLAVI15DLG_H__6EE29782_FA53_4944_AD84_0314FD336BC9__INCLUDED_)
#define AFX_SLAVI15DLG_H__6EE29782_FA53_4944_AD84_0314FD336BC9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi15Dlg dialog

class CSlavi15Dlg : public CDialog
{
// Construction
public:
	CSlavi15Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi15Dlg)
	enum { IDD = IDD_SLAVI15_DIALOG };
	CString	m_st;
	int		m_a;
	float	m_e;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi15Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi15Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI15DLG_H__6EE29782_FA53_4944_AD84_0314FD336BC9__INCLUDED_)
