<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
StringBuffer sb = new StringBuffer();

sb.append("<ul>");
for (int i = 1; i <= 10; i++) {
	sb.append(String.format("<li>%d</li>", i));
}
sb.append("</ul>");
%>

<%
String num = "";
for (int i = 1; i <= 10; i++) {
	num += i + " ";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>JSP 기초</h1>
		<hr>
	</div>
	<div>
	<h2><%=sb.toString() %></h2>
	<h2><%=num %></h2>
	</div>



</body>
</html>