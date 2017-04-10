<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
	<form action="/exam_project/addClass.do">
	班级名称:<input name=clsname> <br/><br/>
	班级类型:<select name="type.typeId">
			<option selected value="">请选择</option>
			<c:forEach items="${clist}" var="cl">
			<option value="${cl.type.typeId}">${cl.type.typeName}</option>
			<!-- <option value="2">ios</option>
			<option value="3">Android</option> -->
	</c:forEach>
		</select> <br/><br/>
	班主任:<select name="headTeacher.hid">
			<option selected value="">请选择</option>
			<c:forEach items="${clist}" var="cl">
			<option value="${cl.headTeacher.hid}">${cl.headTeacher.hname}</option>
			<!-- <option value="">何老师</option>
			<option value="">王老师</option> -->
			</c:forEach>
		</select> <br/><br/>
	讲师:<select name="teacher.tid">
			<option selected value="">请选择</option>
			<c:forEach items="${clist}" var="cl">
			<option value="${cl.teacher.tid}">${cl.teacher.tname}</option>
			</c:forEach>
		</select> <br/><br/>
	开班时间:<input name="strartdate" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})"> <br/><br/>
	学习时长:<input name="studytime"><br/><br/>
	状态:<select name="status">
		<option value=0>未开始</option>
		<option value=1>学习中</option>
		<option value=2>已结课</option>
	</select><br/><br/>
<input type="submit" value="更新"/>
	</form>
	<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
</body>
</html>