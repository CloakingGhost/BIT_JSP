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
	if (request.getMethod().equals("POST")) {

		request.setCharacterEncoding("UTF-8"); /* 한글입력시 정상적으로 출력이 되지 않기때문에 입력해야함  위치도 중요하다 꺼내지 전 위치에 입력*/
		/* 이때 DB에 있는 내용을먼저 확인하고 맞을때 맞지 않을때를 확인하고 로그인을 진행한다 */
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		//유효성처리
		if (userId.isEmpty() || userPw.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("loginFrm.jsp");
			rd.forward(request, response);
		}
		//로그인 처리
		/* 사용할수 있는 데이터 인지 아닌지를 검수하는 작업이 필요하고 쓸대없는 데이터면 다시 돌려보내 입력하게 만들어야한다 */
		if (session.isNew() || session.getAttribute("userId") == null) {
			String msg = (String)request.getAttribute("error");
			session.setAttribute("userId", userId);//"userId"란 이름으로 userId등록
			out.print("로그인 완료되었음");
		} else {
			out.print("이미 로그인 상태임");
		}
	%>
	아이디:<%=userId%>
	/ 비밀번호:<%=userPw%>
	<%
	} else if (request.getMethod().equals("GET")) {
	if (session != null || session.getAttribute("userId") != null) {
		session.invalidate();
		out.print("로그아웃 작업이 완료됨");
	}
	}
	%>



</body>
</html>