<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h1>회원가입</h1>
<hr></div>
<form action="2.jsp" method="post">
<table>
<tr>
<th>이름</th>
<td><input type="text" name="userName" placeholder="이름을 입력하세요"></td>
</tr>
<tr>
<th>전화번호</th>
<td><input type="tel" name="userTel" placeholder="번호를 입력하세요"></td>
</tr>
<tr><td colspan="2">
<button type="submit" >회원가입</button>
<button type="reset" >취소</button>
</td></tr>
</table>
</form>
</body>
</html>