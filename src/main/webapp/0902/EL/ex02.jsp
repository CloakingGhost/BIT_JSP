<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 내장객체 : param -->
	<!-- 실행 시키고 주소창 뒤에 ?id=conan&pw=1234 -->
	<h3>EL 표기법</h3>
	${param.id }/${param.pw }
	<br> ${param["id"] }/${param["pw"] }
	<br>

	<h3>JSP</h3>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%><%=id  %>/<%=pw  %>
</body>
</html>