<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import= "java.util.Date,org.ai.beans.Members"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Members mem = new Members();
	mem.setUserId("conan");
	mem.setUserName("코난");
	%>
	<jsp:useBean class="org.ai.beans.Members" id="mem1"/>
이름 :
<%=mem.getUserName()%>
, 아이디:
<%=mem.getUserId()%>
</body>

</html>