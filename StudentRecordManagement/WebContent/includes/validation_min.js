
            function validate()
            {
            
       
                var a = document.getElementById("txtMark1");
                var b = document.getElementById("txtMark2");
                var c = document.getElementById("txtMark3");
                var d = document.getElementById("txtMark1").value;
                var e = document.getElementById("txtMark2").value;
                var f = document.getElementById("txtMark3").value;
                var valid = true;
                
           
                
                if(a.value.length<=0 || b.value.length<=0 || c.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else{
                        if(isNaN(d) || isNaN(e)  || isNaN(f)){
                            alert("Enter a number");
                    valid = false;}
                }
                return valid;
            };
