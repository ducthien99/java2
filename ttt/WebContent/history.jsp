<%@page import="bean.historybean"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
margin:0;
}
.title{
margin-bottom:30px;
}

.head{
width:100%;
height:100%;
padding:50px;
}

.text{
  display: flex;
  width: 95%;
  height: 50px;
  justify-content: space-around;
  border-bottom: 1px solid black;
   margin-bottom:25px;
  

}
.item{
  display: flex;
  width: 95%;
  min-height: 50px;
  justify-content: space-around;
  border-bottom: 1px solid #eee;
  margin-bottom:25px;
  padding-bottom:10px;
 
}
.anh{
margin-right:10px;
width: 10%;

}
.masach{width:14%;
}
.ten{
width:20%;
}
.tacgia{
	width:20%;
}
.soluong{
width:10%;
}
.ngay{
	width:10%;
}
.name{
	font-size:25px;
}
.tb{
color:blue;
}

.home{
height:30px;
font-size:20px;
color:blue;
margin-top:10px;
margin-left:50px;
}


</style>
</head>
<body>
	<% ArrayList<historybean> list= (ArrayList<historybean>)request.getAttribute("list");
	int n=list.size();
	%>
	<div class="bgr"></div>
	<a  class="home" href="sachcontroller">Trang chủ</a>
	<div class="head">
	
    <div class="title">
      <p class="name">Lịch sử mua hàng</p>
    </div>
    <div class="content">
    <%if(n==0){ %>
    <p class="tb">Bạn chưa mua cuốn sách nào</p>
    <%} else {%>
      <div class="text">
        <p class="anh"></p>
        <p class="masach">Mã sách</p>
        <p class="ten">Tên sách</p>
        <p class="tacgia">Tác giả</p>
        <p class="soluong">số lượng</p>
        <p class="ngay">Ngày mua</p>
      </div>
      <% for(int i=0;i<n;i++){ %>
      <div class="item">
        <img  class="anh" src="<%=list.get(i).getAnh() %>" alt="">
        <p class="masach"><%=list.get(i).getMasach() %></p>
        <p class="ten"><%=list.get(i).getTensach() %></p>
        <p class="tacgia"><%=list.get(i).getTacgia() %></p>
        <p class="soluong"><%=list.get(i).getSoluong() %></p>
        <p class="ngay"><%=list.get(i).getNgaymua() %></p>
      </div>
      <%}} %>
      
    </div>
  </div>
	

</body>
</html>