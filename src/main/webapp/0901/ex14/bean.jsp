<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import= "java.util.Date"%>

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
	mem.setName("코난");
	%>
	<jsp:useBean class="org.ai.beans.Members" id="mem1"/>
이름 :
<%=mem.getName()%>
, 아이디:
<%=mem.getUerId%>
</body>

</html>