<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table width="1000">
    <tr>
       <td>
          <a href="test.jsp?ts=db"> Doc bao</a> <hr>
           <a href="test.jsp?ts=bds"> bat dong san</a> <hr>
           <a href="test.jsp?ts=vc"> Vui cuoi</a> <hr>
       </td>
       <td>  
 <%
           String ts= request.getParameter("ts");
          if(ts==null)
        	  out.print("Chay lan dau");
          else{
        	  if(ts.equals("db"))
        		  out.print("ban dang xem báo");
        	  else
        		  if(ts.equals("bds"))
            		  out.print("ban dang xem tin bat dong san");
            	  else 
            		  out.print("Dang doc chuyen cuoi");
          }
        	  
          %>
       </td>
    </tr>
    </table>
</body>
</html>