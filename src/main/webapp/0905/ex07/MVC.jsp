<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
애플리케이션의 데이터와 비즈니스 로직을 담는 객체


모델1
뷰 사용자에게 모델의 정보를 보여주는 역할
컨트롤러 모델과 부사이에 어떤동작을 해야하는지
요청 컨트롤러(jsp) 모델(자바빈즈) db 모델 뷰 응답
유지보수가 어렵다
구조가 단순하여 구현이 용이

큰트롤러 입력과제어 if,for 등
모델 출력데이터 result 등
뷰 출력 print 등

모델1
요청 컨트롤러(서블릿) 모델 (자바빈즈) db 모델 컨트롤러 뷰 응답

로직을 나누기때문에 모델 1보다 간결
분업 용이
기능에따라 분리되어 유지보수 용이
확장용이

however
습득이 어렵고 작업량 많음
초기작업이 많음

서블릿 백
jsp 화면


</body>
</html>