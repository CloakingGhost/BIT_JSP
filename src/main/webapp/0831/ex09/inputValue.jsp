<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>IF-ELSE EXAMPLE</h2>
	<form action="./If-elseExample.jsp" method="post">
		이름 : <input type="text" name="userName"><br><br>
		 좋아하는 색깔 : <select name="color">
			<option >-- 선택하세요 --</option>
			<option value="red">붉은색</option>
			<option value="green">초록색</option>
			<option value="yellow">노란색</option>
		</select><br><br> <input type="submit" value="send">
	</form>
	<form action="If-elseExample.jsp" method="post">
	이름 : <input type="text" name="userName"><br><br>
	좋아하는 색깔 : <select name="color">
	<option>-- 선택하세요 --</option>
	<option value = "red">빨강</option>
	<option value = "green">초록</option>
	<option value = "yellow">노랑</option>
	</select>
	</form>
</body>
</html>