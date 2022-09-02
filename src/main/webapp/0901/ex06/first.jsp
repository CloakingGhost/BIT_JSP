<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>first page임</h3>
<include page="second.jsp" flush="false"/> <!-- 첫줄 출력 다른페이지 내용 출력 하고 다시돌아와서 include가 있는 페이지 나머지 출력 --> 
<p>============fristPage========</p>
</body>
</html>