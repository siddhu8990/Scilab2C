/*
 *  Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2006-2008 - INRIA - Bruno JOFRET
 *
 *  This file must be used under the terms of the CeCILL.
 *  This source file is licensed as described in the file COPYING, which
 *  you should have received as part of this distribution.  The terms
 *  are also available at
 *  http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 *
 */

#ifndef __ASIND_H__
#define __ASIND_H__
#include "types.h"


#ifdef  __cplusplus
extern "C" {
#endif

double dasinds(double x);

void dasinda(double* x, int size, double* y); 

double sasinds(float x);

void sasinda(float* x, int size, float* y); 

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ASIND_H__ */

