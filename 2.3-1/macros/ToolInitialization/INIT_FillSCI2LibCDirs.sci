function INIT_FillSCI2LibCDirs(FileInfo,SharedInfoExtension)
// function INIT_FillSCI2LibCDirs(FileInfo,SharedInfoExtension)
// -----------------------------------------------------------------
// #RNU_RES_B
// Generates files for the SCI2CLib CFunctionList and CAnnotations
// directories.
//
// Input data:
// FileInfo: structure containing all info about SCI2C files.
// SharedInfoExtension: structure containing the file extensions.
//
// Output data:
// ---
//
// #RNU_RES_E
// Status:
// 24-Dec-2007 -- Raffaele Nutricato: Author.
// 24-Dec-2007 -- Alberto Morea: Test Ok.
//
// Copyright 2007 Raffaele Nutricato.
// Contact: raffaele.nutricato@tiscali.it
// -----------------------------------------------------------------

// ------------------------------
// --- Check input arguments. ---
// ------------------------------
SCI2CNInArgCheck(argn(2),2,2);

// -----------------------
// --- Initialization. ---
// -----------------------
SCI2CLibCAnnClsDir    = FileInfo.SCI2CLibCAnnCls;
ExtensionCAnnCls      = SharedInfoExtension.AnnotationClasses;

SCI2CLibCAnnFunDir    = FileInfo.SCI2CLibCAnnFun;
ExtensionCAnnFun      = SharedInfoExtension.AnnotationFunctions;

SCI2CLibCFLClsDir     = FileInfo.SCI2CLibCFLCls;
ExtensionCFuncListCls = SharedInfoExtension.FuncListClasses;

SCI2CLibCFLFunDir     = FileInfo.SCI2CLibCFLFun;
ExtensionCFuncListFun = SharedInfoExtension.FuncListFunctions;

GeneralReport         = FileInfo.GeneralReport;
ArgSeparator          = ',';
// ---------------------------
// --- End Initialization. ---
// ---------------------------

// --------------------------------------------------------------------------------
// --- Generate Function List class files for C functions of the SCI2C library. ---
// --------------------------------------------------------------------------------
//NUT old call to INIT_GenSCI2CLibCFLCls
// INIT_GenSCI2CLibCFLCls(SCI2CLibCFLClsDir,ExtensionCFuncListCls,GeneralReport)
//                        SCI2CLibCFLClsDir,ExtensionCFLCls,GeneralReport

//NUT verifica le annotazioni di tutte le classi.

// -----------------------------------------------------------------------------------------
// --- Generate Function List and Annotation files for C functions of the SCI2C library. ---
// -----------------------------------------------------------------------------------------


// ---------------------
// --- Class Global. ---
// ---------------------
ClassName = 'Global';
// #RNU_RES_B
//NUT: global function can work with a generic number of input arguments.
//NUT: we force the global function to work with one input argument only.
// --- Class Annotation. ---
// #RNU_RES_E
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'global';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Float. ---
// ---------------------
ClassName = 'Float';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'s0',ClassFileName,'file','y');

