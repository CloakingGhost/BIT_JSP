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
	request.setCharacterEncoding("UTF-8"); /* 한글입력시 정상적으로 출력이 되지 않기때문에 입력해야함  위치도 중요하다 꺼내기 전 위치에 입력*/
	String userId = request.getParameter("userId");/* 유저아이디의 값을 요구한다 */
	String userPw = request.getParameter("userPw");
	/* 이때 DB에 있는 내용을먼저 확인하고 맞을때 맞지 않을때를 확인하고 로그인을 진행한다  <-나중에 할 일 */
	/* 사용할수 있는 데이터 인지 아닌지를 검수하는 작업이 필요하고 쓸대없는 데이터면 다시 돌려보내 입력하게 만들어야한다 */
	if (userId.isEmpty() || userPw.isEmpty()) { /* 입력창 중 하나라고 빈칸일 경우 로그인 페이지로 다시 되돌려 보낼수 있다 */
		RequestDispatcher rd = request.getRequestDispatcher("loginFrm.jsp");
		rd.forward(request, response);
	}
	%>
	아이디 / 비밀번호 :
	<%=userId%>
	/
	<%=userPw%>

	<%
	request.setCharacterEncoding("utf-8");
	String userId1 = request.getParameter("userId"); /* 아이디를 요청한다 */
	String userPw1 = request.getParameter("userPw"); /* 비밀번호를 요청한다 */
	if(userId1.isEmpty()||userPw1.isEmpty()){
		RequestDispatcher rd = request.getRequestDispatcher("loginFrm.jsp");
		
	}
	%>
	
	<%request.setCharacterEncoding("utf-9"); 
	String userId2 = request.getParameter("userId");
	String userPw2 = request.getParameter("userPw");
	
	if(userId2.isEmpty()||userPw.isEmpty()){
		RequestDispatcher rd = request.getRequestDispatcher("loningFrm.jsp");
		rd.forward(request, response);
		
	}
	%>
</body>
</html>