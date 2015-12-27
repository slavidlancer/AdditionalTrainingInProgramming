// slavi01.h : main header file for the SLAVI01 application
//

#if !defined(AFX_SLAVI01_H__4F71C4C8_C43D_4C78_98D1_2312AA151FAA__INCLUDED_)
#define AFX_SLAVI01_H__4F71C4C8_C43D_4C78_98D1_2312AA151FAA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi01App:
// See slavi01.cpp for the implementation of this class
//

class CSlavi01App : public CWinApp
{
public:
	CSlavi01App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi01App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi01App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI01_H__4F71C4C8_C43D_4C78_98D1_2312AA151FAA__INCLUDED_)
