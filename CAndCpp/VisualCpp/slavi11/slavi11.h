// slavi11.h : main header file for the SLAVI11 application
//

#if !defined(AFX_SLAVI11_H__62E0BE07_2076_47E1_A7FD_CF54FBF934B6__INCLUDED_)
#define AFX_SLAVI11_H__62E0BE07_2076_47E1_A7FD_CF54FBF934B6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi11App:
// See slavi11.cpp for the implementation of this class
//

class CSlavi11App : public CWinApp
{
public:
	CSlavi11App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi11App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi11App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI11_H__62E0BE07_2076_47E1_A7FD_CF54FBF934B6__INCLUDED_)
