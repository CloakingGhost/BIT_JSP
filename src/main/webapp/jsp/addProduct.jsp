<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form name="newProduct" action="add.do"
			enctype="multipart/form-data" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품코드</label>
				<div class="col-sm-3">
					<input type="text" id="proId" name="proId" class="form-control">
				</div>
				<label class="col-sm-2">상품이름</label>
				<div class="col-sm-3">
					<input type="text" id="proName" name="proName" class="form-control">
				</div>
				<label class="col-sm-2">상품가격</label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice"
						class="form-control">
				</div>
				<label class="col-sm-2">설명</label>
				<div class="col-sm-3">
					<div></div>
					<input type="text" id="description" name="description"
						class="form-control">
				</div>
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" id="manufacturer" name="manufacturer"
						class="form-control">
				</div>
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category"
						class="form-control">
				</div>
				<label class="col-sm-2">재고량</label>
				<div class="col-sm-3">
					<input type="text" id="noOfStock" name="noOfStock"
						class="form-control">
				</div>
				<div class="col-sm-3">
					<input type="file" id="uploadFile" name="uploadFile">
				</div>
			</div>



			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="ProductListController"><input type="submit"
						class="btn btn-primary" value="등록"></a>
				</div>
			</div>

		</form>
	</div>
</body>
</html>