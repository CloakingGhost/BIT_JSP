<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1에서 10까지의 합은?
<%int sum = 0;
for (int i=1; i<=10;i++) {
	sum+=i;
	if(i<10)
	out.print(i + "+");
	else {
		out.print(i + "=");
	}
}
out.println(sum);
 %>
</body>
</html>