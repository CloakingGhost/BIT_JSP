<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.ai.beans.Book"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
	String dbid = "scott";
	String dbpw = "tiger";
	Connection conn = null;
	String sql = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<Book> bList = new ArrayList<>();

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbid, dbpw);
		/* out.print("연결완료"); */
		sql = "select * from book";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			bList.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
		}
		request.setAttribute("bList", bList);

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
	<c:set var="bList" value="<%=bList%>" />
	<form action="">
	<table border="1">
		<tr>
			<th>BOOK NAME</th>
			<th>PUBLISHER</th>
			<th>PRICE</th>
		</tr>

		<c:forEach var="item" items="${bList }">
			<tr>
				<td><a href="bookview.jsp?bookId=${item.bookId}">${item.bookName}</a></td>
				<td>${item.publisher}</td>
				<td style="width: 100px">${item.price}원</td>
			</tr>
		</c:forEach>
	</table>
	</form>



	<%-- <table border="1">
		<tr>
			<th>BOOKID</th>
			<th>BOOK NAME</th>
			<th>PUBLISHER</th>
			<th>PRICE</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td style="text-align:center"><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td style="width:100px"><%=rs.getString(4)%>원</td>
		</tr>
		<!-- 	out.print(rs.getString(1)+"&nbsp;"+rs.getString(2)+"&nbsp;"+rs.getString(3)+"&nbsp;"+rs.getString(4)+"<br>"); -->
		<%
		}
		%>
	</table>
	 --%>


</body>
</html>