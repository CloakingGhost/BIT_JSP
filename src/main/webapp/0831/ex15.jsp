<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");%>
<p>문자 인코딩 : <%=response.getCharacterEncoding() %>
<p>컨텐츠 유형 : <%=response.getContentType() %>
<%-- 
<%response.sendError(404,"요청페이지 ㄴㄴ"); %>
<%response.sendError(500,"실행 오류 oo"); %>
 --%>
</body>
</html>