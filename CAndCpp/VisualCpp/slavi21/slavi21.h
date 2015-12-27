// slavi21.h : main header file for the SLAVI21 application
//

#if !defined(AFX_SLAVI21_H__845BAC23_8EA5_4956_8A74_4F27FD7AC183__INCLUDED_)
#define AFX_SLAVI21_H__845BAC23_8EA5_4956_8A74_4F27FD7AC183__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi21App:
// See slavi21.cpp for the implementation of this class
//

class CSlavi21App : public CWinApp
{
public:
	CSlavi21App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi21App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi21App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI21_H__845BAC23_8EA5_4956_8A74_4F27FD7AC183__INCLUDED_)
