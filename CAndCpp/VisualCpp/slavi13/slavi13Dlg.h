// slavi13Dlg.h : header file
//

#if !defined(AFX_SLAVI13DLG_H__9BA24EB4_1511_4088_A8E5_ADF382DCABAB__INCLUDED_)
#define AFX_SLAVI13DLG_H__9BA24EB4_1511_4088_A8E5_ADF382DCABAB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi13Dlg dialog

class CSlavi13Dlg : public CDialog
{
// Construction
public:
	CSlavi13Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi13Dlg)
	enum { IDD = IDD_SLAVI13_DIALOG };
	CSpinButtonCtrl	m_sp;
	CString	m_text;
	int		m_e;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi13Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi13Dlg)
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

#endif // !defined(AFX_SLAVI13DLG_H__9BA24EB4_1511_4088_A8E5_ADF382DCABAB__INCLUDED_)
