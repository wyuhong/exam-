<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>

</head>
<body>
<div>
	<span style="font-size:15px">学生个人信息</span>
</div>
<div>
	<table>
		<tr>
		<td>姓名:${stu.stuName}</td>
		<td>性别:${stu.sex }</td>
		<td>籍贯:${stu.birthPlace}</td>
		<td rowspan="2">靓照</td>
		</tr>
		<tr>
		<td>手机:${stu.phone}</td>
		<td>班级:${stu.classes.clsname }</td>
		<td>类型:${stu.classes.type.typeName}</td>
		</tr>
		<tr>
		<td>毕业院校:${stu.school}</td>
		<td>出生年月:${stu.birthPlace}</td>
		<c:choose>
		<c:when test="${stu.state==0}">
		<td>学习状态:学习中</td>
		</c:when>
		<c:when test="${stu.state==1}">
		<td>学习状态:结课</td>
		</c:when>
		<c:when test="${stu.state==2}">
		<td>学习状态:休学</td>
		</c:when>
		</c:choose>
	
		<td>进班时间:	<fmt:formatDate value="${stu.classTime}" pattern="yyyy-MM-dd"/></td>
		</tr>
	</table>
</div>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
</script>
</html>