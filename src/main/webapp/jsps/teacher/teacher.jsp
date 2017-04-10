<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>讲师管理</title>
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

	<form action="<c:url value='/exam/searching.do'></c:url>" method="get">
		姓名：<input type="text" name="tname" /> 
		类型：<select name="type.typeid">
			<option selected value="">请选择</option>
			<c:forEach items="${pb.list}" var="p">
			<option value="${p.type.typeId}">${p.type.typeName}</option>
			</c:forEach>
		</select> 入职时间：<input type="text" name="entrytime"
			onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})" />
		状态：<select name="status">
			<option selected value="">请选择</option>
			<option value="0">离职</option>
			<option value="1">未授课</option>
			<option value="2">授课中</option>
			<option value="3">结课</option>
		</select> <input type="submit" value="搜索" />
	</form>
	<br />

	<table>
		<tr>
			<th width="180px">姓名</th>
			<th width="180px">类型</th>
			<th width="180px">入职时间</th>
			<th width="180px">工作经验</th>
			<th width="180px">状态</th>
			<th width="180px">所授班</th>
			<th width="180px">操作</th>
		</tr>
		<c:forEach items="${pb.list}" var="t">
			<tr align="center">
				<td>${t.tname}</td>
				<td value="${t.type.typeId}">
				     ${t.type.typeName}
				</td>
				<td><fmt:formatDate value="${t.entrytime}" pattern="yyyy-MM-dd" />
				</td>

				<td>${t.experience}</td>
				<td><c:choose>
						<c:when test="${t.status eq 0 }">离职</c:when>
						<c:when test="${t.status eq 1 }">未授课</c:when>
						<c:when test="${t.status eq 2 }">授课中</c:when>
						<c:when test="${t.status eq 3 }">结课</c:when>
					</c:choose>
				</td>
			
				<td value="${t.cls.clsid}">
				     ${t.cls.clsname}
				</td>

					<td>
					<select onchange="show_sub(this.options[this.options.selectedIndex].value,${t.tid})">
					<option selected value="请选择">请选择</option>
						<option value="updateTeacher">修改</option>
						<option value="updateStatus1">结课</option>
						<option value="updateStatus2">离职</option>
						</select>
					</td>
				</tr>
			</c:forEach>
		</table>
<br/>
<input id="addteacher" type="button" value="添加" />
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam_project/My97DatePicker/WdatePicker.js"></script> 
<script src="/exam_project/jsps/js/updateteacher.js"></script> 
<script type="text/javascript">
	$("#addteacher").click(function() {
		location = "/exam/toAddTeacher.do"
	});
</script>
<div style="float: left; width: 100%; text-align: center;">
		<hr />
		<br />
		<%@include file="/jsps/pager/pager.jsp"%>
	</div>
</body>
</html>