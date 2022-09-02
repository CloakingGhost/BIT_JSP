<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- /firstJSP/src/main/java/org/ai/beans/BookBean.java 에 있는 BookBean클래스 사용할것임-->
	<form action="ex04.jsp" method="post">
		<!-- 클래스 필드명과 인풋에 네임이 같게 하는것이 일을 줄일수 있다 -->
		책제목 : <input type="text" name="title"><br> 책저자 : <input
			type="text" name="author"><br> 출판사 : <input type="text"
			name="publisher"><br> <input type="submit" value="등록">
	</form>
</body>
</html>