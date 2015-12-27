// slavi18Dlg.h : header file
//

#if !defined(AFX_SLAVI18DLG_H__E983177E_BC74_4452_8B6D_F05CF71EB44E__INCLUDED_)
#define AFX_SLAVI18DLG_H__E983177E_BC74_4452_8B6D_F05CF71EB44E__INCLUDED_

#include "SnDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi18Dlg dialog

class CSlavi18Dlg : public CDialog
{
// Construction
public:
	CSlavi18Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi18Dlg)
	enum { IDD = IDD_SLAVI18_DIALOG };
	CButton	m_iz;
	CString	m_sta;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi18Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi18Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg void OnButton2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CSnDlg sn;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI18DLG_H__E983177E_BC74_4452_8B6D_F05CF71EB44E__INCLUDED_)
