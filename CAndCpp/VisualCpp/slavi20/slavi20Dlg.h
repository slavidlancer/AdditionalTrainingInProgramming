// slavi20Dlg.h : header file
//

#if !defined(AFX_SLAVI20DLG_H__A4BF06AC_B0F9_45C9_A7E5_A94F3830B9B2__INCLUDED_)
#define AFX_SLAVI20DLG_H__A4BF06AC_B0F9_45C9_A7E5_A94F3830B9B2__INCLUDED_

#include "OpenDlg.h"	// Added by ClassView
#include "SaveDlg.h"	// Added by ClassView
#include "ColorDlg.h"	// Added by ClassView
#include "GlobalDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi20Dlg dialog

class CSlavi20Dlg : public CDialog
{
// Construction
public:
	CSlavi20Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi20Dlg)
	enum { IDD = IDD_SLAVI20_DIALOG };
	CString	m_st;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi20Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi20Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnFileExit();
	afx_msg void OnMessageLocal();
	afx_msg void OnMessageGlobal();
	afx_msg void OnFileSave();
	afx_msg void OnFileOpen();
	afx_msg void OnFileColor();
	afx_msg void OnClear();
	afx_msg void OnAbout();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CGlobalDlg global;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI20DLG_H__A4BF06AC_B0F9_45C9_A7E5_A94F3830B9B2__INCLUDED_)
