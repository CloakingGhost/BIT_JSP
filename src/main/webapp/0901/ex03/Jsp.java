package easyCoding.exam;

public class Jsp {
/*
 JAVA EE
 윈도우 프레퍼런스 제너럴 웤스페이스 UTF-8
 메뉴바 file - new - Dynamin web project
 생성 후 - src - main - webapp 우클릭-new- jsp 생성- 파일우클릭 run as - run on server - 톰캣 9.0 설치 위치 bin폴더 전까지의 폴더로 지정
 
 윈도우 - 웹 브라우저 - 크롬
 
 JDK11로 설정 완료 후
 파일에 빨간불 계속 들어올 떄
 컨트롤 A,  컨트롤 X,  컨트롤 S, 컨트롤 V
 
 웹페이지기 때문에 줄바꿈은 <br>태그 사용
 
 <%! int count %> !가 붙은면 전역변수
 
 <%@ %> 페이지의 속성 html의 head와 비슷함
 import 시 직접 입력해야한다 <%@ import="java.util.*"%>
 
 내장 객체
 requset 요청정보
 response 응답 stateless / connectionless 프로토콜은 로그인에 대한 요청이 오면 확인만 하고 정보를 잃어버린다
 session / 프로토콜에 확인된 정보를 저장할수 있도록 한다
 
 setAttribute(a,b), : name(내가정함) 과 value로 저장
 getAttribute(a) : 저장값 찾아오기
 getAttributeNames(a) : 모든 name 가져옴 이때 java.util.Enumeration을 import해야함
 remove~(): 지우기
 
 ------------
 requset 0831.ex08폴더 확인
 //html에서 form 양식에서 입력된 값들이 전달되고 그것을 확인하는 과정
 getParameter(a) : name을 넣으면 value를 줌
 getParameterValuse(a) : checkbox 같은 여러개의 결과값
 
 ------
 http header
 요즘은 웹에 검사기로 확인하면된다
 통신점검용
 -------
 session
 http 프로토콜 비연결형
 접속자 별로 생성됨
 -----
 application
 은행 연결시간
 
 
 
*/
