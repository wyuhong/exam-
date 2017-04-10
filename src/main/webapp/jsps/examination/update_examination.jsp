<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="updateExam.do">
<div>

班级名称：<select name="clsname" id="clsname">
<c:forEach items="${clist}" var="c">
<c:if test="${c.clsname == exam.clsname}">
<option selected="selected">${c.clsname}</option>
</c:if>
<option >${c.clsname}</option>
</c:forEach>
</select><br/>

<input type="hidden" name="eid" value="${exa.eid}">
考试名称：<input type="text" name="ename" value="${exa.ename}"><br/>
开始时间：<input type="text" name="starttime" value='<fmt:formatDate value="${exa.starttime}" pattern="yyyy-MM-dd HH:mm:ss"/>' onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm',readOnly:true})"><br/>
结束时间：<input type="text" name="endtime" value='<fmt:formatDate value="${exa.starttime}" pattern="yyyy-MM-dd HH:mm:ss"/>' onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm',readOnly:true})"><br/> 

试卷Id:<select name="paperid" id="paperid">
	<option selected="selected">${exa.paperid}</option>
</select><br/>
<input type="submit" value="提交">
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
		"/exam_project/selectPaperid.do",
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