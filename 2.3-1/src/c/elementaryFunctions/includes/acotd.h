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

#ifndef __ACOTD_H__
#define __ACOTD_H__
#include "types.h"
#include "floatComplex.h"
#include "doubleComplex.h"


#ifdef  __cplusplus
extern "C" {
#endif

double dacotds(double x);

void dacotda(double* x, int size, double* y); 

float sacotds(float x);

void sacotda(float* x, int size, float* y); 


#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* !__ACOTD_H__ */

