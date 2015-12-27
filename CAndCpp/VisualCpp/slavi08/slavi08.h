// slavi08.h : main header file for the SLAVI08 application
//

#if !defined(AFX_SLAVI08_H__86DEF80B_CA6A_4979_98D2_136ECF861BDA__INCLUDED_)
#define AFX_SLAVI08_H__86DEF80B_CA6A_4979_98D2_136ECF861BDA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi08App:
// See slavi08.cpp for the implementation of this class
//

class CSlavi08App : public CWinApp
{
public:
	CSlavi08App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi08App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi08App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI08_H__86DEF80B_CA6A_4979_98D2_136ECF861BDA__INCLUDED_)
