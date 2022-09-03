<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,org.ai.beans.BookBean"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<BookBean> bookList = new ArrayList<BookBean>();
	bookList.add(new BookBean("명탐정 홈즈", "코난 도일", "모름"));
	bookList.add(new BookBean("코스모스", "칼 세이건", "모름"));

	String[] bookCode = { "소설", "역사", "인문", "정치", "미술", "종교", "여행", "과학", "만화" };
	%>
	<c:set var="list" value="<%=bookList%>" />
	<c:forEach var="item" items="${list }"><!-- 어레이에서 객체를 꺼내 그 객체가 가지고 있는 속성을 프린트 한다 -->
${item.title }/${item.author }/${item.publisher }<br>
		<hr>
	</c:forEach>

	<c:set var="code" value="<%=bookCode%>" />
	<c:forEach var="item" items="${code }">
		<c:out value="${item }" />
	</c:forEach>

</body>
</html>