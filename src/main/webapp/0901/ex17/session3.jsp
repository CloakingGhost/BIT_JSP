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
	session.setAttribute("userId", "rose");
	session.setAttribute("userPw", "1234");
	out.print(session.getAttribute("userId"));
	out.print(session.getAttribute("userPw") + "<br>");
	session.removeAttribute("userPw");
	out.print(session.getAttribute("userId"));
	out.print(session.getAttribute("userPw"));
	%>
	세션에 저장된 모든 세션 속성이름을 삭제하려면 invalidate()메소드를 사용

</body>
</html>