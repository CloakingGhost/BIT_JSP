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
	<!-- core 설정하고 출력 -->
	<c:set var="name" value="amy" />
	<c:out value="${name }" />
	<br>
	<!-- core 지우고 출력 -->
	<c:remove var="name" />
	<c:out value="${name }" />
	<br>
	<%
	BookBean book1 = new BookBean("명탐정 홈즈", "코난 도일", "모름");
	request.setAttribute("bookOne", book1);
	%>
	<c:set var="title" value="${bookOne.title }" />
	<c:out value="${title }" />
	<c:set var="author" value="<%=book1.getAuthor()%>" />
	<c:out value="${author }" />
	<hr>
	<c:set var="name">Wilde</c:set>
	<c:out value="${name }" />
	<br>
	<%
	BookBean book2 = new BookBean("도리안", "그레이의 초상", "오스카 와일드");
	request.setAttribute("bookTwo", book2);
	%>
	<c:set var="title" value="${bookTwo.title }" />
	<c:out value="${title }" />
	<c:set var="author" value="<%=book2.getAuthor()%>" />
	<c:set var="publisher" value="${bookTwo.publisher }" />
	<c:out value="${publisher }" />
	<br>
	<c:out value="${author }" />

</body>
</html>