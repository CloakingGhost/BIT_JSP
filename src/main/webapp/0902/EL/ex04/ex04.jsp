<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- JSP 사용 -->
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="book" class ="org.ai.beans.BookBean"/><!-- book객체는 속성이 null -->
<jsp:setProperty property="*" name="book"/>/* book객체는 입력받은 값을 BookBean클래스 속성에 저장 */
<%
request.setAttribute("book",book); /* HttpServletRequest 로 "book"객체 만들어 저장 */
%>
<jsp:forward page="bookOutput.jsp"/>
</body>
</html>