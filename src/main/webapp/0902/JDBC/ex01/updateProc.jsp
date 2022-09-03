<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,org.ai.beans.Members,java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utd-8");

	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String phoneNo = request.getParameter("phoneNo");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String sql = "";
	String dbid = "scott";
	String dbpw = "tiger";
	String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<Members> members = new ArrayList<>();

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, dbid, dbpw);

	sql = "update Members set userPw = ?,userName = ?,phoneNo=?,address=?,email=? where like " + "aaa" + '\"';
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userPw);
	pstmt.setString(2, userName);
	pstmt.setString(3, phoneNo);
	pstmt.setString(4, address);
	pstmt.setString(5, email);
	pstmt.executeUpdate();
	sql = "select * from Members where userId ='aaa'";
	;
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while (rs.next()) {
		members.add(new Members(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
		rs.getString(6)));
	}
	%>
	<c:set var="members" value="${members }" />
	<form action="updateProc.jsp" method="post">
		<table border="1">
			<c:forEach var="item" items="${members }">
				<tr>
					<td>아이디</td>
					<td>${item.userId }</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>${item.userPw }</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${item.userName }</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>${item.phoneNo }</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${item.address }</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${item.email }</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="수정하기" />${item.regDate }</td>
				</tr>

			</c:forEach>
		</table>
	</form>
</body>
</html>