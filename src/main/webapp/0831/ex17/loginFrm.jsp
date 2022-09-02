<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="SessionEx1.jsp" method="post"> <!-- 이 폼에서 전달받아 처리하는 곳 method = "post"로 해야 정보가 노출되지 않는다-->
ID : <Input type="text" name="userId" ><br> 
Password : <Input type="password" name="userPw"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>