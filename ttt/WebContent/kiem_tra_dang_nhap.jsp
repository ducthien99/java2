<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method ="post" action="kiem_tra_dang_nhap.jsp">
       User Name: <input type="text" name="txtun"> <br>
       Pass word: <input type="password" name="txtpass"> <br>
       <input type="submit" name="but1" value ="Dang Nhap">
    </form>
	<%//lay ve gia tri cua txtun va txt pass
    String un=request.getParameter("txtun");
    String pass=request.getParameter("txtpass");
    if(un!=null)//Neu dung thi mo trang docbao.vn
    {
    	session.setAttribute("un", un);
    	response.sendRedirect("t1.jsp");
    }
  %>
	
</body>
</html>