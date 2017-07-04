function Required_addrs = get_rquird_fnctns(Standalone_files,Arduino_files,SharedInfo)
Required_stdalon_indx = 1;
Required_ardno_indx = 1;
x = 1;
y = 1;

Standalone_files_1 = Standalone_files;
Standalone_files_extras(1) = Standalone_files_1(76);
Standalone_files_extras(2) = Standalone_files_1(77);
Standalone_files_extras(3) = Standalone_files_1(1009);
Standalone_files_extras(4) = Standalone_files_1(1010);
Standalone_files_extras(5) = Standalone_files_1(1011);
Standalone_files_extras(6) = Standalone_files_1(1012);
Standalone_files_1(1012) = [];
Standalone_files_1(1011) = [];
Standalone_files_1(1010) = [];
Standalone_files_1(1009) = [];
Standalone_files_1(77) = [];
Standalone_files_1(76) = [];


No_of_stdalon_files = size(Standalone_files_1);
No_of_stdalon_files = No_of_stdalon_files(1);
//disp(No_of_files);  
for index=1:No_of_stdalon_files 
    K = strsplit(Standalone_files_1(index),"/");
    Standalone_files_folders(index) = K(4);
    Standalone_C_files(index) = K(5);
    Standalone_C_files(index) = strtok(Standalone_C_files(index),".");
end
for index=1:6
    K = strsplit(Standalone_files_extras(index),"/");
    Standalone_files_folders(No_of_stdalon_files+index) = K(3);
    Standalone_C_files(No_of_stdalon_files+index) = K(4);
    Standalone_files_1(No_of_stdalon_files+index)= Standalone_files_extras(index);
    Standalone_C_files(No_of_stdalon_files+index) = strtok(Standalone_C_files(No_of_stdalon_files+index),".");
end

Arduino_files_1 = Arduino_files;
No_of_ardno_files = size(Arduino_files_1);
No_of_ardno_files = No_of_ardno_files(1);
for index=1:No_of_ardno_files 
    K = strsplit(Arduino_files_1(index),"/");
    Arduino_files_folders(index) = K(4);
    Arduino_C_files(index) = K(5);
    Arduino_C_files(index) = strtok(Arduino_C_files(index),".");
end


  

  for index = 1:SharedInfo.Function_list_index
      for k = 1:No_of_stdalon_files
 	  if SharedInfo.Function_list(index) == Standalone_files_folders(k)
            Required_fnctn_stdalon(Required_stdalon_indx) = k;
	    Required_fnctn_stdlon_f(x) = Standalone_C_files(k);
	    x = x+1;
           Required_stdalon_indx = Required_stdalon_indx + 1;
          end
      end
  end
  if x == 1
     Required_fnctn_stdlon_f = [];
  end
        
Required_stdalon_indx = Required_stdalon_indx - 1;

  for index = 1:SharedInfo.Function_list_index
      for k = 1:No_of_ardno_files
 	  if SharedInfo.Function_list(index) == Arduino_files_folders(k);
            Required_fnctn_ardno(Required_ardno_indx) = k;
            Required_fnctn_ardno_f(y) = Arduino_C_files(k);
	    y = y+1;
           Required_ardno_indx = Required_ardno_indx + 1;
          end
      end
  end

Required_ardno_indx = Required_ardno_indx - 1;

scilab2ccode = Scilab2CDeps();
for index = 1:Required_stdalon_indx
    call = "scilab2ccode.deps." + Standalone_C_files(Required_fnctn_stdalon(index));
    call_val = eval(call);
    Required_fnctn_stdlon_f = cat(1,Required_fnctn_stdlon_f,(call_val)');
end

Required_fnctn_stdlon_f = unique(Required_fnctn_stdlon_f);

for index = 1:Required_ardno_indx
    call = "scilab2ccode.deps." + Arduino_C_files(Required_fnctn_ardno(index));
    call_val = eval(call);
    Required_fnctn_ardno_f = cat(1,Required_fnctn_ardno_f,(call_val)');
end
Required_fnctn_ardno_f = unique(Required_fnctn_ardno_f);

all_files_addrs = cat(1,Standalone_files_1,Arduino_files_1);
required_files = cat(1,Required_fnctn_stdlon_f,Required_fnctn_ardno_f);
required_files = unique(required_files);
no_of_required_files = size(required_files);
no_of_required_files = no_of_required_files(1);
no_of_all_files = size(all_files_addrs);
no_of_all_files = no_of_all_files(1);

all_files = cat(1,Standalone_C_files,Arduino_C_files);
index = 1;

for i=1:no_of_required_files
    for k=1:no_of_all_files
        if required_files(i) == all_files(k)
           Required_addrs(index) = all_files_addrs(k);
	   index = index + 1;
        end
    end
end
    
endfunction
