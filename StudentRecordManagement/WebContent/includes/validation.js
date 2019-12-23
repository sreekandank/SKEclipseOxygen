
            function validate()
            {
            
            	var name= document.getElementById("txtStudentName");
            	var id= document.getElementById("txtStudentID");
                var mark1 = document.getElementById("txtMark1");
                var mark2 = document.getElementById("txtMark2");
                var mark3 = document.getElementById("txtMark3");
                var imark1= document.getElementById("txtMark1").value;
                var imark2 = document.getElementById("txtMark2").value;
                var imark3 = document.getElementById("txtMark3").value;
                var valid = true;
               
                
                document.getElementById("eStudent_id").style.visibility = "hidden";
                document.getElementById("eStudent_name").style.visibility = "hidden";
                document.getElementById("eMark1").style.visibility = "hidden";
                document.getElementById("eMark2").style.visibility = "hidden";
                document.getElementById("eMark3").style.visibility = "hidden";
           
                if(name.value.length<=0 )
                {
            	 document.getElementById("eStudent_name").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                 
                }
                if(id.value.length<=0 )
                {
            	 document.getElementById("eStudent_id").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                 
                }
                
                if(mark1.value.length<=0 )
                    {
                	 document.getElementById("eMark1").style.visibility = "visible";
                        //alert("Don't leave the field empty!");
                        valid = false;
                     
                    }
                if(mark2.value.length<=0 )
                {
            	 document.getElementById("eMark2").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                   
                }
                if(mark3.value.length<=0 )
                {
            	 document.getElementById("eMark3").style.visibility = "visible";
                    //alert("Don't leave the field empty!");
                    valid = false;
                 
                }
                
                if(isNaN(id.value))
            	{
            	document.getElementById("eStudent_id").style.visibility = "visible";
                 //alert(imark1);
                 valid = false;
             
            	
            	}
                
                if(isNaN(imark1)||(imark1<0 || imark1>100))
                	{
                	document.getElementById("eMark1").style.visibility = "visible";
                     //alert(imark1);
                     valid = false;
                 
                	
                	}
                if(isNaN(imark2)||(imark2<0 || imark2>100))
            	{
            	document.getElementById("eMark2").style.visibility = "visible";
                 //alert(imark1);
                 valid = false;
             
            	
            	}
            
                if(isNaN(imark3)||(imark3<0 || imark3>100))
            	{
            	document.getElementById("eMark3").style.visibility = "visible";
                 //alert(imark1);
                 valid = false;
             
            	
            	}
            
           
                return valid;
            };
