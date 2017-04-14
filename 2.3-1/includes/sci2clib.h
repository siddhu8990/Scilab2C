#ifndef __SCI2CLIB_H__
#define __SCI2CLIB_H__

#include <stdlib.h>
#include <string.h>
#include <math.h>
/* #include "SCI2CMacroInterface.h"
 */
/* #include "notFound.h"
 */
/* #include "doubleComplex.h"
 */
/* #include "floatComplex.h"
 */
/* #include "RealToComplex.h"
 */
/* #include "OpEqual.h"
 */
/* #include "OpIns.h"
 */
/* #include "OpExt.h"
 */
/* #include "FileManagement.h"
 */
/* #include "OpLogNe.h"
 */
/* #include "OpLogGt.h"
 */
/* #include "OpLogLt.h"
 */
/* #include "OpLogGe.h"
 */
/* #include "OpLogLe.h"
 */
/* #include "OpLogEq.h"
 */
/* #include "OpLogOr.h"
 */
/* #include "OpLogAnd.h"
 */
/* #include "OpLogNot.h"
 */
/* #include "ConvertPrecision.h" */

/* CONSTANT */
#include "constant.h"

/* LIB */
/* interfacing lapack */
#include "lapack.h"
/* interfacing blas */
#include "blas.h"

/* AUXILIARY FUNCTIONS */

/* interfacing abs */
#include "abs.h"
#include "int_abs.h"
/* interfacing conj */
#include "conj.h"
#include "int_conj.h"
/* interfacing disp */
#include "disp.h"
#include "int_disp.h"
/* interfacing find */
#include "find.h"
#include "find2d.h"
#include "int_find.h"
/* interfacing frexp */
#include "frexp.h"
/* interfacing isempty */
#include "isempty.h"
#include "int_isempty.h"
/* interfacing isnan */
#include "isnan.h"
#include "int_isnan.h"
/* interfacing length */
#include "length.h"
#include "int_length.h"
/* interfacing max */
#include "max.h"
#include "int_max.h"
/* interfacing min */
#include "min.h"
#include "int_min.h"
/* interfacing pythag */
#include "pythag.h"
/* interfacing sign */
#include "sign.h"
#include "int_sign.h"
/* interfacing size */
#include "size.h"
#include "int_size.h"
/* interfacing type */
#include "type.h"
#include "int_type.h"
/* interfacing rand */
#include "rand.h"
#include "int_rand.h"

/* ELEMENTARY FUNCTIONS */

/* interfacing atand */
#include "atand.h"
#include "int_atand.h"
/* interfacing asind */
#include "asind.h"
#include "int_asind.h"
/* interfacing asech */
#include "asech.h"
#include "int_asech.h"
/* interfacing asecd */
#include "asecd.h"
#include "int_asecd.h"
/* interfacing asec */
#include "asec.h"
#include "int_asec.h"
/* interfacing acsch */
#include "acsch.h"
#include "int_acsch.h"
/* interfacing acscd */
#include "acscd.h"
#include "int_acscd.h"
/* interfacing acsc */
#include "acsc.h"
#include "int_acsc.h"
/* interfacing acoth */
#include "acoth.h"
#include "int_acoth.h"
/* interfacing acotd */
#include "acotd.h"
#include "int_acotd.h"
/* interfacing acot */
#include "acot.h"
#include "int_acot.h"
/* interfacing acos */
#include "acos.h"
#include "int_acos.h"
/* interfacing acosd */
#include "acosd.h"
#include "int_acosd.h"
/* interfacing acosh */
#include "acosh.h"
#include "int_acosh.h"
/* interfacing asin */
#include "asin.h"
#include "int_asin.h"
/* interfacing asinh */
#include "asinh.h"
#include "int_asinh.h"
/* interfacing atan */
#include "atan.h"
#include "atan2.h"
#include "int_atan.h"
/* interfacing atanh */
#include "atanh.h"
#include "int_atanh.h"
/* interfacing cos */
#include "cos.h"
#include "int_cos.h"
/* interfacing ceil */
#include "ceil.h"
#include "int_ceil.h"
/* interfacing cosh */
#include "cosh.h"
#include "int_cosh.h"
/* interfacing exp */
#include "exp.h"
#include "int_exp.h"
/* interfacing fix */
#include "fix.h"
#include "int_fix.h"
/* interfacing floor */
#include "floor.h"
#include "int_floor.h"
/* interfacing int */
#include "int.h"
#include "int_int.h"
/* interfacing lnp1m1 */
#include "lnp1m1.h"
/* interfacing log */
#include "log.h"
#include "int_log.h"
/* interfacing log10 */
#include "log10.h"
#include "int_log10.h"
/* interfacing log1p */
#include "log1p.h"
#include "int_log1p.h"
/* interfacing pow */
#include "pow.h"
#include "matrixPow.h"
#include "int_OpHat.h"
#include "int_OpDotHat.h"
/* interfacing round */
#include "round.h"
#include "int_round.h"
/* interfacing sin */
#include "sin.h"
#include "int_sin.h"
/* interfacing sinh */
#include "sinh.h"
#include "int_sinh.h"
/* interfacing sqrt */
#include "sqrt.h"
#include "int_sqrt.h"
/* interfacing tan */
#include "tan.h"
#include "int_tan.h"
/* interfacing tanh */
#include "tanh.h"
#include "int_tanh.h"
/* interfacing uint8 */
#include "uint8.h"
#include "int_uint8.h"
/* interfacing int8 */
#include "int8.h"
#include "int_int8.h"
/* interfacing uint16 */
#include "uint16.h"
#include "int_uint16.h"
/* interfacing int16 */
#include "int16.h"
#include "int_int16.h"

