//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2010 - DIGITEO - Bruno JOFRET
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
//
//

function scilab2c(varargin)
  [lhs, rhs] = argn();
  disp("YES")
  select rhs
//
// scilab2c()
//
   case 0
    sci2c_gui();
    return
//
// scilab2c(UserScilabMainFile, CCodeOutputDir)
//
   case 2
    for i = 1:2
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    UserSciFilesPaths = [];
    RunMode = 'All';
    BuildTool = getNativeBuildTool();
    Target = "StandAlone"
    //Board_name = "uno"
    //
// scilab2c(UserScilabMainFile, CCodeOutputDir, UserSciFilesPaths)
//
   case 3
    for i = 1:3
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    if varargin(3) == ""
      UserSciFilesPaths = [];
    else
      UserSciFilesPaths = varargin(3);
    end
    RunMode = "All";
    BuildTool = getNativeBuildTool();
    Target = "StandAlone"
    //Board_name = "uno"
	//
// scilab2c(UserScilabMainFile, CCodeOutputDir, UserSciFilesPaths, RunMode)
//
   case 4
    for i = 1:4
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    if varargin(4) <> "All" & varargin(4) <> "Translate" & varargin(4) <> "GenLibraryStructure" 
	  error(msprintf(gettext("%s: argument #%d must be: ""All"", ""Translate"",""GenLibraryStructure"".\n"),"scilab2c",4));
      return
    end
    UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    if varargin(3) == ""
      UserSciFilesPaths = [];
    else
      UserSciFilesPaths = varargin(3);
    end
    RunMode = varargin(4);
    BuildTool = getNativeBuildTool();
    Target = "StandAlone"
    //Board_name = "uno"
   case 5
	for i = 1:4
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    if varargin(4) <> "All" & varargin(4) <> "Translate" & varargin(4) <> "GenLibraryStructure" & varargin(4) <> "FunCall" 
	  error(msprintf(gettext("%s: argument #%d must be: ""All"", ""Translate"",""GenLibraryStructure"" or ""FunCall"".\n"),"scilab2c",4));
      return
    end
	if varargin(5) <> "make" & varargin(5) <> "nmake"
	  error(msprintf(gettext("%s: argument #%d must be: ""make"" or ""nmake"".\n"),"scilab2c",5));
      return
    end
	UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    if varargin(3) == ""
      UserSciFilesPaths = [];
    else
      UserSciFilesPaths = varargin(3);
    end
    RunMode = varargin(4);
    BuildTool = varargin(5);
    Target = "StandAlone"
    //Board_name = "uno"
   case 6
      for i = 1:4
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    if varargin(4) <> "All" & varargin(4) <> "Translate" & varargin(4) <> "GenLibraryStructure" & varargin(4) <> "FunCall" 
	  error(msprintf(gettext("%s: argument #%d must be: ""All"", ""Translate"" ,""GenLibraryStructure"" or ""FunCall"".\n"),"scilab2c",4));
      return
    end
    if varargin(5) <> "make" & varargin(5) <> "nmake"
	  error(msprintf(gettext("%s: argument #%d must be: ""make"" or ""nmake"".\n"),"scilab2c",5));
      return
    end
    if varargin(6) <> "StandAlone" & varargin(6) <> "Arduino" & varargin(6) <> "AVR" & varargin(6) <> "RPi"
	  error(msprintf(gettext("%s: argument #%d must be: ""StandAlone"" or ""Arduino"" or ""AVR"" or ""RPi"".\n"),"scilab2c",5));
      return
    end
    UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    if varargin(3) == ""
      UserSciFilesPaths = [];
    else
      UserSciFilesPaths = varargin(3);
    end
    RunMode = varargin(4);
    BuildTool = varargin(5);
    Target = varargin(6);
    //Board_name = "uno";
   case 7
      for i = 1:4
      if typeof(varargin(i)) <> "string"
		error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"scilab2c",i));
		return
      end
    end
    if varargin(4) <> "All" & varargin(4) <> "Translate" & varargin(4) <> "GenLibraryStructure" & varargin(4) <> "FunCall" 
	  error(msprintf(gettext("%s: argument #%d must be: ""All"", ""Translate"" ,""GenLibraryStructure"" or ""FunCall"".\n"),"scilab2c",4));
      return
    end
    if varargin(5) <> "make" & varargin(5) <> "nmake"
	  error(msprintf(gettext("%s: argument #%d must be: ""make"" or ""nmake"".\n"),"scilab2c",5));
      return
    end
    if varargin(6) <> "StandAlone" & varargin(6) <> "Arduino" & varargin(6) <> "AVR" & varargin(6) <> "RPi"
	  error(msprintf(gettext("%s: argument #%d must be: ""StandAlone"" or ""Arduino"" or ""AVR"" or ""RPi"".\n"),"scilab2c",5));
      return
    end
    //if varargin(7) <> "uno" & varargin(7) <> "mega" & varargin(7) <> "mega2560" & varargin(7) <> "micro" & varargin(7) <> "nano" & varargin(7) <> "mini"
	//  error(msprintf(gettext("%s: argument #%d must be: ""uno"" or ""mega"" or ""micro"" or ""nano"" or ""mini"".\n"),"scilab2c",7));
      //return
    //end
    UserScilabMainFile = varargin(1);
    CCodeOutputDir = varargin(2);
    if varargin(3) == ""
      UserSciFilesPaths = [];
    else
      UserSciFilesPaths = varargin(3);
    end
    RunMode = varargin(4);
    BuildTool = varargin(5);
    Target = varargin(6);
    Board_name = varargin(7);
  else
//
// Calling scilab2c with more than understood values
//
error(msprintf(gettext("%s: Wrong number of input argument(s): %d expected.\n"),"scilab2c",2));
  end


// --- LAUNCH USER SCI CODE TO TEST IT BEFORE TRANSLATING IT!!! ---
// If Target choosen is 'Standalone' then only execute the code, otherwise directly start conversion.  
  if (Target == "StandAlone" |Target == "AVR") 
  runscicode(UserScilabMainFile, UserSciFilesPaths);
  
 // --- ASK USER FOR CONTINUATION. ---

  // Do not open confirmation box if we are not in STD mode.
	  if(getscilabmode() == "STD")
		userchoice = messagebox("Exection Succesfull. Start translation ?", "modal", "info", ["Yes" "No"])
	  else
		userchoice = 1
	  end
  else
	userchoice = 1;
  end
  if (userchoice == 1)
// --- LAUNCH SCI2C ---
	runsci2c(UserScilabMainFile, UserSciFilesPaths, CCodeOutputDir, RunMode, BuildTool,Target,Board_name);
  end

endfunction

function BuildTool = getNativeBuildTool()
  if getos() == "Windows"
	BuildTool = "nmake"
  else
	BuildTool = "make"
  end
endfunction
