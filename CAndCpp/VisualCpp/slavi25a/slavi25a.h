// slavi25a.h : main header file for the SLAVI25A application
//

#if !defined(AFX_SLAVI25A_H__8864F1A8_7E19_4ABB_8A50_CEC797EF9A3F__INCLUDED_)
#define AFX_SLAVI25A_H__8864F1A8_7E19_4ABB_8A50_CEC797EF9A3F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi25aApp:
// See slavi25a.cpp for the implementation of this class
//

class CSlavi25aApp : public CWinApp
{
public:
	CSlavi25aApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi25aApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi25aApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI25A_H__8864F1A8_7E19_4ABB_8A50_CEC797EF9A3F__INCLUDED_)
