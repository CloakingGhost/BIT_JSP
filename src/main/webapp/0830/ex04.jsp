<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int count = 0;%>
	1이 증가된 후 카운트 값은
	<%=++count%>
	<br>
	<%!int sum(int a, int b) {/* 전역변수로 메소드도 만들수 있다 */
	return a + b;
}%>
	<%
	out.print("2 + 3 = " + sum(2, 3));
	%>
	<%=sum(7, 8)%>
</body>
</html>