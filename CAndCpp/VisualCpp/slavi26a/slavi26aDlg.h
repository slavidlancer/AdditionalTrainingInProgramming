// slavi26aDlg.h : header file
//

#if !defined(AFX_SLAVI26ADLG_H__3D929A07_5352_4F5D_9196_AE4EB086AA4C__INCLUDED_)
#define AFX_SLAVI26ADLG_H__3D929A07_5352_4F5D_9196_AE4EB086AA4C__INCLUDED_

#include "GeDlg.h"	// Added by ClassView
#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CSlavi26aDlg dialog

class CSlavi26aDlg : public CDialog
{
// Construction
public:
	CSlavi26aDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CSlavi26aDlg)
	enum { IDD = IDD_SLAVI26A_DIALOG };
	CString	m_rez;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi26aDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CSlavi26aDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnGenerirane();
	afx_msg void OnIzhod();
	afx_msg void OnObrabotkaMaksimalno();
	afx_msg void OnObrabotkaPodrejdane();
	afx_msg void OnObrabotkaSredno();
	afx_msg void OnPokazvane();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
	bool f;
	int x[100];
	CGeDlg gen;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI26ADLG_H__3D929A07_5352_4F5D_9196_AE4EB086AA4C__INCLUDED_)
