   
    function show_sub(v,hid){  
    	if(v =="updateHeadTeacher"){
       location = "/exam/findHeadTeacherByHid.do?hid="+hid;   
    	}
    
    	if(v =="updateHeadTeacherStatus"){
 	       location = "/exam/updateHeadTeacherStatusByHid.do?hid="+hid;   
 	    	}

    }     
