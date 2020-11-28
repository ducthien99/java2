<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="jdk.javadoc.doclet.Reporter"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		giohangbo gh=(giohangbo)session.getAttribute("gh");
		if(gh!=null)
		{
			gh.xoa(request.getParameter("ms"));
			session.setAttribute("gh", gh);
			response.sendRedirect("giohang.jsp");
		}
	%>

</body>
</html>