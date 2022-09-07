<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <jsp:include page="menu.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include> --%>
	<jsp:include page="menu.jsp"></jsp:include>

	<%!String greeting = "Welcome to Conan's HOME";
	String tagline = "내 이름은 코난, 탐정이죠";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>
	<main role="main">
		<div class="contaniner">
			<div class="row">
				<div class="col-md-4">
					<h3><%=tagline%></h3>
				</div>
				<div class="col-md-4">
					<h3><%=tagline%></h3>
				</div>
			</div>
		</div>
	</main>

<%-- <jsp:include page="menu.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include> --%>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>