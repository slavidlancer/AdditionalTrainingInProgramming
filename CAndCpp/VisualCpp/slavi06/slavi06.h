// slavi06.h : main header file for the SLAVI06 application
//

#if !defined(AFX_SLAVI06_H__2E13C4E6_3F8F_433A_8C14_B3A3285EDEA5__INCLUDED_)
#define AFX_SLAVI06_H__2E13C4E6_3F8F_433A_8C14_B3A3285EDEA5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi06App:
// See slavi06.cpp for the implementation of this class
//

class CSlavi06App : public CWinApp
{
public:
	CSlavi06App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi06App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi06App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI06_H__2E13C4E6_3F8F_433A_8C14_B3A3285EDEA5__INCLUDED_)
