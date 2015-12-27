// slavi14.h : main header file for the SLAVI14 application
//

#if !defined(AFX_SLAVI14_H__43D64632_FB33_48D1_B27B_6CB2A0E8C3E7__INCLUDED_)
#define AFX_SLAVI14_H__43D64632_FB33_48D1_B27B_6CB2A0E8C3E7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CSlavi14App:
// See slavi14.cpp for the implementation of this class
//

class CSlavi14App : public CWinApp
{
public:
	CSlavi14App();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSlavi14App)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CSlavi14App)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLAVI14_H__43D64632_FB33_48D1_B27B_6CB2A0E8C3E7__INCLUDED_)
