// slavi05.h : main header file for the SLAVI05 application
//

#if !defined(AFX_SLAVI05_H__D52E4808_1532_4A6F_863E_68DE97EF1BE0__INCLUDED_)
#define AFX_SLAVI05_H__D52E4808_1532_4A6F_863E_68DE97EF1BE0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi05App:
// See slavi05.cpp for the implementation of this class
//

class CSlavi05App : public CWinApp
{
public:
	CSlavi05App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi05App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi05App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI05_H__D52E4808_1532_4A6F_863E_68DE97EF1BE0__INCLUDED_)
