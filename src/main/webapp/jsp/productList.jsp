<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<c:forEach var="item" items="${pl}">
				<div class="col-md-4">
					<h3>${item.proName}</h3>
					<P>${${imgUrl}/${item.fileName}}</P>
					<p>${item.description}</p>
					<p>${item.unitPrice}원</p>
					<a href="detail.do?proId=${item.proId}" class="btn btn-secondary"
						role="button">상세정보 &raquo;</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>