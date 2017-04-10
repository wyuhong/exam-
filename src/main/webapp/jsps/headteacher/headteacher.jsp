<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>班主任管理</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="/exam/searchHeadteacher.do" method="get">
		姓名：<input type="text" name="hname" /> 
		入职时间：<input type="text" name="entrytime"
			onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})" />
		状态：<select name="status">
			<option selected value="">请选择</option>
			<option value="0">离职</option>
			<option value="1">在职</option>
		</select> <input type="submit" value="搜索" />
	</form>
<input id="addheadteacher" type="button" value="添加" /> 
<br/>
		<table >
			<tr>
				<th width="180px">姓名</th>
				<th width="180px">入职时间</th>
				<th width="180px">工作经验</th>
				<th width="180px">状态</th>
				<th width="180px">操作</th>
			</tr>
			<c:forEach items="${pb.list}" var="h">
			<tr>
					<td align="center">${h.hname}</td>
					<td><fmt:formatDate value="${h.entrytime}" pattern="yyyy-MM-dd" /></td>
					
					<td>${h.experience}</td>
					<td><c:choose>
						<c:when test="${h.status eq 0 }">离职</c:when>
						<c:when test="${h.status eq 1 }">在职</c:when>
					</c:choose></td>
					<td>
						<select  onchange="show_sub(this.options[this.options.selectedIndex].value,${h.hid})">
						<option selected value="">请选择</option>
						<option  value="updateHeadTeacher">修改</option>
						<option  value="updateHeadTeacherStatus">离职</option>
						</select>
					</td>
				</tr>
				
				
			</c:forEach>
		</table>
		<br/>

<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
<script src="/exam/jsps/js/updateheadteacher.js"></script> 
<script type="text/javascript">
$("#addheadteacher").click(function(){
	location ="/exam_project/jsps/headteacher/addheadteacher.jsp"
});
</script>

<div style="float: left; width: 100%; text-align: center;">
		<hr />
		<br />
		<%@include file="/jsps/pager/pager.jsp"%>
	</div>
</body>
</html>