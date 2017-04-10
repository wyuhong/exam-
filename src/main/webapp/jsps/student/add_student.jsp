<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="/exam/AddStudents.do">
	<select name="classes.clsid">
		<option value="">班级</option>
		<c:forEach items="${clist}" var="c">
			<option value="${c.clsid}">${c.clsname}</option>
		</c:forEach>
	</select>
	<br /> 姓名：&nbsp;&nbsp;
	<input type="text" name="stuName">
	<br /> 性別：&nbsp;&nbsp;
	<input type="text" name="sex">
	<br /> 毕业院校：
	<input type="text" name="school">
	<br /> 出生年月：
	<input type="text" name="birthDay"
	onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})">>
	<br /> 手机：&nbsp;&nbsp;
	<input type="text" name="phone">
	<br />
	
	出生地：&nbsp;&nbsp;
	<input type="text" name="birthPlace">
	<br />
	 进班时间：
	<input type="text" name="classTime"
		onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})">
	<br /> &nbsp;&nbsp;
	 <select name="status">
			<option value="">状态</option>
			<option value="0">学习中</option>
			<option value="1">结课</option>
			<option value="2">休学</option>
		</select>
	<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="提交">
	</form>
</body>
<script src="/exam/My97DatePicker/WdatePicker.js"></script>
</html>