// slavi19.h : main header file for the SLAVI19 application
//

#if !defined(AFX_SLAVI19_H__A5069225_BD18_49AD_8C66_5EF5D5BE6241__INCLUDED_)
#define AFX_SLAVI19_H__A5069225_BD18_49AD_8C66_5EF5D5BE6241__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi19App:
// See slavi19.cpp for the implementation of this class
//

class CSlavi19App : public CWinApp
{
public:
	CSlavi19App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi19App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi19App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI19_H__A5069225_BD18_49AD_8C66_5EF5D5BE6241__INCLUDED_)
