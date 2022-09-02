<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
이름 : <%=request.getParameter("name") %>
번호 : <%=request.getParameter("number") %>
<hr>
<jsp:useBean class="org.ai.beans.HelloBean" id="hello"/>
<jsp:setProperty property="name" name="hello" param="name"/>
<jsp:setProperty property="number" name="hello" param="number"/>
이름 : <jsp:getProperty property="name" name="hello"/>
번호 : <jsp:getProperty property="number" name="hello"/>
<hr>

<jsp:useBean class="org.ai.beans.HelloBean" id="hello1"/>
<jsp:setProperty property="*" name="hello1"/>

이름 : <jsp:getProperty property="name" name="hello1"/>
번호 : <jsp:getProperty property="number" name="hello1"/>
</body>
</html>