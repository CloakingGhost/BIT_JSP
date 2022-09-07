<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 상세정보</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="해당 이미지 없음" src="###" width="80%">
			</div>
			<div class="col-mdS-6">
				<h2>${product.proName }</h2>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger">${product.proId }</span>
				</p>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger">${product.description }</span>
				</p>
				<p>
					<b>제조사 : </b><span class="badge badge-danger">${product.manufacturer }</span>
				</p>
				<p>
					<b>분류 : </b><span class="badge badge-danger">${product.category }</span>
				</p>
				<p>
					<b>재고 수 : </b><span class="badge badge-danger">${product.noOfStock }</span>
				</p>
				<h3>${product.unitPrice }원</h3>
			</div>
		</div>
	</div>
	<p>
		<a href="add.do" class="btn btn-info">상품주문 &raquo;</a> <a
			href="ProductListController" class="btn btn-secondary">상품목록 &raquo;</a>
	</p>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>