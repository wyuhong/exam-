<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
	<meta charset="UTF-8">
	<title>我的考试</title>
	<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
  </head>
  
  <body>
		  <table border="1">
		 <tr>
          <th>考试名称</th>
          <th>开始时间</th>
          <th>结束时间</th>
          <th>分数</th>
           <th>考试状态</th>
             <th></th>
    	 </tr>
    	 <tr>
          <td>75期测试</td>
          <td>2016-11-12 09:00</td>
          <td>2016-11-12 11:00</td>
          <td> </td>
           <td>未开始</td>
           <td> 进入考试</td>
    	 </tr>
    	 <tr>
          <td>75期测试</td>
          <td>2016-11-12 09:00</td>
          <td>2016-11-12 11:00</td>
          <td> 90</td>
           <td>已结束</td>
           <td> </td>
    	 </tr>
    	 
		</table>
   
   
  </body>
</html>
