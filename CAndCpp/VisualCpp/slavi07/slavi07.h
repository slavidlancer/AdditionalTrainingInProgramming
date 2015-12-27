// slavi07.h : main header file for the SLAVI07 application
//

#if !defined(AFX_SLAVI07_H__9BF65364_EC17_453D_8DA9_07F6F991249F__INCLUDED_)
#define AFX_SLAVI07_H__9BF65364_EC17_453D_8DA9_07F6F991249F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi07App:
// See slavi07.cpp for the implementation of this class
//

class CSlavi07App : public CWinApp
{
public:
	CSlavi07App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi07App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi07App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI07_H__9BF65364_EC17_453D_8DA9_07F6F991249F__INCLUDED_)
