// slavi12.h : main header file for the SLAVI12 application
//

#if !defined(AFX_SLAVI12_H__A9D6E4A8_5D93_49D8_9507_30248BF1AB77__INCLUDED_)
#define AFX_SLAVI12_H__A9D6E4A8_5D93_49D8_9507_30248BF1AB77__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi12App:
// See slavi12.cpp for the implementation of this class
//

class CSlavi12App : public CWinApp
{
public:
	CSlavi12App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi12App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi12App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI12_H__A9D6E4A8_5D93_49D8_9507_30248BF1AB77__INCLUDED_)
