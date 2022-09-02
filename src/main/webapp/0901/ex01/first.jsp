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
<jsp:forward page="second.jsp"/> <!-- 위에 내용은 버퍼로 이동하기때문에 이걸쓰면 버퍼가 날아감(비움) 그리고 두번째 페이지로 이동했지만 내용만 가져왔을뿐 실제로는 첫번째 페이지에 위치한다 --> 
<p>============fristPage========</p>
</body>
</html>