<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<style>
h3 {
	background-color: yellow
}
</style>


<body>
	<h3>I'm Header!</h3>
	<%!int count = 0;%>
	<%=++count%>번째 방문입니다.
	<br>
</body>
</html>