<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="right">xin chao <%
			String usename=(String)session.getAttribute("un");
	out.print(usename);
	%> </div>
	<br>
	<%@include file="menu.jsp" %>
	<br>
	 day la noi dung trang chu 
	
</body>
</html>