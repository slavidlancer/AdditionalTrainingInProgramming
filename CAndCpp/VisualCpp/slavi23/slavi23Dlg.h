// slavi23Dlg.h : header file
//

#if !defined(AFX_SLAVI23DLG_H__2E5E733A_8477_4E88_9900_DE4EFBE24A95__INCLUDED_)
#define AFX_SLAVI23DLG_H__2E5E733A_8477_4E88_9900_DE4EFBE24A95__INCLUDED_

#include "trDlg.h"	// Added by ClassView
#include "fuDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi23Dlg dialog

class CSlavi23Dlg : public CDialog
{
// Construction
public:
	CSlavi23Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi23Dlg)
	enum { IDD = IDD_SLAVI23_DIALOG };
	CString	m_rez;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi23Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi23Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void One();
	afx_msg void Ont();
	afx_msg void Onf();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	CfuDlg fun;
	CtrDlg tra;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI23DLG_H__2E5E733A_8477_4E88_9900_DE4EFBE24A95__INCLUDED_)
