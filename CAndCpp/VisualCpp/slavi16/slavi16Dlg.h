// slavi16Dlg.h : header file
//

#if !defined(AFX_SLAVI16DLG_H__8B19EF4B_D2E7_4AEB_AB05_873C5850D2C8__INCLUDED_)
#define AFX_SLAVI16DLG_H__8B19EF4B_D2E7_4AEB_AB05_873C5850D2C8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi16Dlg dialog

class CSlavi16Dlg : public CDialog
{
// Construction
public:
	CSlavi16Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi16Dlg)
	enum { IDD = IDD_SLAVI16_DIALOG };
	CString	m_s;
	CString	m_st2;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi16Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi16Dlg)
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

#endif // !defined(AFX_SLAVI16DLG_H__8B19EF4B_D2E7_4AEB_AB05_873C5850D2C8__INCLUDED_)
