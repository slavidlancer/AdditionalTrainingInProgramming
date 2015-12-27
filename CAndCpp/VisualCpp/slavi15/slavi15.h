// slavi15.h : main header file for the SLAVI15 application
//

#if !defined(AFX_SLAVI15_H__5189F87C_6039_47BE_A7AF_A4AB7EDBB8EC__INCLUDED_)
#define AFX_SLAVI15_H__5189F87C_6039_47BE_A7AF_A4AB7EDBB8EC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi15App:
// See slavi15.cpp for the implementation of this class
//

class CSlavi15App : public CWinApp
{
public:
	CSlavi15App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi15App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi15App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI15_H__5189F87C_6039_47BE_A7AF_A4AB7EDBB8EC__INCLUDED_)
