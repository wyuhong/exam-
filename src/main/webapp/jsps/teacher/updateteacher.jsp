<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
	<form action="/exam_project/updateTeacher.do">
	<input type="hidden" name="tid" value="${teacher.tid}">
		姓名：<input type="text" name="tname" value="${teacher.tname}" /> 
		入职时间：<input type="text" name="entrytime" value='<fmt:formatDate value="${teacher.entrytime}" />'onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd ',readOnly:true})" />
	           工作经验:<input type="text" name="experience" value="${teacher.experience}"/>
	           状态：<select name="status" >
	    <option selected value="">请选择</option>
		<option   value="0">离职</option>
		<option   value="1">未授课</option>
		<option   value="2">授课中</option>
		<option   value="3">结课</option>
	</select>
		类型：<select name="type.typeId" >
		<option selected value="">请选择</option>
		<c:forEach items="${tList}" var="tl">
		<option   value="${tl.typeId}">${tl.typeName}</option>
	    </c:forEach>
	</select>
		所授班：<select name="cls.clsid" >
		<option selected value="">请选择</option>
		<c:forEach items="${cList}" var="cl">
		<option   value="${cl.clsid}">${cl.clsname}</option>
	    </c:forEach>
	</select>
		<input type="submit" value="修改" />
		</form>
</body>
<script src="/exam_project/My97DatePicker/WdatePicker.js"></script> 
</html>