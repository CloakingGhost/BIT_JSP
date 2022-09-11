<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.ai.beans.Book"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String bookId = request.getParameter("bookId");

String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
String dbid = "scott";
String dbpw = "tiger";
Connection conn = null;
String sql = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, dbid, dbpw);
	/* out.print("연결완료"); */
	sql = "select * from book where bookId = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,bookId);
	rs = pstmt.executeQuery();
	if (rs.next()) {
		Book b = new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
		request.setAttribute("b", b);
	}

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} finally {
	conn.close();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 어차피 하나니까 객체 하나 만들어서 그객체의 정보를 꺼내는것이 편하다 왜 for문을 돌리니 -->
	<c:set var="b" value="${b }" />
	<form action="booklist">
		<table>
			
				<tr>
					<td>책제목</td>
					<td>${b.bookName }</td>
				</tr>
				<tr>
					<td>출판사</td>
					<td>${b.publisher}</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>${b.price}원</td>
				</tr>
				<tr>
					<td><a href="booklist.jsp">목록</a></td>
				</tr>
			
		</table>
	</form>
</body>
</html>