// slavi05Dlg.h : header file
//

#if !defined(AFX_SLAVI05DLG_H__C2176BD2_1D9B_4394_BF22_862346842ECE__INCLUDED_)
#define AFX_SLAVI05DLG_H__C2176BD2_1D9B_4394_BF22_862346842ECE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi05Dlg dialog

class CSlavi05Dlg : public CDialog
{
// Construction
public:
	CSlavi05Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi05Dlg)
	enum { IDD = IDD_SLAVI05_DIALOG };
	CString	m_co;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi05Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi05Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnSelendokCombo1();
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI05DLG_H__C2176BD2_1D9B_4394_BF22_862346842ECE__INCLUDED_)
