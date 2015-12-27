// slavi04.h : main header file for the SLAVI04 application
//

#if !defined(AFX_SLAVI04_H__0BE0AEED_241F_43CC_9ACE_2924797F41F7__INCLUDED_)
#define AFX_SLAVI04_H__0BE0AEED_241F_43CC_9ACE_2924797F41F7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi04App:
// See slavi04.cpp for the implementation of this class
//

class CSlavi04App : public CWinApp
{
public:
	CSlavi04App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi04App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi04App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI04_H__0BE0AEED_241F_43CC_9ACE_2924797F41F7__INCLUDED_)
