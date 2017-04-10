<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.sessionuser.type==0}">
<a href="<c:url value='/listTeachers.do'/>" target="body">讲师管理</a><br/>
<a href="<c:url value='/listHeadTeachers.do'/>"target="body">班主任管理</a><br/>
<a href="<c:url value='/listClass.do'/>"target="body">班级管理</a><br/>
<a href="<c:url value='/jsps/student/stumanage.jsp'/>"target="body">学生管理</a><br/>
<a href="<c:url value='/jsps/itemmanage.jsp'/>"target="body">试题管理</a><br/>
<a href="<c:url value='/jsps/examination/examination_paper.jsp'/>"target="body">试卷管理</a><br/>
<a href="<c:url value='/listExam.do'/>"target="body">考试管理</a><br/>
</c:when>
<c:when test="${sessionScope.sessionuser.type==1}">
<a href="<c:url value='/find.do'/>"target="body">个人中心</a><br/>
<a href="<c:url value='/jsps/examination/historyexam.jsp'/>"target="body">历史考试记录</a><br/>
<a href="<c:url value='/jsps/examination/exam.jsp'/>"target="body">我的考试</a><br/>
</c:when>
</c:choose>
</body>
</html>