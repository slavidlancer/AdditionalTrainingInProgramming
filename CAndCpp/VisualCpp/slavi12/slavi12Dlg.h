// slavi12Dlg.h : header file
//

#if !defined(AFX_SLAVI12DLG_H__44ED53FE_E722_4613_8F42_12426DDCCE0C__INCLUDED_)
#define AFX_SLAVI12DLG_H__44ED53FE_E722_4613_8F42_12426DDCCE0C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi12Dlg dialog

class CSlavi12Dlg : public CDialog
{
// Construction
public:
	CSlavi12Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi12Dlg)
	enum { IDD = IDD_SLAVI12_DIALOG };
	CButton	m_b2;
	CButton	m_b1;
	CString	m_a;
	int		m_e;
	CString	m_st;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi12Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi12Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButton1();
	afx_msg void OnButton2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	bool flag;
	int br;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI12DLG_H__44ED53FE_E722_4613_8F42_12426DDCCE0C__INCLUDED_)
