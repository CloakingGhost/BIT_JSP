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
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	session.setAttribute("userId", userId);
	/* session.setMaxInactiveInterval(60 * 1); */
	session.setMaxInactiveInterval(10);
	%>
	<h2>Session Ex1</h2>
	<form action="SessionEx2.jsp" method="post">
	1. 가장 좋아하는 계절은?<br>
	<input type="radio" name="season" value = "봄">봄
	<input type="radio" name="season" value = "여름">여름
	<input type="radio" name="season" value = "가을">가을
	<input type="radio" name="season" value = "겨울">겨울
	<p>
	2. 가장 좋아하는 과일은?<br>
	<input type="radio" name="fruit" value = "포도">포도
	<input type="radio" name="fruit" value = "키위">키위
	<input type="radio" name="fruit" value = "용과">용과
	<input type="radio" name="fruit" value = "망고스틴">망고스틴
	<p>
	<input type="submit" name="결과보기">
	</form>
</body>
</html>