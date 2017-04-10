<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
	border-left: 1px solid #888;
	border-top: 1px solid #888;
	background: #efefef;
}

th, td {
	border-right: 1px solid #888;
	border-bottom: 1px solid #888;
	padding: 5px 15px;
}

th {
	font-weight: bold;
	background: #ccc;
}
</style>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
	<form action="/exam/searchFuzzyStudents.do">
		<select name="classes.clsid">
		   <option value="">班级</option>
			<c:forEach items="${clist}" var="c">
			<option value="${c.clsid}">${c.clsname}</option>
			</c:forEach>
		</select>
		 姓名：<input type="text" name="stuName"> 
		毕业院校：<input type="text" name="school"> 
		出生年月：<input type="text" name="birthDay"
		onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})">
		<select>
			<option name="status">状态</option>
			<option selected value="">请选择</option>
			<option value="0">学习中</option>
			<option value="1">结课</option>
			<option value="2">休学</option>
		</select> <input type="submit" value="搜索"> 
		</form>
		<input id="u56"
			type="submit" value="添加">
	
	<div>
		<table>
			<tr>
				<th>姓名</th>
				<th>毕业院校</th>
				<th>出生年月</th>
				<th>手机</th>
				<th>进班时间</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${slist}" var="s">
			<tr>
				<td>${s.stuName}</td>
				<td>${s.school}</td>
				<td>
				<fmt:formatDate value="${s.birthDay}" pattern="yyyy-MM-dd" />
				</td>
				<td>${s.phone}</td>
				<td>
				<fmt:formatDate value="${s.classTime}" pattern="yyyy-MM-dd" />
				</td>
				<td>
				<c:choose>
						<c:when test="${s.status eq 0 }">学习中</c:when>
						<c:when test="${s.status eq 1 }">结课</c:when>
						<c:when test="${s.status eq 2 }">休学</c:when>
				</c:choose>
				</td>
				<td><select>
						<option selected value="">请选择</option>
						<option value="">修改</option>
						<option value="">结课</option>
						<option value="">重置密码</option>
				</select></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
$("#u56").click(function(){
	location ="/exam/toAddStudents.do"
});
</script>
</html>