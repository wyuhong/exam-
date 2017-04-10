<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>class</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</style>
</head>
<body>
<div>
<form action="searchClass.do" name="search" method="get">
	班级名:<input type="text" name="clsname">
	班级类型:<select name="typeId">
	<c:forEach items="${alist}" var="cl">
		<option value="${cl.type.typeId}">${cl.type.typeName}</option>
		</c:forEach>
	</select>
	讲师:<input type="text" name="tname">
	班主任:<input name="hname" type="text">
	开班时间：<input type="text" name="strartdate" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})">
	<select name="status">
		<option value=0>未开始</option>
		<option value=1>学习中</option>
		<option value=2>已结课</option>
	</select>
	<input type="submit" value="搜索">
	<input id="addclass" type="button" value="添加">
	
	</form>
	</div>
	<div>
		<table>
		
			<tr>
				<th>班级名称</th>
				<th>班级类型</th>
				<th>班主任</th>
				<th>讲师</th>
				<th>开班时间</th>
				<th>学习时长</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
			
			<c:forEach items="${clist}" var="cl">
			<tr>
				<td>${cl.clsname }</td>
				<td>${cl.type.typeName }</td>
				<td>${cl.headTeacher.hname}</td>
				<td>${cl.teacher.tname}</td>
				<td><fmt:formatDate value="${cl.strartdate}" pattern="yyyy-MM-dd"/></td>
				<td>${cl.studytime }</td>
				<c:choose>
				<c:when test="${cl.status==0 }"><td>未开始</td></c:when>
				<c:when test="${cl.status==1 }"><td>学习中</td></c:when>
				<c:when test="${cl.status==2 }"><td>已结课</td></c:when>
				</c:choose>
				<td>
					<select name="clsid">
						<option value="请选择"  disabled="disabled" selected="selected">请选择</option>
						<option id="change" value="${cl.clsid}">修改</option>
						<option id="study"  value="${cl.clsid}" >学习</option>
						<option id="over"  value="${cl.clsid}">结课</option>
					</select>
				</td>

			</tr>
			</c:forEach>

			
		</table>
	</div>
	<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript">
	$("#addclass").click(function() {
		location = "/exam_project/toUpdateClass.do"
	});
	$("#change").click(function() {
		location = "/exam_project/toUpdateClass.do"
	});
</script>
</body>

</html>