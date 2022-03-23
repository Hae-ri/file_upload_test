<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일 업로드</title>
</head>
<body>
	<h2>파일 업로드</h2>
	<form action="fileFormOk.jsp" method="post" enctype="multipart/form_data">
	파일선택 :<input type="file" name="file"><br><br>
	<input type="submit" value="업로드">
	</form>
</body>
</html>