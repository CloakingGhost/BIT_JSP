<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ReDiracte
요청하고 다른페이지로 이동해야한다면 원래 요청정보를 httpServletRequest객체 삭제하고 이동

ReqestDispacther
요청을하고 다른페이지로 이동해야한다면 정보를 그대로 가지고 가서 다른페이지에서 요청을 처리하고 응답하면서 httpServletRequest객체 삭제
요청이 끝날때까지 남아있다
</body>
</html>