// slavi10Dlg.h : header file
//

#if !defined(AFX_SLAVI10DLG_H__DA1BBB85_6943_4485_8B30_70FC56CEA20B__INCLUDED_)
#define AFX_SLAVI10DLG_H__DA1BBB85_6943_4485_8B30_70FC56CEA20B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi10Dlg dialog

class CSlavi10Dlg : public CDialog
{
// Construction
public:
	CSlavi10Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi10Dlg)
	enum { IDD = IDD_SLAVI10_DIALOG };
	CString	m_a;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi10Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi10Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnTimer(UINT nIDEvent);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI10DLG_H__DA1BBB85_6943_4485_8B30_70FC56CEA20B__INCLUDED_)
