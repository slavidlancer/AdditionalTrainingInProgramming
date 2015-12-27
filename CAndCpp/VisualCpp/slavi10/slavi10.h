// slavi10.h : main header file for the SLAVI10 application
//

#if !defined(AFX_SLAVI10_H__1AE6F061_BABC_4900_B777_44A2BEF20A55__INCLUDED_)
#define AFX_SLAVI10_H__1AE6F061_BABC_4900_B777_44A2BEF20A55__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi10App:
// See slavi10.cpp for the implementation of this class
//

class CSlavi10App : public CWinApp
{
public:
	CSlavi10App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi10App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi10App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI10_H__1AE6F061_BABC_4900_B777_44A2BEF20A55__INCLUDED_)
