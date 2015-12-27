// slavi002.h : main header file for the SLAVI002 application
//

#if !defined(AFX_SLAVI002_H__B95163F5_8D08_4472_97F0_A9496505C800__INCLUDED_)
#define AFX_SLAVI002_H__B95163F5_8D08_4472_97F0_A9496505C800__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi002App:
// See slavi002.cpp for the implementation of this class
//

class CSlavi002App : public CWinApp
{
public:
	CSlavi002App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi002App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi002App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI002_H__B95163F5_8D08_4472_97F0_A9496505C800__INCLUDED_)
