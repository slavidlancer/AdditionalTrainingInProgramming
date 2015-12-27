// slavi17.h : main header file for the SLAVI17 application
//

#if !defined(AFX_SLAVI17_H__4ED87447_17D8_4DBE_8974_DCFA94DAC097__INCLUDED_)
#define AFX_SLAVI17_H__4ED87447_17D8_4DBE_8974_DCFA94DAC097__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi17App:
// See slavi17.cpp for the implementation of this class
//

class CSlavi17App : public CWinApp
{
public:
	CSlavi17App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi17App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi17App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI17_H__4ED87447_17D8_4DBE_8974_DCFA94DAC097__INCLUDED_)
