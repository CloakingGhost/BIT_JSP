<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수에 이름을 저장하여(폼 입력X) 이름과 함께 요청정보인 혈액형을 해당 페이지에 forward방식으로 전달하도록 작성
출력 ㅕㄹ과를 위한 b.jsp 작성
한글 정상적으로 출력되도록 설정 -->
	<h3>Forward Tag Example</h3>
	<form method="post" action="forwardRequset">
		혈액형별 성격 테스트
		<p>당신의 혈액형은?</p>
		<input type="radio" name="bloodType" value="a">A형<br /> <input
			type="radio" name="bloodType" value="b">B형<br /> <input
			type="radio" name="bloodType" value="o">O형<br /> <input
			type="radio" name="bloodType" value="ab">AB형<br /> <input
			type="submit" value="보내기">
	</form>
</body>
</html>