// slavi14Dlg.h : header file
//

#if !defined(AFX_SLAVI14DLG_H__CD7C199E_C619_42DA_802D_626CA3FBB428__INCLUDED_)
#define AFX_SLAVI14DLG_H__CD7C199E_C619_42DA_802D_626CA3FBB428__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi14Dlg dialog

class CSlavi14Dlg : public CDialog
{
// Construction
public:
	CSlavi14Dlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi14Dlg)
	enum { IDD = IDD_SLAVI14_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi14Dlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi14Dlg)
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

#endif // !defined(AFX_SLAVI14DLG_H__CD7C199E_C619_42DA_802D_626CA3FBB428__INCLUDED_)