/*interfacing bitand */
#include "bitand.h"
#include "int_bitand.h"

/*interfacing bitor */
#include "bitor.h"
#include "int_bitor.h"

/*interfacing bitxor */
#include "bitxor.h"
#include "int_bitxor.h"

/*interfacing bitcmp */
#include "bitcmp.h"
#include "int_bitcmp.h"

/*interfacing bitset */
#include "bitset.h"
#include "int_bitset.h"

/*interfacing bitget */
#include "bitget.h"
#include "int_bitget.h"


/*interfacing linspace */
#include "linspace.h"
#include "int_linspace.h"

/*interfacing logspace */
#include "logspace.h"
#include "int_logspace.h"


/* IMPLICIT LISTS */
/* interfacing implicitList/OpColon */
#include "implicitList.h"
#include "int_OpColon.h"


/* OPERATIONS */
/* interfacing assignation */
#include "int_OpEqual.h"
/* interfacing addition */
#include "addition.h"
#include "int_OpPlus.h"
/* interfacing subtraction */
#include "subtraction.h"
#include "int_OpMinus.h"
/* interfacing multiplication */
#include "multiplication.h"
#include "matrixMultiplication.h"
#include "int_OpStar.h"
#include "int_OpDotStar.h"
/* interfacing division */
#include "division.h"
#include "matrixDivision.h"
#include "int_OpSlash.h"
#include "int_OpDotSlash.h"
#include "int_OpBackSlash.h"
#include "int_OpDotBackSlash.h"
/* interfacing comparison */
#include "int_OpLogNot.h"
#include "int_OpLogEq.h"
#include "int_OpLogNe.h"
#include "int_OpLogGt.h"
#include "int_OpLogGe.h"
#include "int_OpLogLt.h"
#include "int_OpLogLe.h"
#include "int_OpLogAnd.h"
#include "int_OpLogOr.h"
/* interfacing insertion */
#include "int_OpIns.h"


