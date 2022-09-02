<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="loginProc.jsp" method="post"> <!-- 이 폼에서 전달받아 처리하는 곳 method = "post"로 해야 정보가 노출되지 않는다-->
ID : <Input type="text" name="userId" ><br> 
Password : <Input type="password" name="userPw"><br>
<input type="submit" value="로그인">
</form>
<!-- loginProc.jsp --> <!-- 로그인 프로세스 : 입력값을 받고 어떤 작업을 할지 기록되있다 -->

<form action="loginProc.jsp" method="post"><!-- get도 있음 -->
id: <input type="text" name="userId"><br>
pw: <input type="text" name="userPw"><br>
<input type="submit" value="로그인">
</form>



</body>
</html>