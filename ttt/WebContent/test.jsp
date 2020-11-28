<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@page import= "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div> <h1> BẢNG CỬU CHƯƠNG</h1></div>
    <table border ="1">
       <%for(int i=1;i<=10;i++){ %>
           <tr>
	           <td>1x<%=i %>=<%=1*i %></td>
	           <td>2x<%=i %>=<%=2*i %></td>
	           <td>3x<%=i %>=<%=3*i %></td>
	           <td>4x<%=i %>=<%=4*i %></td>
	           <td>5x<%=i %>=<%=5*i %></td>
	           <td>6x<%=i %>=<%=6*i %></td>
	           <td>7x<%=i %>=<%=7*i %></td>
	           <td>8x<%=i %>=<%=8*i %></td>
	           <td>9x<%=i %>=<%=9*i %></td>
	           <td>10x<%=i %>=<%=10*i %></td>
           </tr>
          <%} %>
    </table>
   <%Calendar n= Calendar.getInstance();
     int ngay=n.get(Calendar.DATE);
     int thang=n.get(Calendar.MONTH)+1;//0..11
     int nam=n.get(Calendar.YEAR);
   %>

   Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %> <br>
   
   <select name="ngay">
    <%for(int i=1;i<=31;i++){ %>
        <option <%if(i==ngay){ %> selected="selected" <%}%>>
           <%=i %>
        </option>
    <%} %>
 </select>
   
    <select name="thang">
    <%for(int i=1;i<=12;i++){ %>
        <option <%if(i==thang){ %> selected="selected" <%}%>>
           <%=i %>
        </option>
    <%} %>
     </select>
   <select name="nam">
    <%for(int i=nam-10 ;i<=nam;i++){ %>
        <option <%if(i==nam){ %> selected="selected" <%}%>><%=i %></option>
    <%} %>
 </select> <br>
 
</body>
</html>