/* MATRIX OPERATIONS */
/* interfacing extraction */
#include "int_OpExt.h"
/* interfacing cat */
#include "cat.h"
#include "int_OpRc.h"
#include "int_OpCc.h"
/* interfacing chol */
#include "chol.h"
#include "int_chol.h"
/* interfacing determinant */
#include "determ.h"
#include "int_det.h"
/* interfacing expm */
#include "matrixExponential.h"
#include "int_expm.h"
/* interfacing eye */
#include "eye.h"
#include "int_eye.h"
/* interfacing fill */
#include "fill.h"
/* interfacing inversion */
#include "matrixInversion.h"
#include "int_invert.h"
/* interfacing infinite norm */
#include "infiniteNorm.h"
/* interfacing ones */
#include "ones.h"
#include "int_ones.h"
/* interfacing spec */
#include "spec.h"
#include "int_spec.h"
/* interfacing trace */
#include "matrixTrace.h"
#include "int_trace.h"
/* interfacing tranpose */
#include "matrixTranspose.h"
#include "int_OpApex.h"
#include "int_OpDotApex.h"
/* interfacing zeros */
#include "zeros.h"
#include "int_zeros.h"
/* interfacing diag */
#include "diag.h"
#include "int_diag.h"
/*interfacing cumsum*/
#include "int_cumsum.h"
#include "cumsum.h"
/*interfacing cumprod*/
#include "int_cumprod.h"
#include "cumprod.h"
/*interfacing triu*/
#include "int_triu.h"
#include "triu.h"
/*interfacing tril*/
#include "int_tril.h"
#include "tril.h"
/*interfacing kron*/
#include "int_kron.h"
#include "kron.h"
/*interfacing flipdim*/
#include "int_flipdim.h"
#include "flipdim.h"

/* SIGNAL PROCESSING */
/* interfacing convol */
#include "conv.h"
#include "conv2d.h"
#include "int_convol.h"
/* interfacing fft */
#include "fft.h"
#include "fft_internal.h"
#include "int_fft.h"
/* interfacing fftshift */
#include "fftshift.h"
#include "int_fftshift.h"
/* interfacing ifft */
#include "ifft.h"
#include "ifft_internal.h"
#include "int_ifft.h"
/* interfacing lev */
#include "lev.h"
#include "int_lev.h"



/* STATISTICS FUNCTIONS */

/* interfacing max */
#include "statMax.h"
/* interfacing min */
#include "statMin.h"
/* interfacing mean */
#include "mean.h"
#include "int_mean.h"
/* interfacing stdevf */
#include "stdevf.h"
#include "int_stdevf.h"
/* interfacing meanf */
#include "meanf.h"
#include "int_meanf.h"
/* interfacing sum */
#include "sum.h"
#include "int_sum.h"
/* interfacing prod */
#include "prod.h"
#include "int_prod.h"
/* interfacing variance */
#include "variance.h"
#include "int_variance.h"

/* TYPE */
/* interfacing real */
#include "int_real.h"
/* interfacing imag */
#include "int_imag.h"

#include "types.h"

/* STRING*?
/* interface for String */
#include "int_string.h"
/*include for string */
#include "str.h"

/*ODE functions*/
#include "ode.h"
#include "int_ode.h"

/*Functions related to file handling*/
#include "files.h"
#include "int_files.h"

/*Scilab-arduino toolbox*/
#ifdef Arduino1
#include "int_cmd_digital_out.h"
#include "cmd_digital_out.h"
#include "int_cmd_digital_in.h"
#include "cmd_digital_in.h"
#include "int_cmd_analog_out.h"
#include "cmd_analog_out.h"
#include "int_cmd_analog_in.h"
#include "cmd_analog_in.h"
#include "int_cmd_dcmotor.h"
#include "cmd_dcmotor_run.h"
#include "cmd_dcmotor_setup.h"
#include "int_sleep.h"
#include "sleep.h"
//#include "cmd_servo_attach.h"
//#include "cmd_servo_detach.h"
//#include "cmd_servo_move.h"
//#include "int_cmd_servo.h"
#endif

/*AVR*/
#ifdef AVR1
#include "int_AVRPeripheralGPIO.h"
#include "AVRPeripheralGPIO.h"
#include "int_AVRPeripheralADC.h"
#include "AVRPeripheralADC.h"
#include "int_AVRPeripheralPWM.h"
#include "AVRPeripheralPWM.h"
#include "int_AVRUtil.h"
#include "AVRUtil.h"
#include "int_AVRPeripheralTimer.h"
#include "AVRPeripheralTimer.h"
#include "int_AVRPeripheralUART.h"
#include "AVRPeripheralUART.h"
#endif

/*RPi*/
#ifdef RPi1
#include "int_RPIPeripheralDigital.h"
#include "RPIPeripheralDigital.h"
#include "int_RPIPeripheralUtil.h"
#include "RPIPeripheralUtil.h"
#endif
#endif /* !__SCI2CLIB_H__ */
