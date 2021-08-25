<%@ page language="java" contentType="text/html; charset=UTF8"
	pageEncoding="UTF8"%>
<%
	// Servletのデータ受け取り
	request.setCharacterEncoding("UTF8");
	String param1 = (String) request.getAttribute("resParam1");
	String param2 = (String) request.getAttribute("resParam2");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
<title>PAGE</title>
</head>
<body>
	<h1>セットしたやつ</h1>
	<%=param1%><br>
	<%=param2%>
</body>
</html>