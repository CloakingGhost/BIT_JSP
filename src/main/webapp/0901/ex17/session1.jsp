<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- setParameter와 반드시 구분 -->
<%session.setAttribute("userId","rose");
session.setAttribute("userPw","1234");
String name,nalue;
int i =0;
Enumeration en =session.getAttributeNames();
while(en.hasMoreElements()){
	i++;
	name=(String)en.nextElement();
	value=(String)session.getAttribute(name);
	out.print("설정된 세션의 속성 이름["+i+"]"):"+name+"<br>");
	out.print("설정된 세션의 속성 값["+i+"]"):"+value+"<br>");
}
/* Object 형태로 들어오기 때문에 형변환이 필요하다 */
out.println((String)session.getAttribute("userId"));%>
</body>
</html>