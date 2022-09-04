<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! 
    //!가 붙어있는 것은 보통 메소드나 전역변수를 선언할때 쓴다
    int a = 0; 
    int sum(int x){
    	int s =0;
    	for(int i=0;i<=x;i++){
    		s+=i;
    	}
    	return s;
    }%>
    <%
    int b = 0;
    a++;
    b++;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><h1>JSP 관찰하기</h1>
<hr>
</div>
<div>
<h2><%=a %></h2>
<h2><%=b %></h2>
<h2><%=sum(100) %></h2>
</div>

</body>
</html>