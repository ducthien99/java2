<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action ="session1.jsp">
	n:<input type="number" name="txtn"> <br>
	<input type="submit" name="but1" value="tinh">
	</form>
	<%
	//long s=0;
	if(session.getAttribute("ss")==null)
		session.setAttribute("ss", (long)0);
	String n=request.getParameter("txtn");
	if(n!=null)
	{
		long n1=Long.parseLong(n);
		long s= (long)session.getAttribute("ss");
		
		s=s+n1;
		session.setAttribute("ss", s);
		out.print(s);
	}
	%>
</body>
</html>