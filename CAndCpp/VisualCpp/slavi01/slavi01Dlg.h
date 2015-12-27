// slavi01Dlg.h : header file
//

#if !defined(AFX_SLAVI01DLG_H__3BBE6EAE_9226_4897_8AC1_561ECAC6CC32__INCLUDED_)
#define AFX_SLAVI01DLG_H__3BBE6EAE_9226_4897_8AC1_561ECAC6CC32__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi01Dlg dialog

class CSlavi01Dlg : public CDialog
{
// Construction
public:
	CSlavi01Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi01Dlg)
	enum { IDD = IDD_SLAVI01_DIALOG };
	CString	m_edit;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi01Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi01Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnPozdrav();
	afx_msg void OnPreduprejdenie();
	afx_msg void OnIzhod();
	afx_msg void OnExit();
	afx_msg void OnShow();
	afx_msg void OnChangeEdit1();
	afx_msg void OnClear();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI01DLG_H__3BBE6EAE_9226_4897_8AC1_561ECAC6CC32__INCLUDED_)
