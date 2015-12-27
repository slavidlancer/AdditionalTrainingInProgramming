// slavi22Dlg.h : header file
//

#if !defined(AFX_SLAVI22DLG_H__571E6308_FFF8_466E_A346_A7E7C3E398AE__INCLUDED_)
#define AFX_SLAVI22DLG_H__571E6308_FFF8_466E_A346_A7E7C3E398AE__INCLUDED_

#include "BroiDlg.h"	// Added by ClassView
#include "ToDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi22Dlg dialog

class CSlavi22Dlg : public CDialog
{
// Construction
public:
	CSlavi22Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi22Dlg)
	enum { IDD = IDD_SLAVI22_DIALOG };
	CString	m_rez;
	CString	m_rr;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi22Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi22Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void Onex();
	afx_msg void OnExpBroi();
	afx_msg void OnExpTo4nost();
	afx_msg void OnSqrtBroi();
	afx_msg void OnSqrtTo4nost();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CToDlg to;
	CBroiDlg br;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI22DLG_H__571E6308_FFF8_466E_A346_A7E7C3E398AE__INCLUDED_)
