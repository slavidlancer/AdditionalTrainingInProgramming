// slavi07Dlg.h : header file
//

#if !defined(AFX_SLAVI07DLG_H__4588726B_DBE0_4DED_A466_3CCE740C11FE__INCLUDED_)
#define AFX_SLAVI07DLG_H__4588726B_DBE0_4DED_A466_3CCE740C11FE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi07Dlg dialog

class CSlavi07Dlg : public CDialog
{
// Construction
public:
	CSlavi07Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi07Dlg)
	enum { IDD = IDD_SLAVI07_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi07Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi07Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI07DLG_H__4588726B_DBE0_4DED_A466_3CCE740C11FE__INCLUDED_)
