// slavi13.h : main header file for the SLAVI13 application
//

#if !defined(AFX_SLAVI13_H__E7C82125_EE8F_4D77_B6E2_29398E6BD71E__INCLUDED_)
#define AFX_SLAVI13_H__E7C82125_EE8F_4D77_B6E2_29398E6BD71E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi13App:
// See slavi13.cpp for the implementation of this class
//

class CSlavi13App : public CWinApp
{
public:
	CSlavi13App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi13App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi13App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI13_H__E7C82125_EE8F_4D77_B6E2_29398E6BD71E__INCLUDED_)
