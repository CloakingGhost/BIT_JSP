<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.oreilly.servlet.*,com.oreilly.servlet.multipart.*,java.util.*,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- E:\java_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\firstJSP\upload : 사실 이곳에 저장된다  -->
	<%
	String path = application.getRealPath("/upload");//파일 저장위치
	int size = 1024 * 1024 * 10; //10M
	try {
		MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String name = (String) files.nextElement();
		String file = multi.getFilesystemName(name);
		long fileSize = multi.getFile("file").length();
		String orgFile = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		/*request.getParameter(msg)사용불가 */
		out.print("사용자 메세지 : " + multi.getParameter("msg") + "<br>");
		out.print("파일명 : " + file + "<br>");
		out.print("파일크기 : " + fileSize + "<br>");
		out.print("원본파일명 : " + orgFile + "<br>");
		out.print("컨텐츠 유형 : " + type + "<br>");
	} catch (Exception e) {
		out.print("업로드 오류 발생");
	}
	%>
</body>
</html>