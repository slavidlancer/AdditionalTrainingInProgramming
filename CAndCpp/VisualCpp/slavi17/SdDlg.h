#if !defined(AFX_SDDLG_H__3832AD5C_C9D3_4E7D_B517_B4C1659C3F90__INCLUDED_)
#define AFX_SDDLG_H__3832AD5C_C9D3_4E7D_B517_B4C1659C3F90__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SdDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSdDlg dialog

class CSdDlg : public CDialog
{
// Construction
public:
	CSdDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSdDlg)
	enum { IDD = IDD_DIALOG1 };
	CString	m_ed;
	int		m_r;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSdDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSdDlg)
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SDDLG_H__3832AD5C_C9D3_4E7D_B517_B4C1659C3F90__INCLUDED_)
