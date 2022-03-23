<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<% 
	String path = request.getRealPath("fileFolder");

	int size = 1024 * 1024 * 10; //10메가 용량 제한
	
	String file = "";
	String oriFile = "";
	
	try {
	MultipartRequest multi = new MultipartRequest(request, path, size,"UTF-8", new DefaultFileRenamePolicy());

	Enumeration files = multi.getFileNames();
	String str = (String)files.nextElement();
	
	file = multi.getFilesystemName(str);
	oriFile = multi.getOriginalFileName(str);
	}
	catch (Exception e){
		e.printStackTrace();
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일업로드 확인</title>
</head>
<body>

</body>
</html>