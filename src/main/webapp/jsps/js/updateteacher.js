   
    function show_sub(v,tid){  
    	if(v =="updateTeacher"){
       location = "/exam/findTeacherByTid.do?tid="+tid;   
    	}
    	if(v =="updateStatus1"){
    	       location = "/exam/updateStatus1ByTid.do?tid="+tid;   
    	    	}
    	if(v =="updateStatus2"){
 	       location = "/exam/updateStatus2ByTid.do?tid="+tid;   
 	    	}

    }     
