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
</body>
</html>