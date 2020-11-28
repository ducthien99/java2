<%@page import="bo.dangnhapbo"%>
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
.product-image {
  float: left;
  width: 20%;
}
 
.product-details {
  float: left;
  width: 37%;
}
 
.product-price {
  float: left;
  width: 12%;
}
 
.product-quantity {
  float: left;
  width: 10%;
}
 
.product-removal {
  float: left;
  width: 9%;
}
 
.product-line-price {
  float: left;
  width: 12%;
  text-align: right;
}
 
/* This is used as the traditional .clearfix class */
.group:before, .shopping-cart:before, .column-labels:before, .product:before, .totals-item:before,
.group:after,
.shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  content: '';
  display: table;
}
 
.group:after, .shopping-cart:after, .column-labels:after, .product:after, .totals-item:after {
  clear: both;
}
 
.group, .shopping-cart, .column-labels, .product, .totals-item {
  zoom: 1;
}
 
/* Apply clearfix in a few places */
/* Apply dollar signs */
.product .product-price:before, .product .product-line-price:before, .totals-value:before {
  content: '$';
}
 
/* Body/Header stuff */
body {
  padding: 0px 30px 30px 20px;
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;

}
 
h1 {
  font-weight: 100;
}
 
label {
  color: #aaa;
}
 
.shopping-cart {
  margin-top: -45px;
}
 
/* Column headers */
.column-labels label {
  padding-bottom: 15px;
  margin-bottom: 15px;
  border-bottom: 1px solid #eee;
}
.column-labels .product-image, .column-labels .product-details, .column-labels .product-removal {
  text-indent: -9999px;
}
 
/* Product entries */
.product {
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.product .product-image {
  text-align: center;
}
.product .product-image img {
  width: 100px;
}
.product .product-details .product-title {
  margin-right: 20px;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.product .product-details .product-description {
  margin: 5px 20px 5px 0;
  line-height: 1.4em;
}
.product .product-quantity input {
}
.product .remove-product {
  border: 0;
  padding: 4px 8px;
  background-color: #c66;
  color: #fff;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
  font-size: 12px;
  border-radius: 3px;
}
.product .remove-product:hover {
  background-color: #a44;
}
 
/* Totals section */
.totals .totals-item {
  float: right;
  clear: both;
  width: 100%;
  margin-bottom: 10px;
}
.totals .totals-item label {
  float: left;
  clear: both;
  width: 79%;
  text-align: right;
}
.totals .totals-item .totals-value {
  float: right;
  width: 21%;
  text-align: right;
}
.totals .totals-item-total {
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
 
.checkout {
  float: right;
  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: #6b6;
  color: #fff;
  font-size: 25px;
  border-radius: 3px;
}
.back {

  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: #6b6;
  color: #fff;
  font-size: 25px;
  border-radius: 3px;
}
.back img
{
  height: 27px;
}
.back:hover
{
  background-color: #494;
}
 
.checkout:hover {
  background-color: #494;
}
.cart img
{
  height: 50px;
  margin-top:10px;
  margin-left: 10px; 
}
.cart
{
  display: flex;
}
 
/* Make adjustments for tablet */
@media screen and (max-width: 650px) {
  .shopping-cart {
    margin: 0;
    padding-top: 20px;
    border-top: 1px solid #eee;
  }
 
  .column-labels {
    display: none;
  }
 
  .product-image {
    float: right;
    width: auto;
  }
  .product-image img {
    margin: 0 0 10px 10px;
  }
 
  .product-details {
    float: none;
    margin-bottom: 10px;
    width: auto;
  }
 
  .product-price {
    clear: both;
    width: 70px;
  }
 
  .product-quantity {
    width: 100px;
  }
  .product-quantity input {
    margin-left: 20px;
  }
 
  .product-quantity:before {
    content: 'x';
  }
 
  .product-removal {
    width: auto;
  }
 
  .product-line-price {
    float: right;
    width: 70px;
  }
}
.submit
  {
    margin-top: 5px;
    width: 70px;
    height: 20px;
    border:none;
    color: #494;
  }
/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
  .product-removal {
    float: right;
  }
 
  .product-line-price {
    float: right;
    clear: left;
    width: auto;
    margin-top: 10px;
  }
 
  .product .product-line-price:before {
    content: 'Item Total: $';
  }
 
  .totals .totals-item label {
    width: 60%;
  }
  .totals .totals-item .totals-value {
    width: 40%;
  }
}
.damua
{
	color: blue;
    text-align: center;
    font-weight: 100;
}
.ten{
max-width:300px;
height:30px;
border-bottom: 1px solid #eee;
font-size:10px;

}

</style>
</head>
<body>
	<% String makhachhang;
	String tenkh;
	dangnhapbo dnbo=new dangnhapbo();
	if(session.getAttribute("makh")!=null){
		makhachhang=(String)session.getAttribute("makh");
		tenkh=dnbo.gettenkh(makhachhang);
	}
	else {
		 makhachhang=null;
		 tenkh=null;
	} %>


	<% 
	giohangbo	gh=(giohangbo)session.getAttribute("gh");
	String damua=request.getParameter("damua");
	 //gh=(giohangbo)session.getAttribute("gh"); %>	
	 <div class="ten">
	 		<% if(tenkh!=null){ %>
			<h1 class="kh"><%=tenkh %></h1>
			<%} %>
		</div>
	<div class="cart">
  	<h1>Giỏ hàng</h1>
    <img src="cart.png" alt="">
    <h2>(<%=gh.ds.size() %>)</h2>
    
    
  </div>
 
<div class="shopping-cart">
 
  <div class="column-labels">
    <label class="product-image">Ảnh</label>
    <label class="product-details">sách</label>
    <label class="product-price">Giá</label>
    <label class="product-quantity">Số lượng</label>
    <label class="product-removal">Xóa</label>
    <label class="product-line-price">Thành tiền</label>
  </div>
 <%
 if(gh!=null)
 {
	 for(giohangbean g:gh.ds)
	 {
 %>
 
  <div class="product">
    <div class="product-image">
      <img src="<%=g.getAnh() %>" >
    </div>
    <div class="product-details">
      <div class="product-title"><%=g.getMasach() %></div>
      <p class="product-description"> <%=g.getTacgia() %></p>
    </div>
    <div class="product-price"><%=g.getGia() %></div>
    <div class="product-quantity">
    	<form action="giohangcontroller?type=sua&ms=<%=g.getMasach() %>" method="post" class="form">
      		<input name="input" type="number" value="<%=g.getSoluong() %>" min="1" max="10">
      		<input class="submit" type="submit" value="Cập nhật">
     	</form>
    </div>
    <div class="product-removal">
      <a href="giohangcontroller?type=xoa&ms=<%=g.getMasach()%>">
		<button class="remove-product">
       		 Xóa
      	</button>
		</a>
    </div>
    <div class="product-line-price"><%=g.getThanhtien() %></div>
  </div>
 <% }
 } %>


  <div class="totals">
    <div class="totals-item">
      <label>Tổng tiền</label>
      <div class="totals-value" id="cart-subtotal"><%=gh.tongtien() %></div>
    </div>
    <!--<div class="totals-item">
      <label>Thuế (5%)</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">90.57</div>
    </div>-->
  </div>
       
      <a href="datmuacontroller"><button class="checkout">Đặt mua</button></a>
      <a href="sachcontroller">
      <button class="back">
      	<img src="home1.png" alt="">
      Tiếp tục mua hàng</button></a>
      
      <% if(damua!=null){ %>
    <h2 class="damua">Đã đặt mua thành công.</h2>
    <%}%>
    
 
</div>


	

</body>
</html>