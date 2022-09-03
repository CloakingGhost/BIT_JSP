<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int a = 10, b = 5, c;
c = a + b;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h1>JSP 관찰하기</h1>
<hr>
</div>
<div>
<h2>합<%=a %>+<%=b %>=<%=c %></h2>
</div>

<%
out.print("합:"+a+"+"+b+"="+c+"<br>");
String str = String.format("합:%d + %d = %d",a,b,c);
out.print(str);
%>
</body>
</html>