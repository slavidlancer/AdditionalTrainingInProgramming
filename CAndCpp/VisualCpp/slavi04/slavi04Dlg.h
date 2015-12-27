// slavi04Dlg.h : header file
//

#if !defined(AFX_SLAVI04DLG_H__68419682_9BAE_460A_834F_05D932C85D5B__INCLUDED_)
#define AFX_SLAVI04DLG_H__68419682_9BAE_460A_834F_05D932C85D5B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi04Dlg dialog

class CSlavi04Dlg : public CDialog
{
// Construction
public:
	CSlavi04Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi04Dlg)
	enum { IDD = IDD_SLAVI04_DIALOG };
	BOOL	m_pe;
	BOOL	m_li;
	float	m_a;
	float	m_b;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi04Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi04Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI04DLG_H__68419682_9BAE_460A_834F_05D932C85D5B__INCLUDED_)
