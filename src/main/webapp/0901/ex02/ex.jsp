<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 이페이지 주소창에 "?p=hello.jsp"라고 뒤에 붙히면 만들어 놓은 페이지로 이동함 -->
<%String p=request.getParameter("p"); %>
<jsp:forward page="<%=p %>"/>
</body>
</html>