<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>

</head>

<body>
	<div align="center">
	考试名称：<input id="u53" type="text" class="u53">&nbsp
	<select id="u54" class="u54">
	<option selected value="请选择">类型</option>
	<option>..</option>
	</select>
	<input id="u55" type="submit" class="u55" value="搜索">&nbsp&nbsp&nbsp&nbsp
	<input id="u56" type="submit" class="u56"  value="创建">
	</div>
	<div align="center">
	<table border="1" >
	<tr>
	<th>名称</th>
	<th>类型</th>
	<th>试题数量</th>
	<th>创建时间</th>
	<th>操作</th>
	</tr>
	<tr>
	<td>100期Java测试</td>
	<td>Java</td>
	<td>10</td>
	<td>2016-11-12 09:00</td>
	<td>
	<select>
	<option selected value="请选择">请选择</option>
	<option>..</option>
	</select>
	</td>
	</tr>
	</table>
	</div>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

<script type="text/javascript">
$("#u56").click(function(){
	location ="/exam_project/jsps/examination/add_paper.jsp"
});
</script>
</html>