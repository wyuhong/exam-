<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="70%">
   		<tr>
   			<td>Id</td>
   			<td>Name</td>
   			<td>Age</td>
   			<td>Address</td>
   			<td>Operation</td>
   		</tr>
   		<c:forEach items="${userlist}" var="u">
   			<tr>
	   			<td>${u.userid}</td>
	   			<td>${u.username}</td>
	   			<td>${u.age}</td>
	   			<td>${u.address}</td>
	   			<td>
	   				<a href="${pageContext.request.contextPath}/userAction/deleteUserById.do?userid=${u.userid}">delete</a>
	   				<a href="${pageContext.request.contextPath}/userAction/updateUserById.do?userid=${u.userid}">update</a>
	   			</td>
   			</tr>
   		</c:forEach>
   		
   </table>
</body>
</html>