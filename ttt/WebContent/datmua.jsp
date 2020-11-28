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
	String ten=request.getParameter("ts");
	String tg=request.getParameter("tg");
	String gia=request.getParameter("gia");
	String anh=request.getParameter("anh");
	//int sl=1;
	if(ms!=null)
	{
		giohangbo gh;
		if(session.getAttribute("gh")==null)//mua lan dau
		{
			gh=new giohangbo();
			session.setAttribute("gh", gh);
		}
		gh=(giohangbo)session.getAttribute("gh");
		gh.them(ms, ten, tg, Double.parseDouble(gia) ,1,anh);
		session.setAttribute("gh", gh);
		
		response.sendRedirect("giohang.jsp");
	}
	%>

</body>
</html>