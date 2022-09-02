<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%response.setHeader("Cache-control","use_cache"); 
response.addHeader("comtenstType","text/html; charset=utf-8");
response.setDateHeader("date",1L);
%>
Cache-control : <%=response.getHeader("Cache-control") %>
contentType: <%=response.getHeader("contentType") %>
date : <%=response.getHeader("date") %>
<p>이 페이지는 3초마다 새로고침되고 있음
<%response.setIntHeader("Refresh",3); %>
<p><%=new java.util.Date() %>
</body>
</html>