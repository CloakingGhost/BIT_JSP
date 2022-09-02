<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- HelloBean hello = new HelloBean(); -->
<jsp:useBean class="org.ai.beans.HelloBean" id="hello"/>
<!-- System.out.println(hello.getName()); -->
<jsp:getProperty property="name" name="hello"/>
<jsp:getProperty property="number" name="hello"/><hr>
<!-- hello.setName("conan") -->
<jsp:setProperty property="name" name="hello" value="conan"/>
<jsp:setProperty property="number" name="hello" value="010-1111-1111"/>
<!-- System.out.println("hello.getName()") -->
<jsp:getProperty property="name" name="hello"/>
<jsp:getProperty property="nember" name="hello"/>
<hr>
<hr>
<!-- HelloBean hello = new HelloBean(); -->
<jsp:useBean class="org.ai.beans.HelloBean" id="hello1"/>
<!-- System.out.println(hello.getName()); -->
<jsp:getProperty property="name" name="hello1"/>
<jsp:getProperty property="number" name="hello1"/><hr>
<!-- hello.setName("conan") -->
<jsp:setProperty property="name" name="hello1" param="name"/>
<jsp:setProperty property="number" name="hello1" param="number"/>
<!-- System.out.println(hello.getName()) -->
<jsp:getProperty property="name" name="hello1"/>
<jsp:getProperty property="nember" name="hello1"/>
</body>
</html>