//PrintStringInfo('c0'+ArgSeparator+'s0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'s2',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'s2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'s2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'float';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Double. ---
// ---------------------
ClassName = 'Double';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'double';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ----------------------------
// --- Class FloatComplex. ---
// ----------------------------
//NUT sulla complex c'e' da capire se servono due o un solo argomento.
//NUT secondo me ne va bene uno perche' serve per fare il casting di una variabile
//NUT reale in una variabile complessa
ClassName = 'FloatComplex';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''c''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'c0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'c2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'floatcomplex';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ----------------------------
// --- Class DoubleComplex. ---
// ----------------------------
//NUT sulla complex c'e' da capire se servono due o un solo argomento.
//NUT secondo me ne va bene uno perche' serve per fare il casting di una variabile
//NUT reale in una variabile complessa
ClassName = 'DoubleComplex';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''z''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'doublecomplex';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Uint8. ---
// ---------------------
ClassName = 'Uint8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'u82',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'uint8';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Float. ---
// ---------------------
ClassName = 'Float';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'s2',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'float';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Int8. ---
// ---------------------
ClassName = 'Int8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i80',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i82',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'int8';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Uint16. ---
// ---------------------
ClassName = 'Uint16';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'u160',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'u162',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'uint16';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Int16. ---
// ---------------------
ClassName = 'Int16';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'int16';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Uint32. ---
// ---------------------
ClassName = 'Uint32';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u32''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('i320'+ArgSeparator+'u320',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'u322',ClassFileName,'file','y');
PrintStringInfo('i322'+ArgSeparator+'u322',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'uint32';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class Int32. ---
// ---------------------
ClassName = 'Int32';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i32''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('u320'+ArgSeparator+'i320',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i322',ClassFileName,'file','y');
PrintStringInfo('u322'+ArgSeparator+'i322',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'int32';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ------------------
// --- Class Sin. ---
// ------------------
ClassName = 'Sin';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'s2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sin'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'sinh'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'asinh'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'cos'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'cosh'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'tan'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'tanh'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'exp'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'conj'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//NUT verifica
FunctionName = 'inv'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'int'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'SCI2Cresize';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'chol'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ------------------
// --- Class OpLogNot
// ------------------
ClassName = 'OpLogNot';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

FunctionName = 'OpLogNot'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'ceil'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'fix'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'floor'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'round'; //BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





// -------------------
// --- Class bitand. ---
// -------------------
ClassName = 'bitand';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'bitand';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --- Annotation Function And Function List Function. ---
FunctionName = 'bitor';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --- Annotation Function And Function List Function. ---
FunctionName = 'bitxor';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




// -------------------
// --- Class bitcmp. ---
// -------------------
ClassName = 'bitcmp';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'bitcmp';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class bitset. ---
// -------------------
ClassName = 'bitset';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


PrintStringInfo('u80d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160d0d0'+ArgSeparator+'u160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'bitset';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// -------------------
// --- Class bitget. ---
// -------------------
ClassName = 'bitget';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'bitget';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




// ------------------
// --- Class Sign ---
// ------------------
ClassName = 'Sign';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');


// -------------------
// --- Class Atan. ---
// -------------------
ClassName = 'Atan';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
// PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
// PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
// PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
// PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'s2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'atan'; //BJ : atan AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Isreal. ---
// -------------------
ClassName = 'Isreal';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
//---Function list class. ----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'isreal';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


ClassName = 'gcd';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
//---Function list class. ----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'gcd';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

ClassName = 'nextpow2';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'nextpow2';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



ClassName = 'interp1';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(3).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

//---Function list class. ----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2s2g2'+ArgSeparator+'s2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'interp1';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// -------------------
// --- Class DCT. ---
// -------------------
ClassName = 'dct';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'dct';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class IDCT. ---
// -------------------
ClassName = 'idct';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'idct';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// -------------------
// --- Class Sqrt. ---
// -------------------
ClassName = 'Sqrt';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'c0',ClassFileName,'file','y');


PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'c2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'asin'; //BJ : Works but not able to generate all cases , AS : same for float
                       //--> asin(%pi).
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acos'; //BJ : Works but not able to generate all cases , AS : same for float
		       //--> acos(%pi)
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acosd'; //BJ : Works but not able to generate all cases , AS : same for float
		       //--> acosd(%pi)
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acosh'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'atanh'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'acot'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'acotd'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'acoth'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acsc'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'asec'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'asech'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'asind'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'atand'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'asecd'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acscd'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'acsch'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'sqrt'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'log'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'log10'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'log1p'; // BJ : Ok AS : Float_Done
			//--> log1p(%i) Not implemented in Scilab.
                        //WARNING z0log1pz0 will never happened.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------
// --- Class Zeros. ---
// --------------------
ClassName = 'Zeros';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          0',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(IN(1).SZ)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_FROM_VAL(IN(1).VAL,IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(IN(2).VAL,IN(2).TP)',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_FROM_VAL(IN(1).VAL,IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(IN(2).VAL,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(3)= FA_SZ_FROM_VAL(IN(3).VAL,IN(3).TP)',ClassFileName,'file','y');


// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo(ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo(ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo(ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo(ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo(ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');


PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');



//NUT: no mixed input types are allowed.
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d0d0d0'+ArgSeparator+'d3',ClassFileName,'file','y');




// --- Annotation Function And Function List Function. ---
FunctionName = 'zeros'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'ones'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'eye'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// --------------------
// --- Class Diag. ---
// --------------------
ClassName = 'diag';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');

PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_ROW_DIAG(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_COLUMN_DIAG(IN(1).SZ)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');

PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_ROW_DIAG_INS_EXT(IN(1).SZ,IN(2).VAL)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_COL_DIAG_IN_EX(IN(1).SZ,IN(2).VAL)',ClassFileName,'file','y');

// ---Function List Class.----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80d0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160d0'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160d0'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i160',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'diag'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --------------------
// --- Class linspace & logspace ---
// --------------------
ClassName = 'linspace';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');

PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_LINSPACE_ROW(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).VAL',ClassFileName,'file','y');


// ---Function List Class.----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


PrintStringInfo('d0d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'linspace'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'logspace'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//---------------------
//-----Class Rand.------
//---------------------
 ClassName = 'rand'

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          0',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=     ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=     ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(IN(1).SZ)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_FROM_VAL(IN(1).VAL,IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(IN(2).VAL,IN(2).TP)',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=     ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_FROM_VAL(IN(1).VAL,IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(IN(2).VAL,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(3)= FA_SZ_FROM_VAL(IN(3).VAL,IN(3).TP)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);


//For rand operator
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'d2',ClassFileName,'file','y');

//NUT rand  function doesn't behave like zeros and ones functions.
FunctionName = 'rand'; // BJ : Done  =>  rien pour f loat
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------
// --- Class Sum. ---
// --------------------
ClassName = 'Sum';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_SEL1(IN(1).SZ(1),IN(2).VAL)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_SEL2(IN(1).SZ(2),IN(2).VAL)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s0',ClassFileName,'file','y'); //* possible ? */
PrintStringInfo('d2d0'+ArgSeparator+'d0',ClassFileName,'file','y'); //* possible ? */
PrintStringInfo('c2s0'+ArgSeparator+'c0',ClassFileName,'file','y'); //* possible ? */
PrintStringInfo('z2d0'+ArgSeparator+'z0',ClassFileName,'file','y'); //* possible ? */
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('s0g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0g2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0g2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2g2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z2g2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2g2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2g2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('u80g2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82g2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82g2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80g2'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82g2'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82g2'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160g2'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162g2'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162g2'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160g2'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162g2'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162g2'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sum'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'prod'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'mean'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'st_deviation'; // BJ : Not implemented
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'variance'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// --------------------
// --- Class Max. ---
// --------------------
ClassName = 'Max';


// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPPLUS(IN(1).SZ,IN(2).SZ,IN(1).TP,IN(2).TP))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPPLUS(IN(1).SZ,IN(2).SZ,IN(1).TP,IN(2).TP))',ClassFileName,'file','y');


//PrintStringInfo('NIN=          2',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= FA_SZ_SEL1(IN(1).SZ(1),IN(2).VAL)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= FA_SZ_SEL2(IN(1).SZ(2),IN(2).VAL)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i160',ClassFileName,'file','y');


PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');

PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');

PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');

PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80g2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82g2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80g2'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82g2'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160g2'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162g2'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160g2'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162g2'+ArgSeparator+'i162',ClassFileName,'file','y');

FunctionName = 'max'; // BJ : Done AS : Float_Done
		      // WARNING : Complex case will never be
                      // WARNING : max(x, 2) <=> max(x, 2 * ones(x)) nothing to do with 'r' nor 'c'
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



FunctionName = 'min'; // BJ : Done AS : Float_Done
		      // WARNING : Complex case will never be
                      // WARNING : max(x, 2) <=> max(x, 2 * ones(x)) nothing to do with 'r' nor 'c'
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





// --------------------
// --- Class Abs. ---
// --------------------
ClassName = 'Abs';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'abs'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'real'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


FunctionName = 'imag'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ------------------------
// --- Class OpDotStar. ---
// ------------------------
ClassName = 'OpDotStar';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160i60'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpDotStar'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpDotSlash'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------------
// --- Class OpDotHat. ---
// ------------------------
ClassName = 'OpDotHat';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpDotHat'; // BJ : Done AS : Float_Done but poor precision
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//NUT verifica l'hat se e' ben annotato. L'input deve essere una matrice quadrata
FunctionName = 'OpHat'; // BJ : Done AS : Float_Done but poor precision
			// WARNING : d2d2 / z2z2 / d2z2 / z2d2 Not implemented in Scilab ...
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpDotBackSlash'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogLt'; // BJ : Done AS : Float_Done
			  // WARNING : Complex cases are useless.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogLe'; // BJ : Done AS : Float_Done
			  // WARNING : Complex cases are useless.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogGt'; // BJ : Done AS : Float_Done
			  // WARNING : Complex cases are useless.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogGe'; // BJ : Done AS : Float_Done
			  // WARNING : Complex cases are useless.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// ----------------------
// --- Class OpLogEq. ---
// ----------------------
ClassName = 'OpLogEq';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MIN_REAL(IN(1).TP,IN(2).TP)',ClassFileName,'file','y'); //RNU
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPDOTSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g0g0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('g0g0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g2g0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('g2g0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g0g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('g0g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

//mixed types
PrintStringInfo('c2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('c0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('c2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80d0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160d0'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('d0i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('d0u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('d0i160'+ArgSeparator+'i160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpLogEq'; // BJ : Done AS : Float_Done
			  // WARNING : Unable to generate g2 nor g0 code ...
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogNe'; // BJ : Done AS : Float_Done
			  // WARNING : Unable to generate g2 nor g0 code ...
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogAnd'; // AS : Double and Float_Done
			   // ERROR : z0z0OpLogAndz0 -> z0z0OpLogAndd0
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpLogOr'; // AS : Double and Float_Done
			  // ERROR : z0z0OpLogAndz0 -> z0z0OpLogAndd0
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class OpStar. ---
// ---------------------
ClassName = 'OpStar';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPSTAR(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u80i80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u80u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u80i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i80u80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80u80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i80u160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i80i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u160u80'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160i80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160u80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160i80'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160u160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u82u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u82i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i82u80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82u160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i82i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u162u80'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162i80'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162u80'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i80'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162u160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u80u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u80i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i80u82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i80u162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i80i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u160u82'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u160i82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u160i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');


PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u82u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u82i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i82u82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82u162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i82i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u162u82'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162i82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162u82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i82'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162u162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82i82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u82u162'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u82i162'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i82u82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82u162'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i82i162'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u162u82'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162i82'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162i162'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162u82'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i82'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162u162'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i160',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'OpStar'; // BJ : Done AS : Float_Done


PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
//NUT vedi che la opstar non funziona quando faccio scalare*matrice. o matrice*scalare.
//NUT la lista delle funzioni disponibili e' identica a quella della classe 3.


// ---------------------
// --- Class OpSlash. ---
// ---------------------
ClassName = 'OpSlash';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPSLASH(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPSLASH(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i160',ClassFileName,'file','y');


FunctionName = 'OpSlash'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class OpApex. ---
// ---------------------
ClassName = 'OpApex';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'OpApex'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'OpDotApex'; // BJ : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ---------------------
// --- Class IsNan. ---
// ---------------------
ClassName = 'IsNan';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');


FunctionName = 'isnan'; // BJ : Done AS : Float_Done
			// ERROR : z2isnanz2 must be z2isnand2 // z0isnanz0 must be z0isnand0
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class OpPlus. ---
// ---------------------
ClassName = 'OpPlus';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPPLUS(IN(1).SZ,IN(2).SZ,IN(1).TP,IN(2).TP))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPPLUS(IN(1).SZ,IN(2).SZ,IN(1).TP,IN(2).TP))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('g0g0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('g2g0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('g0g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpPlus'; // BJ : Done AS : Float_Done
			 // ERROR : Strings are not correctly allowed.
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





// ----------------------
// --- Class OpMinus. ---
// ----------------------
ClassName = 'OpMinus';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPMINUS(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPMINUS(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---

FunctionName = 'OpMinus'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class OpRc. ---
// -------------------
ClassName = 'OpRc';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_ADD(IN(1).SZ(2),IN(2).SZ(2))',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types considered
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('c0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('z0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('z0d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('s0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpRc'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class OpCc. ---
// -------------------
ClassName = 'OpCc';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_ADD(IN(1).SZ(1),IN(2).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types considered
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('c0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('z0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('z0d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('s0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpCc'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// -------------------
// --- Class cat. ---
// -------------------
ClassName = 'cat';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(2).TP,IN(3).TP)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= FA_ADD(IN(2).SZ(1),IN(3).SZ(1))',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= FA_ADD(IN(2).SZ(2),IN(3).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_ROW_COLUMN_CAT(IN(1).VAL,IN(2).SZ(1),IN(3).SZ(1)))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_ROW_COLUMN_CAT(IN(1).VAL,IN(2).SZ(2),IN(3).SZ(2)))',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= FA_SZ_ROW_COLUMN_CAT(IN(1).VAL,IN(2).SZ(1),IN(3).SZ(1))',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= FA_SZ_ROW_COLUMN_CAT(IN(1).VAL,IN(2).SZ(2),IN(3).SZ(2))',ClassFileName,'file','y');


// --- Function List Class. ---
//NUT: no mixed data types considered
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d2d2' +ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0u82u82' +ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('d0u162u162' +ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('d0i82i82' +ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('d0i162i162' +ArgSeparator+'i162',ClassFileName,'file','y');



PrintStringInfo('c0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('z0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('u80u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('z0d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('s0c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cat'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Find. ---
// -------------------
ClassName = 'Find';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MAX(FA_MUL(IN(1).SZ(1),IN(1).SZ(2)),''1'')',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MAX(FA_MUL(IN(1).SZ(1),IN(1).SZ(2)),''1'')',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(FA_MIN( IN(2).VAL ,FA_MUL(IN(1).SZ(1),IN(1).SZ(2))) ,IN(2).TP)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(FA_MIN( IN(2).VAL ,FA_MUL(IN(1).SZ(1),IN(1).SZ(2))) ,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_FROM_VAL(FA_MIN( IN(2).VAL ,FA_MUL(IN(1).SZ(1),IN(1).SZ(2))) ,IN(2).TP)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160u160',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i60i60',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');


PrintStringInfo('s0s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80u80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160u160',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80i80',ClassFileName,'file','y');
PrintStringInfo('i160i60'+ArgSeparator+'i60i60',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'find'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Length. ---
// ---------------------
ClassName = 'Length';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'length'; // AS : done  AS : Float_Done
                         // warning for string input , the length is +1 than scilab because
                         // in C we must take in account the ending '\0'
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'type'; // AS : done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Size. ---
// -------------------
ClassName = 'Size';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''2''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_REAL(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'d0d0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'d0d0',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('d2g2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'size'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Return. ---
// ---------------------
ClassName = 'Return';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          0',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(ArgSeparator,ClassFileName,'file','y');

//NUT anche se metto Return funziona bene comunque! cerca di capire il motivo.
//NUT limited use to zero in and out args only.
// --- Annotation Function And Function List Function. ---
FunctionName = 'return';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ----------------------
// --- Class OpColon. ---
// ----------------------
ClassName = 'OpColon';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MIN_REAL(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');



PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(FA_ADD(FA_SUB(FA_REAL(IN(2).VAL,IN(2).TP),FA_REAL(IN(1).VAL,IN(1).TP)),''1''),FA_TP_REAL(IN(2).TP))',ClassFileName,'file','y');
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MIN_REAL(IN(1).TP,FA_TP_MIN_REAL(IN(2).TP,IN(3).TP))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_FROM_VAL(FA_ADD(FA_DIV(FA_SUB(FA_REAL(IN(3).VAL,IN(3).TP),FA_REAL(IN(1).VAL, IN(1).TP)),FA_REAL(IN(2).VAL,IN(2).TP)),''1''),FA_TP_REAL(IN(3).TP))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'d2',ClassFileName,'file','y');


PrintStringInfo('s0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');


PrintStringInfo('s0c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'d2',ClassFileName,'file','y');




PrintStringInfo('s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0z0z0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s0s0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0c0c0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('c0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('c0c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('c0s0c0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('d0z0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('z0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('z0z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('z0d0z0'+ArgSeparator+'d0',ClassFileName,'file','y');


PrintStringInfo('s0s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c0c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z0z0z0'+ArgSeparator+'d2',ClassFileName,'file','y');


PrintStringInfo('s0s0c0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0c0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0c0c0'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('c0s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('c0c0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('c0s0c0'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0z0z0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d0z0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0z0d0'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('z0d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('z0z0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('z0d0z0'+ArgSeparator+'d2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'OpColon'; // AS : done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ----------------------
// --- Class IsEmpty. ---
// ----------------------
ClassName = 'IsEmpty';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'isempty';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ----------------------
// --- Class Trace. ---
// ----------------------
ClassName = 'Trace';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'trace'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//NUT det is a little bit complex but for the moment we assume that
//NUT that det works as trace function.
FunctionName = 'det'; // AS : Done   AS : Float_Done

PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------
// --- Class OpIns. ---
// --------------------
ClassName = 'OpIns';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');

PrintStringInfo('NIN=          4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');

PrintStringInfo('NIN=          5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s2s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s2s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s0s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s2s2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('d2d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d2d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d0d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d2d2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('c2s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s2c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s0c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s2c2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('z2d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d2z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d0z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d2z2'+ArgSeparator,ClassFileName,'file','y');

//Mixed input arguments
PrintStringInfo('s2s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s0c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s2c0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s0s2c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s0c2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2s2s2c2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('d2d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d0z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d2z0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d0d2z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d0z2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2d2d2z2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('c2s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s0s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s2s0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s0s2s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s0s2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('c2s2s2s2'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('z2d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d2d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d0d2d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d0d2'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('z2d2d2d2'+ArgSeparator,ClassFileName,'file','y');

// Hypermatrix management
PrintStringInfo('d3d0d0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d3d0d0d0d0'+ArgSeparator,ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpIns'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------
// --- Class OpExt. ---
// --------------------
ClassName = 'OpExt';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_MUL(IN(2).SZ(1),IN(2).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_MUL(IN(2).SZ(1),IN(2).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(3).SZ(1),IN(3).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=          4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_MUL(IN(2).SZ(1),IN(2).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(3).SZ(1),IN(3).SZ(2))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s2s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('c2s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c2s2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2s2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('z2d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z2d2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

// Hypermatrix Management
PrintStringInfo('s3s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d3d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d3d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d3s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpExt'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Disp. ---
// -------------------
ClassName = 'Disp';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'',ClassFileName,'file','y');

PrintStringInfo('d3'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'disp'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class String ---
// -------------------
ClassName = 'String';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(IN.SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(IN.SZ)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'g0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'g2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'string'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ----------------------
// --- Class OpEqual. ---
// ----------------------
ClassName = 'OpEqual';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(IN(1).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(2).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SZ_1(IN(2).SZ)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_2(IN(2).SZ)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'g2',ClassFileName,'file','y');
//NUT per ora non considero le equal con nin != 1

// --- Annotation Function And Function List Function. ---
FunctionName = 'OpEqual'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --------------------
// --- Class Mopen. ---
// --------------------
ClassName = 'Mopen';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''f''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'f0',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'f0s0',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'f0d0',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'f0',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'f0s0',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'f0d0',ClassFileName,'file','y');
PrintStringInfo('g2g2s0'+ArgSeparator+'f0s0',ClassFileName,'file','y');
PrintStringInfo('g2g2s0'+ArgSeparator+'f0d0',ClassFileName,'file','y');
PrintStringInfo('g2g2d0'+ArgSeparator+'f0s0',ClassFileName,'file','y');
PrintStringInfo('g2g2d0'+ArgSeparator+'f0d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'mopen';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Mput. ---
// -------------------
ClassName = 'Mput';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('s2g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d0g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('d2g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('u80g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('u82g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('i80g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('i82g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('u160g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('u162g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('i160g2f0'+ArgSeparator,ClassFileName,'file','y');
PrintStringInfo('i162g2f0'+ArgSeparator,ClassFileName,'file','y');

PrintStringInfo('s0g2f0'+ArgSeparator+'i0',ClassFileName,'file','y'); //NUT la mput e' strana
PrintStringInfo('s2g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('d0g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('d2g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('u80g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('u82g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('i80g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('i82g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('u160g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('u162g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('i160g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');
PrintStringInfo('i162g2f0'+ArgSeparator+'i0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'mput';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Mget. ---
// -------------------
ClassName = 'Mget';
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_USER',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_RTMAX(FA_SZ_FROM_VAL(IN(1).VAL,IN(1).TP))',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0g2f0'+ArgSeparator+'s0',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('s0g2f0'+ArgSeparator+'d0',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('d0g2f0'+ArgSeparator+'s0',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('d0g2f0'+ArgSeparator+'d0',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('s0g2f0'+ArgSeparator+'s2',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('s0g2f0'+ArgSeparator+'d2',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('d0g2f0'+ArgSeparator+'s2',ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('d0g2f0'+ArgSeparator+'d2',ClassFileName,'file','y'); //NUT da chiarire

// --- Annotation Function And Function List Function. ---
FunctionName = 'mget';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Mclose. ---
// ---------------------
ClassName = 'Mclose';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          0',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('f0'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('f0'+ArgSeparator+'i0',ClassFileName,'file','y'); //NUT da chiarire

// --- Annotation Function And Function List Function. ---
FunctionName = 'mclose';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Mseek. ---
// ---------------------
ClassName = 'Mseek';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('s0f0'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('s0f0g2'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire

PrintStringInfo('d0'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire
PrintStringInfo('d0f0'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire


PrintStringInfo('d0f0g2'+ArgSeparator,ClassFileName,'file','y'); //NUT da chiarire

// --- Annotation Function And Function List Function. ---
FunctionName = 'mseek';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ---------------------
// --- Class Convol. ---
// ---------------------
ClassName = 'Convol';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SUB(FA_ADD(IN(1).SZ(2),IN(2).SZ(2)),''1'')',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SUB(FA_ADD(IN(1).SZ(2),IN(2).SZ(2)),''1'')',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(FA_TP_MAX(IN(1).TP,IN(2).TP),IN(3).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_MAX(FA_TP_MAX(IN(1).TP,IN(2).TP),IN(3).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SUB(FA_ADD(IN(1).SZ(2),IN(2).SZ(2)),''1'')',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0c0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0z0',ClassFileName,'file','y');

PrintStringInfo('s0s2'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2z2',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2z2',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2z2',ClassFileName,'file','y');

PrintStringInfo('s0s0s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('c0c0c0'+ArgSeparator+'c0c0',ClassFileName,'file','y');
PrintStringInfo('z0z0z0'+ArgSeparator+'z0z0',ClassFileName,'file','y');

PrintStringInfo('s0s2s0'+ArgSeparator+'s2s0',ClassFileName,'file','y');
PrintStringInfo('d0d2d0'+ArgSeparator+'d2d0',ClassFileName,'file','y');
PrintStringInfo('c0c2c0'+ArgSeparator+'c2c0',ClassFileName,'file','y');
PrintStringInfo('z0z2z0'+ArgSeparator+'z2z0',ClassFileName,'file','y');

PrintStringInfo('s2s2s2'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('d2d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('c2c2c2'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('z2z2z2'+ArgSeparator+'z2z2',ClassFileName,'file','y');

PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');

//added combination

PrintStringInfo('d2d0'+ArgSeparator+'d0d2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z0z2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2z2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z0z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z0z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'convol'; // AS : done except 2 ouputs cases and 3 inputs cases   AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class IFFT. ---
// -------------------
ClassName = 'IFFT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
//Was FA_TP_USER
//Cause some trouble if user specify some precision and if input(and also output) is complex.
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y'); //FOR INRIA changed from IN(1).TP to FA_TP_USER
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'ifft'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ------------------
// --- Class FFT. ---
// ------------------
ClassName = 'FFT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');

// scilab2c doesn't handle multidimensionnal Fft

//PrintStringInfo('s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
//PrintStringInfo('d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('s0s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
//PrintStringInfo('d0d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
//PrintStringInfo('c0s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
//PrintStringInfo('z0d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

//PrintStringInfo('s2s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
//PrintStringInfo('d2d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('s2s0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('d2d0d0'+ArgSeparator+'z2',ClassFileName,'file','y');
//PrintStringInfo('c2s0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('z2d0d0'+ArgSeparator+'z2',ClassFileName,'file','y');

//PrintStringInfo('s0s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
//PrintStringInfo('d0d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('s0s0s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
//PrintStringInfo('d0d0d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
//PrintStringInfo('c0s0s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
//PrintStringInfo('z0d0d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

//PrintStringInfo('s2s0s0s0'+ArgSeparator+'s2',ClassFileName,'file','y');
//PrintStringInfo('d2d0d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('s2s0s0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('d2d0d0d0'+ArgSeparator+'z2',ClassFileName,'file','y');
//PrintStringInfo('c2s0s0s0'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('z2d0d0d0'+ArgSeparator+'z2',ClassFileName,'file','y');


//NUT non metto tutte le combinazioni ma prima cerco di capire cosa mi offre INRIA
//NUT come libreria a disposizione.
// --- Annotation Function And Function List Function. ---
FunctionName = 'fft';  // AS : Done   AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -----------------------
// --- Class FFTShift. ---
// -----------------------
ClassName = 'FFTShift';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0g2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0g2'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2g2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2g2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'fftshift'; // AS : Done   AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --------------------
// --- Class Meanf. ---
// --------------------
ClassName = 'Meanf';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP, IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP, IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_SEL1(IN(1).SZ(1),IN(3).VAL)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_SEL2(IN(1).SZ(2),IN(3).VAL)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2s2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2d2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
//
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s0c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('c2c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
//
PrintStringInfo('s0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s0c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('d0z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('c0c0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z0z0d0'+ArgSeparator+'d0',ClassFileName,'file','y');

PrintStringInfo('s2c2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2z2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2c2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2z2d0'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'meanf'; // AS : Done   AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'variancef';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'stdevf'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------
// --- Class Frmag. ---
// --------------------
ClassName = 'Frmag';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).VAL',ClassFileName,'file','y');
PrintStringInfo('NIN=          2',ClassFileName,'file','y');

PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(2).VAL',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).VAL',ClassFileName,'file','y');

PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(3).VAL',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2d0'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0d0'+ArgSeparator+'d0d0',ClassFileName,'file','y');

PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');
PrintStringInfo('s2s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2s0'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('s0s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0s0s0'+ArgSeparator+'s0s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'frmag';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// ------------------
// --- Class Lev. ---
// ------------------
ClassName = 'Lev';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');

PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SUB(FA_ADD(IN(1).SZ(1),IN(1).SZ(2)),''2'')',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SUB(FA_ADD(IN(1).SZ(1),IN(1).SZ(2)),''2'')',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SUB(FA_ADD(IN(1).SZ(1),IN(1).SZ(2)),''2'')',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= FA_SUB(FA_ADD(IN(1).SZ(1),IN(1).SZ(2)),''2'')',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2s0s2',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d0d2',ClassFileName,'file','y');

PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2c0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2c0c2',ClassFileName,'file','y');

PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2z0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2z0z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'lev'; // AS : Done   AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// --------------------------
// --- Class OpBackSlash. ---
// --------------------------
ClassName = 'OpBackSlash';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP) ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OPBACKSLASH(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OPBACKSLASH(IN(1).SZ,IN(2).SZ))',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');

PrintStringInfo('u80u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u160u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i80i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('i160i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162i162'+ArgSeparator+'i162',ClassFileName,'file','y');


PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('c0c0'+ArgSeparator+'c0',ClassFileName,'file','y');

PrintStringInfo('c0s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s0c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0c2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('c2s0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('s2c0'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c0'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2c2'+ArgSeparator+'c2',ClassFileName,'file','y');

PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('z0z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('z0d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d0z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2z0'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z0'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2z2'+ArgSeparator+'z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'OpBackSlash';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -----------------------
// --- Class Cepstrum. ---
// -----------------------
ClassName = 'Cepstrum';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MAX(IN(1).TP,IN(2).TP) ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_MUL(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('s0s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s0c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('s2c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2z2'+ArgSeparator+'z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'Cepstrum';
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Spec. ---
// -------------------
ClassName = 'Spec';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y'); //FOR INRIA FA_TP_MAX NEEDS 2 Input args
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y'); //FOR INRIA FA_TP_MAX NEEDS 2 Input args
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// Edited by Sandeep Gupta, IITB FOSSEE Project.
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');

PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         4',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).TP=    FA_TP_COMPLEX(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('s0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');

PrintStringInfo('s0'+ArgSeparator+'c0c0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'z0z0',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0c0',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0z0',ClassFileName,'file','y');

PrintStringInfo('s2'+ArgSeparator+'s2s2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'z2z2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2z2',ClassFileName,'file','y');

PrintStringInfo('d2d2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'z2d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'z2d2z2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'z2d2z2z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'spec'; // AS : Done  AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -------------------
// --- Class Part. ---
// -------------------
ClassName = 'Part';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_RTMAX(IN(1).SZ(2))',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('g2s0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2s2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2d2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'part'; // to code
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -----------------------
// --- Class Strindex. ---
// -----------------------
ClassName = 'Strindex';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_RTMAX(IN(1).SZ(2))',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

PrintStringInfo('g2g2'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strindex'; // to code
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

// -----------------------
// --- Class StrSubSt. ---
// -----------------------
//ClassName = 'StrSubSt';

// --- Class Annotation. ---
//PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
//ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
//PrintStringInfo('NIN=          3',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= FA_SZ_RTMAX(FA_MUL(IN(1).SZ(2),IN(3).SZ(2)))',ClassFileName,'file','y');

// --- Function List Class. ---
//NUT: no mixed data types
//ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

//PrintStringInfo('g2g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
//FunctionName = 'strsubst'; // to code
//PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
//INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
//INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




// ------------------
// --- Class Expm. ---
// ------------------
ClassName = 'Expm';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'expm'; // AS : Done AS : Float_Done
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---Functions for Scilab-arduino ----
//------------------------------------


//------------------------------------
//---- Class cmd_digital_out ---------
//------------------------------------
ClassName = 'cmd_digital_out';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d0d0u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_digital_out'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_digital_in ----------
//------------------------------------
ClassName = 'cmd_digital_in';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_digital_in'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cmd_analog_out ----------
//------------------------------------
ClassName = 'cmd_analog_out';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d0d0u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_analog_out'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cmd_analog_in -----------
//------------------------------------
ClassName = 'cmd_analog_in';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'u160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_analog_in'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_dcmotor_setup -------
//------------------------------------
ClassName = 'cmd_dcmotor_setup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_dcmotor_setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cmd_dcmotor_run -------
//------------------------------------
ClassName = 'cmd_dcmotor_run';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d0d0i160'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_dcmotor_run'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//---Class cmd_servo_attach.---
ClassName = 'cmd_servo_attach';

//----Class Annotation.----
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN= 2',ClassFileName,'file','y');
PrintStringInfo('NOUT= 0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

//---Function List Class.-----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_servo_attach'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//---Class cmd_servo_detach.---
ClassName = 'cmd_servo_detach';

//----Class Annotation.----
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN= 2',ClassFileName,'file','y');
PrintStringInfo('NOUT= 0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

//---Function List Class.-----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_servo_detach'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//---Class cmd_servo_move.---
ClassName = 'cmd_servo_move';

//----Class Annotation.----
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN= 3',ClassFileName,'file','y');
PrintStringInfo('NOUT= 0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

//---Function List Class.-----
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_servo_move'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_analog_in_volt -----------
//------------------------------------
ClassName = 'cmd_analog_in_volt';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_analog_in_volt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_i2c_dev -----------
//------------------------------------
ClassName = 'cmd_i2c_dev';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_i2c_dev'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class cmd_i2c_write -----------
//------------------------------------
ClassName = 'cmd_i2c_write';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_i2c_write'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_i2c_read -----------
//------------------------------------
ClassName = 'cmd_i2c_read';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_i2c_read'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_i2c_read_register -----------
//------------------------------------
ClassName = 'cmd_i2c_read_register';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_i2c_read_register'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class cmd_i2c_write_register -----------
//------------------------------------
ClassName = 'cmd_i2c_write_register';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''s''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u80d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_i2c_write_register'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class Sleep -------------------

//------------------------------------
ClassName = 'sleep';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sleep'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class cmd_analog_out_volt ----------
//------------------------------------
ClassName = 'cmd_analog_out_volt';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('d0d0s0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_analog_out_volt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cmd_dcmotor_release -------
//------------------------------------
ClassName = 'cmd_dcmotor_release';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cmd_dcmotor_release'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---Functions for AVR ---------------
//------------------------------------


//------------------------------------
//---- Class AVRDigitalSetup ---------
//------------------------------------
ClassName = 'AVRDigitalSetup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRDigitalSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRDigitalPortSetup ---------
//------------------------------------
ClassName = 'AVRDigitalPortSetup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRDigitalPortSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);






//------------------------------------
//---- Class AVRDigitalOut -----------
//------------------------------------
ClassName = 'AVRDigitalOut';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);

//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRDigitalOut'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class AVRDigitalOut -----------
//------------------------------------
ClassName = 'AVRDigitalIn';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRDigitalIn'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRADCSetup -----------
//------------------------------------
ClassName = 'AVRADCSetup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRADCSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class AVRReadADC -----------
//------------------------------------
ClassName = 'AVRReadADC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRReadADC'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRPWM0Setup -------------
//------------------------------------
ClassName = 'AVRPWM0Setup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM0Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRPWM2Setup -------------
//------------------------------------
ClassName = 'AVRPWM2Setup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM2Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class AVRPWM1Setup -------------
//------------------------------------
ClassName = 'AVRPWM1Setup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM1Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class AVRPWM0SetDuty -----------
//------------------------------------
ClassName = 'AVRPWM0SetDuty';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM0SetDuty'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class AVRPWM2SetDuty -----------
//------------------------------------
ClassName = 'AVRPWM2SetDuty';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM2SetDuty'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class AVRPWM1SetDuty -----------
//------------------------------------
ClassName = 'AVRPWM1SetDuty';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRPWM1SetDuty'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





//------------------------------------
//---- Class AVRTimerInit -----------
//------------------------------------
ClassName = 'AVRTimerSetup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRTimerSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





//------------------------------------
//---- Class AVRGetTimerValue -----------
//------------------------------------
ClassName = 'AVRGetTimerValue';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRGetTimerValue'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class AVRSleep -----------
//------------------------------------
ClassName = 'AVRSleep';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRSleep'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class AVRUARTSetup -----------
//------------------------------------
ClassName = 'AVRUARTSetup';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0d0d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRUARTSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRUARTTransmit -----------
//------------------------------------
ClassName = 'AVRUARTTransmit';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('g0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'u80',ClassFileName,'file','y');
//
//PrintStringInfo('d2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'u80',ClassFileName,'file','y');

//PrintStringInfo('d0d0u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRUARTTransmit'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class AVRUARTReceiveChar -----------
//------------------------------------
ClassName = 'AVRUARTReceiveChar';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         0',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'AVRUARTReceiveChar'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class RPI_0IN_Void ----------
//------------------------------------
ClassName = 'RPI_0IN_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         0',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');


// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_gertBoardSPISetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_0IN_u8 ------------
//------------------------------------
ClassName = 'RPI_0IN_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         0',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_boardRev'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_digitalReadByte'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_0IN_u32 -----------
//------------------------------------
ClassName = 'RPI_0IN_u32';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         0',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u32''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo(''+ArgSeparator+'u320',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_millis'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_micros'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u8_Void -------
//------------------------------------
ClassName = 'RPI_1IN_u8_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_digitalWriteByte'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdClear'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdHome'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_piGlowSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialClose'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialFlush'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_softPwmStop'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_softToneStop'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u16_Void ------
//------------------------------------
ClassName = 'RPI_1IN_u16_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pwmClock'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u32_Void ------
//------------------------------------
ClassName = 'RPI_1IN_u32_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u320'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pwmRange'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_delay'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_delayMicro'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_g_Void --------
//------------------------------------
ClassName = 'RPI_1IN_g_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pwmMode'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u8_i8 ---------
//------------------------------------
ClassName = 'RPI_1IN_u8_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_I2CSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_wpiToGpio'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_physToGpio'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u16_i8 --------
//------------------------------------
ClassName = 'RPI_1IN_u16_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_I2CRead'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_gertboardAnalogSetup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_sn3218Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_g_i8 ----------
//------------------------------------
ClassName = 'RPI_1IN_g_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pinNumbering'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u8_u8 ---------
//------------------------------------
ClassName = 'RPI_1IN_u8_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_getAlt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_digitalRead'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialDataAvail'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_softToneCreate'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u16_u16 -------
//------------------------------------
ClassName = 'RPI_1IN_u16_u16';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u16''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_gertboardAnalogRead'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_1IN_u8_g ------
//------------------------------------
ClassName = 'RPI_1IN_u8_g';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_serialGetchar'; 

//------------------------------------
//---- Class RPI_2IN_u8u8_Void -----
//------------------------------------
ClassName = 'RPI_2IN_u8u8_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pinModeAlt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdCursor'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdSendCommand'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdCursorBlink'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdDisplay'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdPutchar'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_padDrive'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_piGlowLeg'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_piGlowRing'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_digitalWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialPutchar'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u8u16_Void ----
//------------------------------------
ClassName = 'RPI_2IN_u8u16_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u160'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pwmWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_pwmToneWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_softPwmWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u16u16_Void ---
//------------------------------------
ClassName = 'RPI_2IN_u16u16_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u160'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_gertboardAnalogWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u8g_Void ------
//------------------------------------
ClassName = 'RPI_2IN_u8g_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80g2'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pinMode'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdPuts'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_lcdPrintf'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_pullControl'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialPrintf'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_serialPuts'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u8u32_Void ----
//------------------------------------
ClassName = 'RPI_2IN_u8u32_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u320'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_softToneWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u8i16_i8 ------
//------------------------------------
ClassName = 'RPI_2IN_u8i16_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80i160'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_waitForInterrupt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u16u16_i8 -----
//------------------------------------
ClassName = 'RPI_2IN_u16u16_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u160'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_I2CWrite'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_I2CReadReg8'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_I2CReadReg16'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_gu32_i8 -----
//------------------------------------
ClassName = 'RPI_2IN_gu32_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2u320'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_serialOpen'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_2IN_u16u8_u8 -----
//------------------------------------
ClassName = 'RPI_2IN_u16u8_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u80'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_pcf8574Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_pcf8591Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_mcp23008Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_mcp23016Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_mcp23017Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_3IN_u8u8u8_Void ---
//------------------------------------
ClassName = 'RPI_3IN_u8u8u8_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_lcdPosition'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_piGlow1'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_3IN_u16u16u16_i8 --
//------------------------------------
ClassName = 'RPI_3IN_u16u16u16_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u160u160'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_I2CWriteReg8'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_I2CWriteReg16'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_3IN_u8u8u8_u8 -----
//------------------------------------
ClassName = 'RPI_3IN_u8u8u8_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_shiftIn'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_3IN_u8u16u16_u8 ---
//------------------------------------
ClassName = 'RPI_3IN_u8u16u16_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u160u160'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_softPwmCreate'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_3IN_u16u8u16_u8 ---
//------------------------------------
ClassName = 'RPI_3IN_u16u8u16_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u160u160'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_mcp23s08Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'RPI_mcp23s17Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_4IN_u8u8u8u8_Void -
//------------------------------------
ClassName = 'RPI_4IN_u8u8u8u8_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80u80u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_shiftOut'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//--------------------------------------
//---- Class RPI_5IN_u16u8u8u8u8_i8 --
//--------------------------------------
ClassName = 'RPI_5IN_u16u8u8u8u8_i8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''i8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u160u80u80u80u80'+ArgSeparator+'i80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_sr595Setup'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_10IN_u8x10_Void ---
//------------------------------------
ClassName = 'RPI_10IN_u8x10_Void';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         10',ClassFileName,'file','y');
PrintStringInfo('NOUT=        0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80u80u80u80u80u80u80u80u80'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_lcdCharDef'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RPI_13IN_u8x13_u8 -----
//------------------------------------
ClassName = 'RPI_13IN_u8x13_u8';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=         10',ClassFileName,'file','y');
PrintStringInfo('NOUT=        1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u80u80u80u80u80u80u80u80u80u80u80u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'RPI_lcdInit'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class ODE ---------------------
//------------------------------------
ClassName = 'ODE';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(1).SZ(2),IN(3).SZ(2))',ClassFileName,'file','y');

//Arguements specified: initial value, start time, end time, ode function
PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(3).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).SZ(2)',ClassFileName,'file','y');

//Arguements specified: solver type, initial value, start time, end time, ode function
PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(2).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(2).SZ(2),IN(4).SZ(2))',ClassFileName,'file','y');

//Arguements specified: solver type, initial value, start time, end time, ode function
PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(2).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(4).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(4).SZ(2)',ClassFileName,'file','y');

//Arguements specified: initial value, start time, end time, relative tolerance, 
//						absolute tolerance, ode function
PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(1).SZ(2),IN(3).SZ(2))',ClassFileName,'file','y');

//Arguements specified: initial value, start time, end time, relative tolerance, 
//						absolute tolerance, ode function
PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(3).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0fn0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d0d0fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d0d2fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0d2fn0'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('g2d0d0d0fn0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g2d2d0d0fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g2d0d0d2fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g2d2d0d2fn0'+ArgSeparator+'d2',ClassFileName,'file','y');

PrintStringInfo('d0d0d0d0d0fn0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d0d0d0d0fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d0d2d0d0fn0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2d0d2d0d0fn0'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'ode'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CUMSUM ---------------------
//------------------------------------
ClassName = 'CUMSUM';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82g2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82g2'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162g2'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162g2'+ArgSeparator+'i162',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'cumsum'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'cumprod'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class TRIU ---------------------
//------------------------------------
ClassName = 'TRIU';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80d0'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160d0'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'triu'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);
FunctionName = 'tril'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class KRON --------------------
//------------------------------------
ClassName = 'KRON';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_MUL(IN(1).SZ(1),IN(2).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(1).SZ(2),IN(2).SZ(2))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s2'+ArgSeparator+'s2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'kron'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class FLIPDIM -----------------
//------------------------------------
ClassName = 'FLIPDIM';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('i80i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('u160u160'+ArgSeparator+'u160',ClassFileName,'file','y');
PrintStringInfo('i160i160'+ArgSeparator+'i160',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d2d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0d0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82u80u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82i80u80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162i160i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82d0d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82d0d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162d0d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162d0d0'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'flipdim'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class DIFF -----------------
//------------------------------------
ClassName = 'DIFF';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_DIFF(IN(1).SZ,''1'',''0''))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_DIFF(IN(1).SZ,''1'',''0''))',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_DIFF(IN(1).SZ,IN(2).VAL,''0''))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_DIFF(IN(1).SZ,IN(2).VAL,''0''))',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_DIFF(IN(1).SZ,IN(2).VAL, IN(3).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_DIFF(IN(1).SZ,IN(2).VAL, IN(3).VAL))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2d0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('u82u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82u80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162u160'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162u160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');

PrintStringInfo('d2d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2d0d0'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s2s0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u82d0d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u82u80d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('i82d0d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i82u80d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('u162d0d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('u162u160d0'+ArgSeparator+'u162',ClassFileName,'file','y');
PrintStringInfo('i162d0d0'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('i162u160d0'+ArgSeparator+'i162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'diff'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class NORM --------------------
//------------------------------------
ClassName = 'NORM';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2d0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('d2g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2g2'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'norm'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CONVSTR --------------------
//------------------------------------
ClassName = 'CONVSTR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g0g0'+ArgSeparator+'g0',ClassFileName,'file','y');
PrintStringInfo('g2g0'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'convstr'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cvCreateImage --------------------
//------------------------------------
ClassName = 'CV_CreateImage';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0g2d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_CreateImage'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cvLoadImage --------------------
//------------------------------------
ClassName = 'CV_LoadImage';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_LoadImage'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class cvShowImage -------------
//------------------------------------
ClassName = 'CV_ShowImage';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2mt0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('mt0'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_ShowImage'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'CV_SaveImage'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_WaitKey --------------
//------------------------------------
ClassName = 'CV_WaitKey';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         0',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_WaitKey'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_CvtColor -------------
//------------------------------------
ClassName = 'CV_CvtColor';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0g2'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_CvtColor'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_GetImgSize -----------
//------------------------------------
ClassName = 'CV_GetImgSize';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''2''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_GetImgSize'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_Threshold -----------
//------------------------------------
ClassName = 'CV_Threshold';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0d0g2'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_Threshold'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_AdaptiveThreshold -----------
//------------------------------------
ClassName = 'CV_AdaptiveThreshold';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0g2g2d0d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_AdaptiveThreshold'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_DistanceTransform ----
//------------------------------------
ClassName = 'CV_DistanceTransform';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0g2d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_DistanceTransform'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_Blur -----------------
//------------------------------------
ClassName = 'CV_Blur';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0d0d0d0g2'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_Blur'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'CV_GaussianBlur'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_MedianBlur -----------------
//------------------------------------
ClassName = 'CV_MedianBlur';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_MedianBlur'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_Dilate ---------------
//------------------------------------
ClassName = 'CV_Dilate';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0g2d0'+ArgSeparator+'mt0',ClassFileName,'file','y');
PrintStringInfo('mt0g2d0d0g2d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_Dilate'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

FunctionName = 'CV_Erode'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_Canny ----------------
//------------------------------------
ClassName = 'CV_Canny';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0d0d0d0'+ArgSeparator+'mt0',ClassFileName,'file','y');
PrintStringInfo('mt0d0d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_Canny'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CV_CornerHarris ----------------
//------------------------------------
ClassName = 'CV_CornerHarris';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''mt''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('mt0d0d0d0g2'+ArgSeparator+'mt0',ClassFileName,'file','y');
PrintStringInfo('mt0d0d0d0'+ArgSeparator+'mt0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'CV_CornerHarris'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class syslin ------------------
//------------------------------------
ClassName = 'SYSLIN';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''ss''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_ADD(IN(2).SZ(1),IN(4).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_ADD(FA_ADD(IN(2).SZ(2),IN(3).SZ(2)), ''2'')',ClassFileName,'file','y');

PrintStringInfo('NIN=         5',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''ss''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_ADD(IN(2).SZ(1),IN(4).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_ADD(FA_ADD(IN(2).SZ(2),IN(3).SZ(2)), ''2'')',ClassFileName,'file','y');

PrintStringInfo('NIN=         6',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''ss''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_ADD(IN(2).SZ(1),IN(4).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_ADD(FA_ADD(IN(2).SZ(2),IN(3).SZ(2)), ''2'')',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2d2d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d2d2d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d2d2d2d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');

PrintStringInfo('g2d0d0d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d0d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');

PrintStringInfo('g2d0d0d0d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d0d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d0d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d2d2'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d2d2d2d0'+ArgSeparator+'ss2',ClassFileName,'file','y');

PrintStringInfo('g2d0d0d0d0d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d0d2d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d0d2d2d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d0d2d2d2d0'+ArgSeparator+'ss2',ClassFileName,'file','y');
PrintStringInfo('g2d2d2d2d0d2'+ArgSeparator+'ss2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'syslin'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class schur -------------------
//------------------------------------
ClassName = 'SCHUR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    FA_SCHUR_TP(IN(2).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SCHUR_SZ(IN(2).TP,IN(1).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SCHUR_SZ(IN(2).TP,IN(1).SZ(1))',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         4',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         4',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         5',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(5).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(5).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(5).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2d0',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2d0d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2d2d2d2',ClassFileName,'file','y');
PrintStringInfo('d2d2g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d2g2'+ArgSeparator+'d2d0',ClassFileName,'file','y');
PrintStringInfo('d2d2g2'+ArgSeparator+'d2d2d0',ClassFileName,'file','y');
PrintStringInfo('d2d2g2'+ArgSeparator+'d2d2d2d0',ClassFileName,'file','y');
PrintStringInfo('d2d2g2'+ArgSeparator+'d2d2d2d2d0',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'schur'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class lqr ---------------------
//------------------------------------
ClassName = 'LQR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_2(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_2(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_2(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_1(FA_SZ_LQR(IN(1).VAL))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('ss2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('ss2d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('ss2d2d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'lqr'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class lqe ---------------------
//------------------------------------
ClassName = 'LQE';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_LQE(IN(1).VAL,IN(1).SZ(1)))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_1(FA_SZ_LQE(IN(1).VAL,IN(1).SZ(1)))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_SZ_1(FA_SZ_LQE(IN(1).VAL,IN(1).SZ(1)))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_SZ_2(FA_SZ_LQE(IN(1).VAL,IN(1).SZ(1)))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('ss2'+ArgSeparator+'d2d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'lqe'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class obscont -----------------
//------------------------------------
ClassName = 'OBSCONT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OBSCNT(IN(1).VAL,IN(1).SZ(1),IN(1).SZ(2),NOutArg))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OBSCNT(IN(1).VAL,IN(1).SZ(1),IN(1).SZ(2),NOutArg))',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_1(FA_SZ_OBSCNT(IN(1).VAL,IN(1).SZ(1),IN(1).SZ(2),NOutArg))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_2(FA_SZ_OBSCNT(IN(1).VAL,IN(1).SZ(1),IN(1).SZ(2),NOutArg))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''2''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('ss2d2d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('ss2d2d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'obscont'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class svd ---------------------
//------------------------------------
ClassName = 'SVD';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)=  IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)=  FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2g2'+ArgSeparator+'d2d2d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d2d2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z2g2'+ArgSeparator+'z2z2z2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2z2z2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'svd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class HESS ---------------------
//------------------------------------
ClassName = 'HESS';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)=  IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)=  IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)=  IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'hess'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class SVA ---------------------
//------------------------------------
ClassName = 'SVA';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_U_SVA(IN(1),IN(2).VAL)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= FA_MIN(IN(1).SZ(1),IN(1).SZ(2))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2d2d2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2d2d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sva'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class balanc ------------------
//------------------------------------
ClassName = 'BALANC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         4',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(4).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2d2',ClassFileName,'file','y');
PrintStringInfo('d2d2'+ArgSeparator+'d2d2d2d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'balanc'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class RCOND -------------------
//------------------------------------
ClassName = 'RCOND';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'rcond'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CONVSTR --------------------
//------------------------------------
ClassName = 'CONVSTR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

//PrintStringInfo('NIN=         2',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'convstr'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class STRSUBST --------------------
//------------------------------------
ClassName = 'STRSUBST';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('g2g2g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strsubst'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class STRCMP --------------------
//------------------------------------
ClassName = 'STRCMP';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(1)',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
//PrintStringInfo('g2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('g2g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('g2g2g2'+ArgSeparator+'d0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strcmp'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class STRREV --------------------
//------------------------------------
ClassName = 'STRREV';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strrev'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class STRRCHR --------------------
//------------------------------------
ClassName = 'STRRCHR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strrchr'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class STRCHR --------------------
//------------------------------------
ClassName = 'STRCHR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2g2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strchr'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class STRNCPY --------------------
//------------------------------------
ClassName = 'STRNCPY';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).VAL',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2d0'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strncpy'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class STRSPN --------------------
//------------------------------------
ClassName = 'STRSPN';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2g2'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strspn'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class STRCSPN --------------------
//------------------------------------
ClassName = 'STRCSPN';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2g2'+ArgSeparator+'u80',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'strcspn'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





//------------------------------------
//---- Class ASCII --------------------
//------------------------------------
ClassName = 'ASCII';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_ASCII(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SUB(IN(1).SZ(2),''1'')',ClassFileName,'file','y');

//PrintStringInfo('NIN=         1',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    FA_TP_ASCII(IN(1).TP)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= FA_SUB(IN(1).SZ(2),''1'')',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'ascii'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');

INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class DEC2BIN --------------------
//------------------------------------
ClassName = 'DEC2BIN';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(FA_SZ_DEC2BIN(IN(1).VAL),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(2).VAL,IN(1).SZ(2))',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u162',ClassFileName,'file','y');

PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i80d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160d0'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u80d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160d0'+ArgSeparator+'u162',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');

PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82d0'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162d0'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82d0'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162d0'+ArgSeparator+'u162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'dec2bin'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class DEC2BASE --------------------
//------------------------------------
ClassName = 'DEC2BASE';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(FA_SZ_DEC2BASE(IN(1).VAL,IN(2).VAL),IN(1).SZ(2))',ClassFileName,'file','y');

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(IN(2).VAL,IN(1).SZ(2))',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('s0d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('s2d0'+ArgSeparator+'g2',ClassFileName,'file','y');

PrintStringInfo('d0d0d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('d2d0d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('s0d0d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('s2d0d0'+ArgSeparator+'g2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'dec2base'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class DEC2OCT --------------------
//------------------------------------
ClassName = 'DEC2OCT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(FA_SZ_DEC2OCT(IN(1).VAL),IN(1).SZ(1))',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u162',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'dec2oct'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class DEC2HEX --------------------
//------------------------------------
ClassName = 'DEC2HEX';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''g''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(FA_SZ_DEC2HEX(IN(1).VAL),IN(1).SZ(1))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'g2',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'g2',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'g2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'dec2hex'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class BIN2DEC --------------------
//------------------------------------
ClassName = 'BIN2DEC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'bin2dec'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class OCT2DEC --------------------
//------------------------------------
ClassName = 'OCT2DEC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('i80'+ArgSeparator+'i80',ClassFileName,'file','y');
PrintStringInfo('i160'+ArgSeparator+'i160',ClassFileName,'file','y');
PrintStringInfo('u80'+ArgSeparator+'u80',ClassFileName,'file','y');
PrintStringInfo('u160'+ArgSeparator+'u160',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('i82'+ArgSeparator+'i82',ClassFileName,'file','y');
PrintStringInfo('i162'+ArgSeparator+'i162',ClassFileName,'file','y');
PrintStringInfo('u82'+ArgSeparator+'u82',ClassFileName,'file','y');
PrintStringInfo('u162'+ArgSeparator+'u162',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'oct2dec'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class HEX2DEC --------------------
//------------------------------------
ClassName = 'HEX2DEC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'hex2dec'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class BASE2DEC --------------------
//------------------------------------
ClassName = 'BASE2DEC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('g2'+ArgSeparator+'d2',ClassFileName,'file','y');
// --- Annotation Function And Function List Function. ---
FunctionName = 'base2dec'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------
// --- Class Cosd. ---
// ------------------
ClassName = 'Cosd';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cosd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------
// --- Class Cotd. ---
// ------------------
ClassName = 'Cotd';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cotd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------
// --- Class Coth. ---
// ------------------
ClassName = 'Coth';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'coth'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------
// --- Class Csc. ---
// ------------------
ClassName = 'Csc';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'csc'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// ------------------
// --- Class Cscd. ---
// ------------------
ClassName = 'Cscd';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'cscd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// ------------------
// --- Class Csch. ---
// ------------------
ClassName = 'Csch';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'csch'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --- Class Sec. ---
// ------------------
ClassName = 'Sec';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sec'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// ------------------
// --- Class Secd. ---
// ------------------
ClassName = 'Secd';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'secd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



// --- Class Sech. ---
// ------------------
ClassName = 'Sech';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'sech'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class FACTORIAL --------------------
//------------------------------------
ClassName = 'FACTORIAL';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');

PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'factorial'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --- Class Interp1. ---
// ------------------
ClassName = 'Interp1';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2d2d2'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d2d0g2'+ArgSeparator+'d0',ClassFileName,'file','y');
//PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
//PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

//PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'interp1'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


// --- Class Modk. ---
// ------------------
ClassName = 'Modk';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);
PrintStringInfo('NIN=          1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1       ',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');

// --- Function List Class. ---
ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('s0'+ArgSeparator+'s0',ClassFileName,'file','y');
//PrintStringInfo('s2'+ArgSeparator+'s2',ClassFileName,'file','y');

//PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');
//PrintStringInfo('z0'+ArgSeparator+'z0',ClassFileName,'file','y');
//PrintStringInfo('c2'+ArgSeparator+'c2',ClassFileName,'file','y');
//PrintStringInfo('c0'+ArgSeparator+'c0',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'modk'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class PRIMES --------------------
//------------------------------------
ClassName = 'PRIMES';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_PRIMES(IN(1).VAL)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'primes'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class GCD --------------------
//------------------------------------
ClassName = 'GCD';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'gcd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class LCM --------------------
//------------------------------------
ClassName = 'LCM';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'lcm'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);







//------------------------------------
//---- Class FACTOR --------------------
//------------------------------------
ClassName = 'FACTOR';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_MUL(FA_SZ_FACTOR(IN(1).VAL),IN(1).SZ(1))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('s0'+ArgSeparator+'s2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'factor'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class GCD --------------------
//------------------------------------
ClassName = 'GCD';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

//Arguements specified: initial value, start time, time vector, ode function
PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''u8''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('u82'+ArgSeparator+'u80',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'gcd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class ZPBUTT --------------------
//------------------------------------
ClassName = 'ZPBUTT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''z''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=   ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'z2d0',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'zpbutt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class ZPCH1 --------------------
//------------------------------------
ClassName = 'ZPCH1';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         2',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''z''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=   ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= ''1''',ClassFileName,'file','y');


ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'z2d0',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'zpch1'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class ZPCH2 --------------------
//------------------------------------
ClassName = 'ZPCH2';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         3',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''z''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(2).TP=   ''z''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(2).SZ(2)= IN(1).VAL',ClassFileName,'file','y');
PrintStringInfo('OUT(3).TP=   ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(3).SZ(2)= ''1''',ClassFileName,'file','y');



ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0'+ArgSeparator+'z2z2d0',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'zpch2'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class BUTTMAG --------------------
//------------------------------------
ClassName = 'BUTTMAG';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(3).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).SZ(2)',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u80d2'+ArgSeparator+'d2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'buttmag'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class CHEB1MAG --------------------
//------------------------------------
ClassName = 'CHEB1MAG';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(4).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(4).SZ(2)',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('u80u80d2'+ArgSeparator+'d2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'cheb1mag'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);

//------------------------------------
//---- Class CHEB2MAG --------------------
//------------------------------------
ClassName = 'CHEB2MAG';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(4).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(4).SZ(2)',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');
//PrintStringInfo('u80u80d2'+ArgSeparator+'d2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'cheb2mag'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);





//------------------------------------
//---- Class SINC --------------------
//------------------------------------
ClassName = 'SINC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('z2'+ArgSeparator+'z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'sinc'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class SINCD --------------------
//------------------------------------
ClassName = 'SINCD';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_ADD(FA_MUL(''8'',IN(1).VAL),''1'')',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('u80u80'+ArgSeparator+'d2',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'sincd'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class FSFIRLIN --------------------
//------------------------------------
ClassName = 'FSFIRLIN';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_FSFIRLIN_SZ(IN(1).SZ(2))',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'fsfirlin'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class %K --------------------
//------------------------------------
ClassName = 'modk';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         1',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).SZ(2)',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d2'+ArgSeparator+'d2',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'modk'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class FILT_SINC --------------------
//------------------------------------
ClassName = 'FILT_SINC';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(1).VAL',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'filt_sinc'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class FFILT --------------------
//------------------------------------
ClassName = 'FFILT';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


PrintStringInfo('NIN=         4',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    ''d''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(1).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(2).VAL',ClassFileName,'file','y');




ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('g2d0d0d0'+ArgSeparator+'d2',ClassFileName,'file','y');



// --- Annotation Function And Function List Function. ---
FunctionName = 'ffilt'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);



//------------------------------------
//---- Class %SN --------------------
//------------------------------------
ClassName = 'modsn';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);


//PrintStringInfo('NIN=         2',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    FA_TP_MODSN(IN(1).TP)',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

//PrintStringInfo('NIN=         2',ClassFileName,'file','y');
//PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).TP=    FA_TP_MODSN(IN(1).TP',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
//PrintStringInfo('OUT(1).SZ(2)= ''1''',ClassFileName,'file','y');

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    FA_TP_MODSN(IN(1).TP)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= FA_SZ_MODSN(IN(1).SZ(1))',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_MODSN(IN(1).SZ(2))',ClassFileName,'file','y');






ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('z0d0'+ArgSeparator+'z0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('z2d0'+ArgSeparator+'z2',ClassFileName,'file','y');


// --- Annotation Function And Function List Function. ---
FunctionName = 'modsn'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);




//------------------------------------
//---- Class ELL1MAG --------------------
//------------------------------------
ClassName = 'ell1mag';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         3',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(3).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= IN(3).SZ(1)',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= IN(3).SZ(2)',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0z2'+ArgSeparator+'d2',ClassFileName,'file','y');
PrintStringInfo('d0d0d2'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'ell1mag'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);


//------------------------------------
//---- Class AMELL --------------------
//------------------------------------
ClassName = 'amell';

// --- Class Annotation. ---
PrintStringInfo('   Adding Class: '+ClassName+'.',GeneralReport,'file','y');
ClassFileName = fullfile(SCI2CLibCAnnClsDir,ClassName+ExtensionCAnnCls);

PrintStringInfo('NIN=         2',ClassFileName,'file','y');
PrintStringInfo('NOUT=         1',ClassFileName,'file','y');
PrintStringInfo('OUT(1).TP=    IN(1).TP',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(1)= ''1''',ClassFileName,'file','y');
PrintStringInfo('OUT(1).SZ(2)= FA_SZ_AMELL(IN(1).SZ(2))',ClassFileName,'file','y');

ClassFileName = fullfile(SCI2CLibCFLClsDir,ClassName+ExtensionCFuncListCls);
PrintStringInfo('d0d0'+ArgSeparator+'d0',ClassFileName,'file','y');
PrintStringInfo('d2d0'+ArgSeparator+'d2',ClassFileName,'file','y');

// --- Annotation Function And Function List Function. ---
FunctionName = 'amell'; 
PrintStringInfo('      Adding Function: '+FunctionName+'.',GeneralReport,'file','y');
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCAnnFunDir,ClassName,GeneralReport,ExtensionCAnnFun);
INIT_GenAnnFLFunctions(FunctionName,SCI2CLibCFLFunDir,ClassName,GeneralReport,ExtensionCFuncListFun);






// ////////////////////////////////////////////
// /////PARTE INTRODOTTA DA ALBERTO MOREA
// /////////////////////////////////////////////
// ///////////////////////////////////////////////

// // DOMAINS DEFINITION  FOR EVERY CLASS-LEADER IN SCI2C LIBRARY

// // In the  following  lets:
// //	N,R ,C     are the  standard sets of integer,real ,complex numbers
// //	 I,J c R   are intervals of real numbers
// //   {}  the empty set
// //	  Sel={'r','c'}  or {0,1}   are the selection sets r=row,c=column
// //	  B={T,F} is Boolean set
// //   F is the standard set of File IDentify  files
// //	  G is the standard alphanumeric string domain

// // For every  sci2c function library class  we reported
// // the domains , annotations only for the class-leader


// //  Example    [y1,y2]=Fun(x1,x2,x3) : scilab library  function call

// // Domain RxNxSel->{R,R}   :the first input element  is real number ,the second is integer ,
// // the last is in the selection set
// // The first output and the second are real numbers

// // Notice : only   default (double) precision are considered for real and complex data
// // The dimension of the input/output data are provided in the mapping schema

// //    d0 =  double real  scalar
// //    d2 =  double real vector or matrix
// //    z0=  double complex scalar
// //    z2= double complex  vector or matrix

// // ---------------------
// // --- Class Global. ---
// // ---------------------

// // DOMAINS   G -> R

// //////////////////////////////////


// // ---------------------
// // --- Class Float. ---
// // ---------------------

// // DOMAINS   R -> R

// //////////////////////////////////


// // ---------------------
// // --- Class Double. ---
// // ---------------------

// // DOMAINS   R -> R

// //////////////////////////////////

// // ----------------------------
// // --- Class FloatComplex. ---
// // ----------------------------

// // DOMAINS      1)R -> C
// //              2)C -> C

// /////////////////////////////////

// // ----------------------------
// // --- Class DoubleComplex. ---
// // ----------------------------

// // DOMAINS     1) R -> C
// //             2) C -> C

// /////////////////////////////////

// // ------------------
// // --- Class Sin. ---
// // ------------------

// // DOMAINS   1) IcR -> JcR
// //           2) C -> C

// /////////////////////////////////

// // -------------------
// // --- Class Atan. ---
// // -------------------

// // DOMAINS     1) IcR -> JcR
// //             2) C -> C
// //             3) RxR -> JcR

// /////////////////////////////////

// // -------------------
// // --- Class Sqrt. ---
// // -------------------

// // DOMAINS     1) IcR -> JcR
// //             2) R -> R
// //             3) C -> C

 // /////////////////////////////////

// // --------------------
// // --- Class Zeros. ---
// // --------------------

// // DOMAINS        1) {}->R
// //                2) NxN -> R
// //                3) R -> R
// //                4) C -> R

// /////////////////////////////////

// // --------------------
// // --- Class Sum. ---
// // --------------------

// // DOMAINS      1) R -> R
// //              2) C -> C
// //              3) RxSel -> R
// //              4) CxSel -> R

 // /////////////////////////////////

// // --------------------
// // --- Class Abs. ---
// // --------------------

// // DOMAINS    1) R -> R+
// //            2) C -> R+

// /////////////////////////////////

// // ------------------------
// // --- Class OpDotStar. ---
// // ------------------------

// // DOMAINS        1) RxR -> R
// //                2) CxC -> C
// //                3) RxC -> C
// //                4) CxR -> C

// /////////////////////////////////

// // ------------------------
// // --- Class OpDotHat. ---
// // ------------------------

// // DOMAINS        1) RxR -> R
// //                2) CxC -> C

// /////////////////////////////////

// // ----------------------
// // --- Class OpLogEq. ---
// // ----------------------

// // DOMAINS        1) RxR -> B
// //                2) CxC -> B
// //                3) GxG -> B

// /////////////////////////////////

// // ---------------------
// // --- Class OpStar. ---
// // ---------------------

// // DOMAINS        1) RxR -> R
// //                2) CxC -> C
// //                3) RxC -> C
// //                4) CxR -> C

// /////////////////////////////////

// // ---------------------
// // --- Class OpApex. ---
// // ---------------------

// // DOMAINS        1) R -> R
// //                2) C -> C

// /////////////////////////////////

// // ---------------------
// // --- Class OpPlus. ---
// // ---------------------

// // DOMAINS        1) R -> R
// //                2) C -> C
// //                3) RxR -> R
// //                4) CxC -> C
// //                5) RxC -> C
// //                6) CxR -> C
// //                7) GxG -> G

// /////////////////////////////////

// // ----------------------
// // --- Class OpMinus. ---
// // ----------------------

// // DOMAINS        1) R -> R
// //                2) C -> C
// //                3) RxR -> R
// //                4) CxC -> C
// //                5) RxC -> C
// //                6) CxR -> C


// /////////////////////////////////

// // -------------------
// // --- Class OpRc. ---
// // -------------------

// // DOMAINS        1) RxR -> R
// //                2) CxC -> C

// /////////////////////////////////

// // -------------------
// // --- Class OpCc. ---
// // -------------------

// // DOMAINS        1) RxR -> R
// //                2) CxC -> C

// /////////////////////////////////

// // -------------------
// // --- Class Find. ---
// // -------------------

// // DOMAINS        1) R -> N
// //                2) R -> {N,N}
// //                3) RxN -> N
// //                4) RxN ->{N,N}

// /////////////////////////////////

// // ---------------------
// // --- Class Length. ---
// // ---------------------

// // DOMAINS        1) R -> N
// //                2) C -> N
// //                3) G -> N

// /////////////////////////////////

// // -------------------
// // --- Class Size. ---
// // -------------------

// // DOMAINS        1) R -> {N,N}
// //                2) C -> {N,N}
// //                3) RxSel -> {N,N}
// //                4) CxSel -> {N,N}

// /////////////////////////////////

// // ---------------------
// // --- Class Return. ---
// // ---------------------
// // DOMAINS        1) {} -> {}

// /////////////////////////////////

// // ----------------------
// // --- Class OpColon. ---
// // ----------------------

// // DOMAINS        1) RxR -> R
// //                2) RxRxR -> R

// /////////////////////////////////

// // ----------------------
// // --- Class IsEmpty. ---
// // ----------------------

// // DOMAINS        1) R -> B
// //                2) C -> B

// /////////////////////////////////

// // ----------------------
// // --- Class Trace. ---
// // ----------------------

// // DOMAINS        1) R -> R
// //                2) C -> C

// ////////////////////////////////

// // --------------------
// // --- Class OpIns. ---
// // --------------------

// // DOMAINS        1) RxRxR   -> {}
// //                2) RxRxRxR -> {}
// //                3) CxRxR   -> {}
// //                4) CxRxRxC -> {}
// //                5) CxRxC   -> {}

// ////////////////////////////////

// // --------------------
// // --- Class OpExt. ---
// // --------------------

// // DOMAINS        1) RxR   -> R
// //                2) CxR   -> C
// //                3) CxRxR -> C

// ////////////////////////////////

// // -------------------
// // --- Class Disp. ---
// // -------------------

// // DOMAINS        1) R -> R
// //                2) C -> R
// //                3) G -> R

// ////////////////////////////////

// // ----------------------
// // --- Class OpEqual. ---
// // ----------------------

// // DOMAINS        1) R -> R
// //                2) C -> C
// //                3) G -> G

// ////////////////////////////////

// // --------------------
// // --- Class Mopen. ---
// // --------------------

// // DOMAINS        1) G     -> F
// //                2) GxG   -> F
// //                3) GxGxR -> {F,R}
// //                4) G     -> {F,R}
// //                5) GxG   -> {F,R}

// ////////////////////////////////

// // -------------------
// // --- Class Mput. ---
// // -------------------

// // DOMAINS        1) RxGxF -> {}
// //                2) RxGxF -> N

// ////////////////////////////////

// // -------------------
// // --- Class Mget. ---
// // -------------------

// // DOMAINS        1) RxGxF -> N

// ////////////////////////////////

// // ---------------------
// // --- Class Mclose. ---
// // ---------------------

// // DOMAINS        1) {} -> N
// //                2) F -> N

// ////////////////////////////////

// // ---------------------
// // --- Class Mseek. ---
// // ---------------------

// // DOMAINS        1) R     -> {}
// //                2) RxF   -> {}
// //                3) RxFxG -> {}

// ////////////////////////////////

// // ---------------------
// // --- Class Convol. ---
// // ---------------------

// // DOMAINS         1) RxR->R
                   // 2) CxC->C
                   // 3) RxC->C
                   // 4) CxR->C
                   // 5) RxR->{R,R}
                   // 6) CxC->{C,C}
                   // 7) RxC->{C,C}
                   // 8) CxR->{C,C}
                   // 9) CxC->{C,C}
                  // 10) RxRxR->{R,R}
                  // 11) RxCxC->{C,C}
                  // and so on \85..


// ////////////////////////////////


// // -------------------
// // --- Class IFFT. ---
// // -------------------

// // DOMAINS         1) R->C
                   // 2) C->C

 // ////////////////////////////////

// // ------------------
// // --- Class FFT. ---
// // ------------------

// // DOMAINS         1) R->C
                   // 2) RxN->C
                   // 3) C->C
                   // 4) CxN->C
                   // 5) RxNxN->C
                   // 6) CxNxN->C
                   // 7) RxNxNxN->C
                   // 8) CxNxNxN->C

// ////////////////////////////////

// // -----------------------
// // --- Class FFTShift. ---
// // -----------------------

// // DOMAINS         1) R->R
                   // 2) C->C
                   // 3) RxR->R
                   // 4) RxG->R
                   // 5) CxR->C
                   // 6) CxG->C

// ////////////////////////////////

// // --------------------
// // --- Class Meanf. ---
// // --------------------

// // DOMAINS         1) R->R
                   // 2) C->C
                   // 3) CxSel->C
                   // 4) RxSel->R

// ////////////////////////////////

// // --------------------
// // --- Class Frmag. ---
// // --------------------

// // DOMAINS         1) RxN->R
                   // 2) RxN->{R,R}
                   // 3) RxRxN->R
                   // 4) RxRxN->{R,R}

// ////////////////////////////////

// // ------------------
// // --- Class Lev. ---
// // ------------------

// // DOMAINS         1) R->R
                   // 2) R->{R,R}
                   // 3) R->{R,R,R}
                   // 4) C->C
                   // 5) C->{C,C}
                   // 6) C->{C,C,C}

// ////////////////////////////////

// // --------------------------
// // --- Class OpBackSlash. ---
// // --------------------------

// // DOMAINS         1) RxR->R
                   // 2) CxC->C
                   // 3) RxC->C
                   // 4) CxR->C

// ////////////////////////////////

// // -----------------------
// // --- Class Cepstrum. ---
// // -----------------------

// // DOMAINS         1) RxR->C
                   // 2) RxC->C

// ////////////////////////////////

// // -----------------------
// // --- Class Spec. ---
// // -----------------------

// // DOMAINS         1) R->R
                   // 2) C->C
                   // 3) R->{R,R}
                   // 4) C->{C,C}

// ////////////////////////////////

// // -------------------
// // --- Class Part. ---
// // -------------------

// // DOMAINS         1) GxN->G

// ////////////////////////////////

// // -----------------------
// // --- Class Strindex. ---
// // -----------------------

// // DOMAINS         1) GxG->N

// ////////////////////////////////

// // -----------------------
// // --- Class StrSubSt. ---
// // -----------------------

// // DOMAINS         1) GxGxG->G

// ////////////////////////////////


// ////////////////////////////////
// ////////////////////////////////
// //  fine parte introdotta alberto
// ////////////////////////////////
// ////////////////////////////////

// //RNU se puoi sistema meglio la parte introdotta da al.
endfunction
