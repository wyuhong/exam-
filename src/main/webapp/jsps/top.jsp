<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<%-- 会员：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;&nbsp; --%>
登录人员：${sessionScope.sessionuser.realName} &nbsp;&nbsp;|&nbsp;&nbsp;
<a href="<c:url value=''/>" target="_parent">退出</a>


</body>
</html>