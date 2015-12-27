#if !defined(AFX_SIDLG_H__9278A521_450C_4BE1_916D_B1D568DE441B__INCLUDED_)
#define AFX_SIDLG_H__9278A521_450C_4BE1_916D_B1D568DE441B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SiDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSiDlg dialog

class CSiDlg : public CDialog
{
// Construction
public:
	CSiDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSiDlg)
	enum { IDD = IDD_DIALOG5 };
	double	m_nt;
	double	m_ns;
	double	m_tns;
	int		m_p;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSiDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSiDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SIDLG_H__9278A521_450C_4BE1_916D_B1D568DE441B__INCLUDED_)
