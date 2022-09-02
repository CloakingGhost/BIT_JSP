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
	int count = 0;
	%>
	1이 증가된 후 카운트 값은
	<%
	out.print(++count);
	%>
	<%
	int a = 2;
	int b = 3;
	int sum = a + b;
	out.print("2+3=" + sum);
	%>

	<%
	for (int i = 0; i <= 10; i++) {
		if (i % 2 == 0) {
			out.print(i + "<br>");
		}
	}
	%>
	<h3>구구단 출력</h3>
	<%
	for (int i = 2; i < 10; i++) {
		for (int j = 1; j < 10; j++) {
			out.print(i + "*" + j + "=" + (i * j));
	%><br><!--html과 java를 섞어 사용할 경우  -->
	<%
	}
	}
	%>
	<br>
	<!-- 대안 -->
</body>
</html>