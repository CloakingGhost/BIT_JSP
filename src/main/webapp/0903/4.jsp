<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    StringBuffer sb = new StringBuffer();
    
    sb.append("<ul>");
    int sum =0;
    for(int i=9;i>6;i--){
    	for(int j=1;j<10;j++){
    		sb.append(String.format("<li>%d * %d = %d</li>",i,j,i*j));
    	}
    }
    sb.append("</ul>");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=sb.toString() %>
</body>
</html>