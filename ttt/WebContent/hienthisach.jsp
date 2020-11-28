<%@page import="bo.dangnhapbo"%>
<%@page import="bean.dangnhapbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean" %>
<%@page import="bo.sachbo" %>
<%@page import="bo.loaisachbo" %>
<%@page import="bean.loaisachbean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
margin:0;
}
.top
{
	width: 100%;
	height: 0px;
	background-color: white;
}
.seach
{
	width: 500px;
	margin: auto;
	height: 30px;
}
.seach input[type=text]
{
	width: 70%;
	height: 24px;
	margin-top: 10px;
	font-size: 16px;
	
	font-family: inherit;
	padding-left:10px;
}

.seach input[type=submit]
{
	width: 14%;
	height: 27px;
	cursor: pointer;
	border:none;
	border-radius:0 4px 4px 0;
}
.wecome
{ 
	float: right;
    position: fixed;
    right: 0px;
    top: 55px;
    color: white;
    font-size: 20px;
    font-weight: 600;
    width: 300px;
    height: 40px;
    background-color: rgb(24, 158, 255);
    border-radius: 50px;
    text-align: center;
    line-height: 40px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.menu
{
	width: 100%;
	height: 35px;
	background-color:rgb(24, 158, 255);
	display: flex;
	justify-content: space-between;
	position: fixed;
}
.menu_left,.menu_right
{
	display: flex;
	list-style: none;
	margin: 0;
	padding: 0;
	line-height: 35px;
}
.menu_left
{
	margin-left: 10px;
}
.link_menu
{
	text-decoration: none;
	padding-left: 10px;
	padding-right: 10px;
	color:white;
	

}

.link_menu:hover
{
	transition:0.5s;
	color:rgb(24, 158, 255);
	background:white;
}
.mid
{
	width: 100%;
	height: 3px;
	background-color: rgb(24, 158, 255);
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.head_left
{
	width: 100%;
	height: 40px;
	/*background-image:linear-gradient(0,#fe6433,#f53e2d);*/
	background-color: rgb(24, 158, 255);
	line-height: 40px;
}
.head_left h3
{
	margin: auto;
	text-align: center;
	color:white;
}
.bottom_head_left
{
	width:100%;
	height:20px;
}
.left
{
	width: 20%;
	min-height: 500px;
	background-color: #EEEEEE;
	margin-top: 30px;
	border: 1px solid rgb(24, 158, 255);
	float: left;
	position: fixed;
	top:30px;
}
.type_link
{
	display: inline-block;
	/*border-bottom: 0.5px solid #009b72;*/
	width: 95%;
	text-decoration: none;
	padding-bottom: 5px;
	padding-top:4px;
	padding-left:13px;
	font-size: 18px;
	font-weight: 200;
	color: rgb(68, 68, 68);
	
	
}
.type_link:hover
{
	background-color: rgb(24, 158, 255);
	color:white;
	transition: 0.2s;
}

.right
{
	width: 78%;
	min-height: 700px;
	/*border: 1px solid #009b72;*/
	float: left;
	margin-top: 90px;
	margin-left: 300px;
	background-color:white;
	padding-bottom:100px;
	
}
.row
{
	width: 100%;
	height: 450px;
	justify-content: space-around;
	display: flex;
	margin-top: 30px;
}
.colum
{
	height: 100%;
	width: 28%;
	background-color: #EEEEEE;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.colum_top
{
	height: 82%;
	width: 100%;

}
.colum_top lable
{
	font-size: 16px;
	font-family: inherit;
	display: flex;
    justify-content: center;
	
}
.colum_bottom
{
	height: 12%;
	width: 100%;
	padding-top: 3px;
	background-color: rgb(24, 158, 255);
	border-radius:2px;
	text-align:center;
	
}
.link_buy
{
	text-decoration: none;
}
.txt_buy
{
	font-weight:bold;
	color:yellow;
	font-size:20px;
}
.txt_sub
{
	color:yellow;
}

.img_buy
{
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top:7px;
}
.img
{
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-bottom:7px;
	margin-top:4px;
	height:280px;
}
h4
{
	margin: 0;
	text-align: center;
	padding: 0;
}
.price
{
	color:#fe0000;
	margin:0;
}
.gia
{
	width:100%;
	height:20px;
	text-align: center;
    font-weight: 600;
}
form
{
	position: absolute;
    width: 500px;
    top: 50px;
    right: 30%;
}

/*dang nhap va dang ky*/
@media only screen and (max-width: 768px){
.colum{
width:50%;
}

}



</style>
</head>
<body>

	<%
					String makhachhang;
					String tenkh;
					dangnhapbo dnbo=new dangnhapbo();
					if(session.getAttribute("makh")!=null){
						makhachhang=(String)session.getAttribute("makh");
						tenkh=dnbo.gettenkh(makhachhang);
					}
					else {
						 makhachhang=null;
						 tenkh=null;
					}
					
					
					ArrayList<loaisachbean> ls=(ArrayList<loaisachbean>)request.getAttribute("dsloai");
					ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
					int n1=ls.size();
					int n=ds.size();
				%>
	<div class="all">
	
		<div class="head">
		<div class="top">
			<div class="seach">
				<form action="sachcontroller">
				<input class="input" type="text" name="txttk" placeholder="Tìm sách mong muốn...">
				<input class="button" type="submit" name="button" value="Tìm kiếm">
			    </form>
			</div>
			
				<% if(makhachhang!=null){ %>
				<div class="wecome">
			   <P> Xin chào <%= tenkh %></P>
			   </div>
			    <%} %>
			
		</div>
		
		<div class="menu">
			<ul class="menu_left">
				<a class="link_menu" href="sachcontroller"><li class="item item_tc"><b>Trang Chủ</b></li></a>
				<a class="link_menu" href="giohangcontroller?type=g"><li class="item"><b>Giỏ Hàng</b></li></a>
				<a class="link_menu" href=""><li class="item"><b>Thanh Toán</b></li></a>
				<% if(makhachhang!=null){ %>
				<a class="link_menu" href="historycontroller"><li class="item"><b>Lịch Sử Mua Hàng</b></li></a>
				<% } %>
			</ul>
			<ul class="menu_right">
				<% if(makhachhang!=null){ %>
					<a class="link_menu " href="dangxuatcontroller"><li class="item item_r"><b>Đăng Xuất</b></li></a>
					<%}else  {%>
						<a  class="link_menu dn" href="dangnhapcontroller"><li class="item item_r"><b>Đăng Nhập</b></li></a>
						
						<%} %>
			</ul>
			
		</div>
		</div>
		
		
		<div class="content">
			<div class="left">
				<div class="head_left">
					<h3>DANH MỤC SÁCH</h3>
				</div>
				<div class="bottom_head_left"></div>
				
				<div class="cont">
				
		
					<%-- <%
				loaisachbo lbo=new loaisachbo();
			    		ArrayList<loaisachbean> ls=lbo.getloai();
			    		int n1=ls.size();
				%> --%>
				
					<%for(int i=0;i<n1;i++){ %>
						<a href="sachcontroller?loaisach=<%=ls.get(i).getMaloai() %>" class="type_link"><%=ls.get(i).getTenloai() %></a> <br>
					<%} %>
				
				</div>
				
			</div>
			<div class="right">
				
				<%-- <%sachbo sbo=new sachbo();
							ArrayList<sachbean> ds=sbo.getsach();
							
							String ml=request.getParameter("loaisach");
							String  key=request.getParameter("txttk");
									if(ml!=null)
										ds=sbo.TimMa(ml);
									else
										if(key!=null)
											ds=sbo.Timsach(key);
									int n=ds.size();		
							%> --%>
							
							  <%for(int i=0;i<n;i++){ %>
							  	<div class="row">
					<div class="colum">
						<div class="colum_top">
						<img class="img" src="<%=ds.get(i).getAnh() %>" alt="">
						<lable ><%=ds.get(i).getTensach() %></lable>
						
						<lable >Tác giả: <%=ds.get(i).getTacgia() %></lable>
						
						</div>
						<div class="gia">
						<p class="price">Giá: <%=ds.get(i).getGia() %>đ</p>
						</div>
						<a class="link_buy" href="giohangcontroller?type=buy&ms=<%=ds.get(i).getMasach()%>&ts=<%=ds.get(i).getTensach() %>
						&tg=<%=ds.get(i).getTacgia()%>&gia=<%=ds.get(i).getGia()%>&anh=<%=ds.get(i).getAnh()%>">
						<div class="colum_bottom">
						 <span class="txt_buy">MUA NGAY</span> <br>
						 <span class="txt_sub">Giao hàng tận nơi</span>
						</div> </a>
					</div>
					<% i++;  if(i<n){ %>
					<div class="colum">
						<div class="colum_top">
						<img class="img" src="<%=ds.get(i).getAnh() %>" alt="">
						<lable ><%=ds.get(i).getTensach() %></lable>
						
						<lable>Tác giả: <%=ds.get(i).getTacgia() %></lable>
						
						</div>
						<div class="gia">
						<p class="price">Giá: <%=ds.get(i).getGia() %>đ</p>
						</div>
						<a class="link_buy" href="giohangcontroller?type=buy&ms=<%=ds.get(i).getMasach()%>&ts=<%=ds.get(i).getTensach() %>
						&tg=<%=ds.get(i).getTacgia()%>&gia=<%=ds.get(i).getGia()%>&anh=<%=ds.get(i).getAnh()%>">
						<div class="colum_bottom">
						 <span class="txt_buy">MUA NGAY</span> <br>
						 <span class="txt_sub">Giao hàng tận nơi</span>
						</div> </a>
					</div>
					<%} %>
					<% i++; if(i<n){ %>
					<div class="colum">
						<div class="colum_top">
						<img class="img" src="<%=ds.get(i).getAnh() %>" alt="">
						<lable><%=ds.get(i).getTensach() %></lable> 
						
						<lable >Tác giả: <%=ds.get(i).getTacgia() %></lable>
						
						</div>
						<div class="gia">
						<p class="price">Giá: <%=ds.get(i).getGia() %>đ</p>
						</div>
						<a class="link_buy" href="giohangcontroller?type=buy&ms=<%=ds.get(i).getMasach()%>&ts=<%=ds.get(i).getTensach() %>
						&tg=<%=ds.get(i).getTacgia()%>&gia=<%=ds.get(i).getGia()%>&anh=<%=ds.get(i).getAnh()%>">
						<div class="colum_bottom">
						 <span class="txt_buy">MUA NGAY</span> <br>
						 <span class="txt_sub">Giao hàng tận nơi</span>
						</div> </a>
					</div>
					<%} %>
				</div>
							  	<%} %>
				
				
				
			</div>
		</div>
	
	</div>
	
	<!-- dang nhap va dang ky -->
	
	
</body>
</html>