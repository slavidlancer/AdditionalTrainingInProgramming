// slavi17Dlg.h : header file
//

#if !defined(AFX_SLAVI17DLG_H__EDA17384_012F_4B0E_BFFF_9B314878E4F5__INCLUDED_)
#define AFX_SLAVI17DLG_H__EDA17384_012F_4B0E_BFFF_9B314878E4F5__INCLUDED_

#include "SdDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi17Dlg dialog

class CSlavi17Dlg : public CDialog
{
// Construction
public:
	CSlavi17Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi17Dlg)
	enum { IDD = IDD_SLAVI17_DIALOG };
	CString	m_sta1;
	CString	m_sta2;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi17Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi17Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CSdDlg nd;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI17DLG_H__EDA17384_012F_4B0E_BFFF_9B314878E4F5__INCLUDED_)
