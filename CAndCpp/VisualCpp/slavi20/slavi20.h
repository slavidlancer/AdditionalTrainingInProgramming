// slavi20.h : main header file for the SLAVI20 application
//

#if !defined(AFX_SLAVI20_H__56A3DAFC_EFDB_4476_9C3E_34F48594E67C__INCLUDED_)
#define AFX_SLAVI20_H__56A3DAFC_EFDB_4476_9C3E_34F48594E67C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi20App:
// See slavi20.cpp for the implementation of this class
//

class CSlavi20App : public CWinApp
{
public:
	CSlavi20App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi20App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi20App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI20_H__56A3DAFC_EFDB_4476_9C3E_34F48594E67C__INCLUDED_)
