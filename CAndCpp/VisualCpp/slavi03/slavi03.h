// slavi03.h : main header file for the SLAVI03 application
//

#if !defined(AFX_SLAVI03_H__EF0BCFBD_A28E_43CC_9D63_0AAD5CD037FC__INCLUDED_)
#define AFX_SLAVI03_H__EF0BCFBD_A28E_43CC_9D63_0AAD5CD037FC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi03App:
// See slavi03.cpp for the implementation of this class
//

class CSlavi03App : public CWinApp
{
public:
	CSlavi03App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi03App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi03App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI03_H__EF0BCFBD_A28E_43CC_9D63_0AAD5CD037FC__INCLUDED_)
