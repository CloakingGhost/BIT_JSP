<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="org.ai.beans.BookBean"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수를 참조변수로바꾸고 -->
	<%
	BookBean book3 = new BookBean();
	%>
	<c:set target="<%=book3%>" property="title" value="코스모스" />
	<%=book3.getTitle()%><br>
	<c:set var="b" value="<%=book3%>" />
	<c:set target="${b }" property="title" value="세이건" />
	${b.title }
</body>
</html>