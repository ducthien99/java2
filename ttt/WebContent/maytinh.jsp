<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	
	<div class="maytinh">
	<form action="test" method="post">
   a= <input type="text" name="txta" value="<%=request.getAttribute("a") %>" > <br>
   b= <input type="text" name="txtb" value="<%=request.getAttribute("b")%>"> <br>
   kq= <input type="text" name="txtkq" value="<%=request.getAttribute("kq")%>"> <br>
   <input type="submit" name="txtcong" value="+">
   <input type="submit" name="txttru" value="-">
    <input type="submit" name="txtnhan" value="*">
    <input type="submit" name="txtchia" value="/">
  </form>
  </div>

</body>
</html>