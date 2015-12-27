// slavi02Dlg.h : header file
//

#if !defined(AFX_SLAVI02DLG_H__33E0A810_E3A5_42F8_B86E_EF61F7E35F49__INCLUDED_)
#define AFX_SLAVI02DLG_H__33E0A810_E3A5_42F8_B86E_EF61F7E35F49__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi02Dlg dialog

class CSlavi02Dlg : public CDialog
{
// Construction
public:
	CSlavi02Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi02Dlg)
	enum { IDD = IDD_SLAVI02_DIALOG };
	CString	m_edit;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi02Dlg)
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi02Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnIzhod();
	afx_msg void OnShow();
	afx_msg void OnClear();
	afx_msg void OnDefault();
	afx_msg void OnExit();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI02DLG_H__33E0A810_E3A5_42F8_B86E_EF61F7E35F49__INCLUDED_)
