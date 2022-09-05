<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.ai.beans.Members,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String userName = request.getParameter("userName");
	String phoneNo = request.getParameter("phoneNo");
	String address = request.getParameter("address");
	String email = request.getParameter("email");

	String url = "jdbc:mysql://localhost:3306/scottDB?useSSL=false&allowPublicKeyRetrieval=true";
	String dbid = "scott";
	String dbpw = "tiger";
	Connection conn = null;
	String sql = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<Members> members = new ArrayList<>();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbid, dbpw);
		out.print("연결 ㅇㅇ");
		Members mem = new Members(userId, userPw, userName, phoneNo, address, email);

		sql = "insert into Members(userId, userPw, userName, phoneNo, address, email) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mem.getUserId());
		pstmt.setString(2, mem.getUserPw());
		pstmt.setString(3, mem.getUserName());
		pstmt.setString(4, mem.getPhoneNo());
		pstmt.setString(5, mem.getAddress());
		pstmt.setString(6, mem.getEmail());
		pstmt.executeUpdate();

		sql = "select * from Members";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			members.add(new Members(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
			rs.getString(6), rs.getString(7)));
		}
		request.setAttribute("members", members);
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		rs.close();
	
		
	}
	%>
	<c:set var="members" value="${members}" />
	<table border="1">
		<c:forEach var="item" items="${members}">

			<tr>
				<td>아이디</td>
				<td>${item.userId}</td>
				<td>비밀번호</td>
				<td>${item.userPw}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${item.userName}</td>
				<td>전화번호</td>
				<td>${item.phoneNo}</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${item.address}</td>
				<td>이메일</td>
				<td>${item.email}</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td colspan="3">${item.regDate}</td>
			</tr>
			
		</c:forEach>
		
	</table>

</body>
</html>