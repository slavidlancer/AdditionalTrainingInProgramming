// slavi11Dlg.h : header file
//

#if !defined(AFX_SLAVI11DLG_H__55568724_F493_4F8E_9341_3F3CE54997DA__INCLUDED_)
#define AFX_SLAVI11DLG_H__55568724_F493_4F8E_9341_3F3CE54997DA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi11Dlg dialog

class CSlavi11Dlg : public CDialog
{
// Construction
public:
	CSlavi11Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi11Dlg)
	enum { IDD = IDD_SLAVI11_DIALOG };
	CSliderCtrl	m_co;
	int		m_a;
	CString	m_t;
	int		m_e1;
	int		m_e2;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi11Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi11Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI11DLG_H__55568724_F493_4F8E_9341_3F3CE54997DA__INCLUDED_)
