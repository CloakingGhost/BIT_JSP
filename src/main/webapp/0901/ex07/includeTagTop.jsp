<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name"); /* 첫번쨰 페이지에서 입력받은 name이 들어옴 */
	%>
	include ActionTag의 Top임
	<p>
		<b>내 이름은 <%=name%>. 탐정이죠
		</b>
	<hr>
</body>
</html>