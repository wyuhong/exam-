<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
<head>
    <meta charset="UTF-8">
    <title>ItemManage</title>
  <style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
</head>
<body>
	<span>题目<input type="text">&nbsp&nbsp 类型<input type="text" ></span> &nbsp&nbsp<input type="submit" value="搜索"><br/>
	<table border="1">
	<tr>
	<th>题目</th>
	<th>选项A</th>
	<th>选项B</th>
	<th>选项C</th>
	<th>选项D</th>
	<th>答案</th>
	<th>类型</th>
	<th>操作</th>
	</tr>
	<tr>
	<td>JDK的构成？</td>
	<td>A.java编程语言</td>
	<td>B.工具及工具的API</td>
	<td>C.javaee扩展</td>
	<td>D.java虚拟机</td>
	<td>C</td>
	<td>Java</td>
	<td><select>
	<option selected value="请选择">请选择</option>
	<option selected value="请选择">修改</option>
	<option selected value="请选择">删除</option>
	</select></td>
	</tr>
	</table>
	
</body>
</html>
