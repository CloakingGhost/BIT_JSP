<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 세션 아이디는 쿠키에 넣어서 보냄 -->
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		out.print("현재 설정된 쿠키의 수:" + cookies.length);
		out.print("<br/>====================<br/>");
		for (int i = 0; i < cookies.length; i++) {
			out.print("쿠키 속성 이름 [" + i + "]:" + cookies[i].getName() + "<br>");
			out.print("쿠키 속성 값 [" + i + "]:" + cookies[i].getValue() + "<br>");
			out.print("--------------");
		}
	}
	%>
</body>
</html>