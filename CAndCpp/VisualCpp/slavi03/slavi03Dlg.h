// slavi03Dlg.h : header file
//

#if !defined(AFX_SLAVI03DLG_H__543561ED_BDC6_4392_8BB5_A4516F3968CB__INCLUDED_)
#define AFX_SLAVI03DLG_H__543561ED_BDC6_4392_8BB5_A4516F3968CB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi03Dlg dialog

class CSlavi03Dlg : public CDialog
{
// Construction
public:
	CSlavi03Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi03Dlg)
	enum { IDD = IDD_SLAVI03_DIALOG };
	float	m_edit1;
	float	m_edit2;
	float	m_edit3;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi03Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi03Dlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnIzhod();
	afx_msg void OnIz4isli();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI03DLG_H__543561ED_BDC6_4392_8BB5_A4516F3968CB__INCLUDED_)
