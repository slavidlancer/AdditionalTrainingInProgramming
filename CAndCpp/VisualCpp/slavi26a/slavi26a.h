// slavi26a.h : main header file for the SLAVI26A application
//

#if !defined(AFX_SLAVI26A_H__17DD5CF2_4280_4B68_8A47_5F81FF76A1C8__INCLUDED_)
#define AFX_SLAVI26A_H__17DD5CF2_4280_4B68_8A47_5F81FF76A1C8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi26aApp:
// See slavi26a.cpp for the implementation of this class
//

class CSlavi26aApp : public CWinApp
{
public:
	CSlavi26aApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi26aApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi26aApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI26A_H__17DD5CF2_4280_4B68_8A47_5F81FF76A1C8__INCLUDED_)
