<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	String userName = request.getParameter("userName"); -->
	<%
	request.setCharacterEncoding("UTF-8");
	String color = request.getParameter("color");
	
	if(color.equals("red")){%>
		<body bgcolor="red">
	<%}
	else if(color.equals("green")){%>
		<body bgcolor="green">
	<%}
	else if(color.equals("yellow")){%>
		<body bgcolor="yellow">
	<%}%>
	
	
	<h2>IF-ELSE EXAMPLE</h2>
	<strong><%-- <%=userName%> --%></strong>님이 좋아하는 색깔은
	<strong><%=color%></strong>입니다.
	
	<%
	request.setCharacterEncoding("utf-8");
	String color1 = request.getParameter("color");
	
	if(color1.equals("red")){%>
		<body bgcolor="red">
	<%}
	else if(color1.equals("green")){%>
		<body bgcolor="green">
	<%}
	else if(color1.equals("yellow")){%>
		<body bgcolor="yellow">
	<%}%>
	
</body>
</html>











<%-- switch(color){
	case "RED":%>
		<style>body{background : "red"}</style>
		<%break;
		
	case "GREEN":%>
		<style>body{background : "green"}</style>
		<%break;
		
	case "YELLOW":%>
		<style>body{background : "yellow"}</style>
		<%break;
		
	} --%>