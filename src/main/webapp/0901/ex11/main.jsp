<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<table border="1">
		<tr>
			<td colspan='2'><jsp:include page="include/top.jsp" /></td>
		</tr>
		<tr>
			<td><jsp:include page="include/menu.jsp" /></td>
			<td><jsp:include><jsp:param name="target" value="champ" ></jsp:include></td>
		</tr>
		<tr>
			<td colspan='2'><jsp:include page="include/bottom.jsp" /></td>
		</tr>
	</table>
</body>
</html>