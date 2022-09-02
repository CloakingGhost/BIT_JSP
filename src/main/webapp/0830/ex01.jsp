<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>오늘 날짜는 <%=new java.util.Date() %></p>
<%int a = 10;
int b = 20;
int c = 30;%>
<%= a+b+c %><!-- 프린트문 없이 사용할수 있다 -->
</body>
</html>