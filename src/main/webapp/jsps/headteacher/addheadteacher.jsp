<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="/exam_project/addHeadTeacher.do">
姓名：<input type="text" name="hname" value="" />
入职时间：<input type="text" name="entrytime" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})"/>
工作经验:<input type="text" name="experience" />
状态：<select name="status">
			<option selected value="">请选择</option>
			<option  value="0">离职</option>
			<option  value="1">在职</option>
	</select>
<input type="submit" value="添加"/> 

</form>
</body>
<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
</html>