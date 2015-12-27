// slavi25aDlg.h : header file
//

#if !defined(AFX_SLAVI25ADLG_H__4FABEA43_8744_4D7C_AF69_2569300643DB__INCLUDED_)
#define AFX_SLAVI25ADLG_H__4FABEA43_8744_4D7C_AF69_2569300643DB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi25aDlg dialog

class CSlavi25aDlg : public CDialog
{
// Construction
public:
	CSlavi25aDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi25aDlg)
	enum { IDD = IDD_SLAVI25A_DIALOG };
	CButton	m_i;
	CEdit	m_e3;
	CEdit	m_e2;
	CEdit	m_e1;
	double	m_a;
	double	m_b;
	double	m_c;
	CString	m_at;
	CString	m_bt;
	CString	m_ct;
	CString	m_rez;
	CString	m_n;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi25aDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi25aDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg void OnButton2();
	afx_msg void OnFiguriLiceperimetarOkrajnost();
	afx_msg void OnFiguriLiceperimetarPravoagalnik();
	afx_msg void OnFiguriLiceperimetarTriagalnik();
	afx_msg void OnFiguriPovarhninaobemParalelepiped();
	afx_msg void OnFiguriPovarhninaobemSfera();
	afx_msg void OnFiguriPovarhninaobemTetraedar();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	int f;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI25ADLG_H__4FABEA43_8744_4D7C_AF69_2569300643DB__INCLUDED_)
