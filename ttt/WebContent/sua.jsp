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
		String ms=request.getParameter("ms");
		String sl=request.getParameter("input");
		if(ms!=null)
		{
			giohangbo gh=(giohangbo) session.getAttribute("gh");
			for(giohangbean g:gh.ds)
			{
				if(g.getMasach().equals(ms))
				{
					g.setSoluong(Integer.parseInt(sl));
				}
			}
			session.setAttribute("gh", gh);
			response.sendRedirect("giohang.jsp");
		}
		
	
	%>
</body>
</html>