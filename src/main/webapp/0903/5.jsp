<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//case1
StringBuffer br = new StringBuffer();
int count1 = 0;

for (int i = 1; i <= 100; i++) {
	if (i % 4 == 0) {
		br.append(String.format("%d", i));
		count1++;
	}
	if (count1 % 5 == 0) {
		br.append("<br>");
	}
}
%>
<%
//case2
String a = "";
int count2 = 0;
for (int i = 1; i < 101; i++) {
	if (i % 4 == 0) {
		a += i; 
		a += " "; 
		count2++;
	}
	if (count2 % 5 == 0) {
		a += "<br>";
		count2 = 0;
	} else {
		a += "";
	}
	br.append(String.format("<br>"));

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>JSP 기초</h1>
		<hr>
	</div>
	<%=br.toString()%>
</body>
</html>