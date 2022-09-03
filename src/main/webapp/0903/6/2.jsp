<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String userName = request.getParameter("userName");
String userTel = request.getParameter("userTel");
if (userName.isEmpty() || userTel.isEmpty()) {
	RequestDispatcher rd = request.getRequestDispatcher("1.jsp");
	rd.forward(request, response);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
span {
	color: tomato;
	font-weight: bold;
}
</style>
</head>
<body>
	<div>
		<h2>가입확인</h2>
		<hr>
	</div>
	<div>
		<span><%=userName%></span>님, 회원가입이 완료되었습니다.<br>회원님께서 등록하신 전화번호는<span><%=userTel%></span>입니다.
	</div>
</body>
</html>