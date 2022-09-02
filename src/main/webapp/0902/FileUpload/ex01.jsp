<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="uploadProc.jsp" method="post" enctype="multipart/form-data">
<input type = "text" name ="msg"><p>
<input type = "file" name="file"><p>
<input type = "submit" value="파일 업로드">
</form>
</body>
</html>

<!-- 서버스탭에 너무 많은작업이 쌓이면 충돌이 일어날 경우가 간혹 있다
상단메뉴 project에 clean을 이용한다
 -->

