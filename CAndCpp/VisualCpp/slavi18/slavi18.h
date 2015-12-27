// slavi18.h : main header file for the SLAVI18 application
//

#if !defined(AFX_SLAVI18_H__EA1D588D_1B80_4772_A532_2AF535E94ABE__INCLUDED_)
#define AFX_SLAVI18_H__EA1D588D_1B80_4772_A532_2AF535E94ABE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi18App:
// See slavi18.cpp for the implementation of this class
//

class CSlavi18App : public CWinApp
{
public:
	CSlavi18App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi18App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi18App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI18_H__EA1D588D_1B80_4772_A532_2AF535E94ABE__INCLUDED_)
