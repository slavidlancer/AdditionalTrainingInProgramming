// slavi21Dlg.h : header file
//

#if !defined(AFX_SLAVI21DLG_H__C2F14C45_4265_4058_A8E1_CFE89E8CD24C__INCLUDED_)
#define AFX_SLAVI21DLG_H__C2F14C45_4265_4058_A8E1_CFE89E8CD24C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi21Dlg dialog

class CSlavi21Dlg : public CDialog
{
// Construction
public:
	CSlavi21Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi21Dlg)
	enum { IDD = IDD_SLAVI21_DIALOG };
	CString	m_ed;
	CString	m_st;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi21Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi21Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void Onhi();
	afx_msg void OnLow();
	afx_msg void OnCancel();
	afx_msg void OnCancelc();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI21DLG_H__C2F14C45_4265_4058_A8E1_CFE89E8CD24C__INCLUDED_)
