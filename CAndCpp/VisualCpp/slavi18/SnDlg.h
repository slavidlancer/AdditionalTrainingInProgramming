#if !defined(AFX_SNDLG_H__E9D51A24_682A_4005_AE03_3F50D3E0C1C2__INCLUDED_)
#define AFX_SNDLG_H__E9D51A24_682A_4005_AE03_3F50D3E0C1C2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SnDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSnDlg dialog

class CSnDlg : public CDialog
{
// Construction
public:
	CSnDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSnDlg)
	enum { IDD = IDD_DIALOG1 };
	BOOL	m_c1;
	BOOL	m_c2;
	float	m_us;
	float	m_vr;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSnDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSnDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SNDLG_H__E9D51A24_682A_4005_AE03_3F50D3E0C1C2__INCLUDED_)
