<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8"); /* 한글입력시 정상적으로 출력이 되지 않기때문에 입력해야함  위치도 중요하다 꺼내지 전 위치에 입력*/
	/* 이때 DB에 있는 내용을먼저 확인하고 맞을때 맞지 않을때를 확인하고 로그인을 진행한다 */
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	/* 사용할수 있는 데이터 인지 아닌지를 검수하는 작업이 필요하고 쓸대없는 데이터면 다시 돌려보내 입력하게 만들어야한다 */
	if (userId.equals("admin") && userPw.equals("admin")) {
		/* RequestDispatcher rd = request.getRequestDispatcher("loginSuccess.jsp");
		rd.forward(request, response); */ /* 이걸 쓰면 그 페이지만 가져오고 이동은 하지 않는다 주소창 확인 */
		
		 response.sendRedirect("loginSuccess.jsp"); 
	} else {
		response.sendRedirect("loginFail.jsp");
	}
	%>

	<%-- <%
	request.setCharacterEncoding("utf-8");
	String userId1 = request.getParameter("userId");
	if (userId1.equals("admin")) {
		response.sendRedirect("loginSuccess.jsp");
	} else {
		response.sendRedirect("loginFail.jsp");
	}
	%> --%>
</body>
</html>