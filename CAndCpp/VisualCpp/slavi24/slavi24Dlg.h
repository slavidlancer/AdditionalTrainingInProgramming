// slavi24Dlg.h : header file
//

#if !defined(AFX_SLAVI24DLG_H__EF772833_3E9F_478D_83C5_1B9D8E744646__INCLUDED_)
#define AFX_SLAVI24DLG_H__EF772833_3E9F_478D_83C5_1B9D8E744646__INCLUDED_

#include "PaDlg.h"	// Added by ClassView
#include "CaDlg.h"	// Added by ClassView
#include "GraDlg.h"	// Added by ClassView
#include "ScDlg.h"	// Added by ClassView
#include "SiDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi24Dlg dialog

class CSlavi24Dlg : public CDialog
{
// Construction
public:
	CSlavi24Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi24Dlg)
	enum { IDD = IDD_SLAVI24_DIALOG };
	CString	m_re;
	CString	m_rez;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi24Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi24Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnExit();
	afx_msg void OnParameters();
	afx_msg void OnBasicCalc();
	afx_msg void OnBasicGrad();
	afx_msg void OnBasicRadicals();
	afx_msg void OnOptimizationScan();
	afx_msg void OnOptimizationSimplex();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CSiDlg sim;
	CScDlg sca;
	CGraDlg gra;
	CCaDlg cal;
	CPaDlg par;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI24DLG_H__EF772833_3E9F_478D_83C5_1B9D8E744646__INCLUDED_)
