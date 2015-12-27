#if !defined(AFX_BROIDLG_H__853841BA_31DE_4181_A957_4DAA8D33995B__INCLUDED_)
#define AFX_BROIDLG_H__853841BA_31DE_4181_A957_4DAA8D33995B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// BroiDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CBroiDlg dialog

class CBroiDlg : public CDialog
{
// Construction
public:
	CBroiDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CBroiDlg)
	enum { IDD = IDD_DIALOG1 };
	double	m_x;
	int		m_n;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBroiDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CBroiDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BROIDLG_H__853841BA_31DE_4181_A957_4DAA8D33995B__INCLUDED_)
