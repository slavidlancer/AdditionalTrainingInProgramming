// slavi16.h : main header file for the SLAVI16 application
//

#if !defined(AFX_SLAVI16_H__FFB6A102_EE21_4906_BE2C_E7D5616A3C1A__INCLUDED_)
#define AFX_SLAVI16_H__FFB6A102_EE21_4906_BE2C_E7D5616A3C1A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi16App:
// See slavi16.cpp for the implementation of this class
//

class CSlavi16App : public CWinApp
{
public:
	CSlavi16App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi16App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi16App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI16_H__FFB6A102_EE21_4906_BE2C_E7D5616A3C1A__INCLUDED_)
