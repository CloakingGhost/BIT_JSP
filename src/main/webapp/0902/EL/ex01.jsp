<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Literal : ${"Literals" }
	<br> Operation : ${3>5 }
	<br> Implicit Object:${header["host"] }
	<br>
	<!-- header의 정보는 검사기의 network에 들어가면 있다 -->
	<%
	request.setAttribute("name", "conan");
	%>
	요청 URI:${pageContext.request.requestURI }
	<br> request의 name : ${requestScope.name }
	<br> code 패러미터:${param.code }
	
	<br>request. name ${requestScope.name } : conan
	<br>request. name ${param.name } : rose

	<!-- 정보꺼내 출력

백은 set
화면 get -->

<!-- setParameter 와 setAttribute -->
</body>
</html>