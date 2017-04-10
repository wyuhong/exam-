<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="addexam.do">
<div>
考试名称：<input type="text" name="ename" ><br/>
待考班级：<select name="clsname" id="clsname">
<option selected  value="">请选择</option>
<c:forEach items="${clist}" var="c">
<option>${c.clsname}</option>
</c:forEach>
</select><br/>
考卷：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="paperid" id="paperid"> 
	<option selected  value="">请选择</option>
</select><br/>
开考时间：<input type="text" name="starttime" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm',readOnly:true})"><br/>
结束时间：<input type="text" name="endtime" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm',readOnly:true})"><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">

</div>
</form>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript">
$("#clsname").change(function(){
	var clsname = $("#clsname").val();
	$("#paperid").empty();
	$.post(
		"/exam/selectPaperid.do",
		{"clsname":clsname},
		function(data){
			if(data != null){
				for(var i = 0 ; i < data.length; i++){
					$("#paperid").append("<option>"+data[i].paperid+"</option>");
				}
			}
		}
	);
});

</script>
</html>