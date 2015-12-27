// slavi19Dlg.h : header file
//

#if !defined(AFX_SLAVI19DLG_H__8FF5D546_4045_4703_B033_86B51EA527C8__INCLUDED_)
#define AFX_SLAVI19DLG_H__8FF5D546_4045_4703_B033_86B51EA527C8__INCLUDED_

#include "ParDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi19Dlg dialog

class CSlavi19Dlg : public CDialog
{
// Construction
public:
	CSlavi19Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi19Dlg)
	enum { IDD = IDD_SLAVI19_DIALOG };
	CProgressCtrl	m_p;
	CButton	m_sto;
	CButton	m_sta;
	CButton	m_par;
	CString	m_st1;
	CString	m_st2;
	CString	m_st3;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi19Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi19Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButton2();
	afx_msg void OnButton3();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	int br;
	int i;
	CParDlg im;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI19DLG_H__8FF5D546_4045_4703_B033_86B51EA527C8__INCLUDED_)
