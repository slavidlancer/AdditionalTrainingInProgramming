// slavi002Dlg.h : header file
//

#if !defined(AFX_SLAVI002DLG_H__B2127CBB_029E_4CB0_809C_AE6C86EFB04D__INCLUDED_)
#define AFX_SLAVI002DLG_H__B2127CBB_029E_4CB0_809C_AE6C86EFB04D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi002Dlg dialog

class CSlavi002Dlg : public CDialog
{
// Construction
public:
	CSlavi002Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi002Dlg)
	enum { IDD = IDD_SLAVI002_DIALOG };
	CString	m_edit;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi002Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi002Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnExit();
	afx_msg void OnShow();
	afx_msg void OnClear();
	afx_msg void OnDefault();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI002DLG_H__B2127CBB_029E_4CB0_809C_AE6C86EFB04D__INCLUDED_)
