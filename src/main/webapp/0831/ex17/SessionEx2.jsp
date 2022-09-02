<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); 
String season = request.getParameter("season");
String fruit = request.getParameter("fruit");
String userId=(String)session.getAttribute("userId");/* Object 타임으로 넣어온다 */

String sessionId= session.getId();
int intervalTime = session.getMaxInactiveInterval();
if(userId != null){%>
	<h2>Session Ex2</h2>
	<b><%=userId %></b>님이 좋아하는 계절과 과일은
	<b><%=season %></b>과
	<b><%=fruit %></b>입니다.
	<p>
		세션ID :
		<%=sessionId %>
		<!-- 웹 검사기에 쿠키스에 들어가면 확인할수 있다 -->
		세션 유지 시간 :
		<%=intervalTime %>초
	<p>
		<%
//session.invalidate()
}else{
out.println("세션의 시간이 경과됨");}%>
<!-- 
session
클라이언트와 서버의 연결을 유지시켜주는 방법

 -->	
</body>
</html>


