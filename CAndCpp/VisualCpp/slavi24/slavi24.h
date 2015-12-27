// slavi24.h : main header file for the SLAVI24 application
//

#if !defined(AFX_SLAVI24_H__B9FC842C_4B18_42ED_832C_80546C229CAA__INCLUDED_)
#define AFX_SLAVI24_H__B9FC842C_4B18_42ED_832C_80546C229CAA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi24App:
// See slavi24.cpp for the implementation of this class
//

class CSlavi24App : public CWinApp
{
public:
	CSlavi24App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi24App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi24App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI24_H__B9FC842C_4B18_42ED_832C_80546C229CAA__INCLUDED_)
