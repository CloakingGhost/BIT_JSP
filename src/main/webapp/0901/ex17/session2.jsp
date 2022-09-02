<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 임포트 필요한게 있음 -->
	<%
	Enumeration e = session.getAttributeNames();
	while (e.hasMoreElements()) {
		String name = e.nextElement().toString();
		String value = session.getAttribute(name).toString();
	}
	%>
</body>
</html>