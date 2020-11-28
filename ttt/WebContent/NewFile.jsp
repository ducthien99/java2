
<!DOCTYPE html>
<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	.main
{
	width: 800px;
	height: 400px;
	margin: 0 auto;
	border: 2px solid blue;
	

}
.head
{
	height: 40px;
	background: blue;
	
	
}
.h4
{
	margin-left: 8px;
	margin-top: 0px;
	line-height: 40px;
	color: white;
}
/*.content
{
	height: 360px;
	background-color: yellow;

}*/

.usename
{
	margin-top: 20px;
	margin-left: 10px;
	width: 300px;
	height: 20px;
	font-size: 14px;

}
.gioitinh, .day,.month,.year,.addr
{
	margin-left: 9px;
	height: 25px;
	width: 90px;
}
.button
{
	margin-left: 9px;
	margin-top: 30px;
	border-radius: 3px;
	background-color: #0099FF;
	width: 80px;
	height: 30px;
	color: white;
	cursor: pointer;
	border: none;

}
</style>
</head>
<body>
	<div class="main">
		<div class="head">
			<h4 class="h4">ĐĂNG KÝ</h4>
		</div>
		<div class="content">
			
			<form  class="dangky" action="" name="dangky" method="post">
			<input class="usename" type="text" name="usename" placeholder="Nhập Usename">
			<input class="usename" type="text" name="usename" placeholder="Nhập Họ và Tên"> <br>

			<input class="usename" type="password" name="password" placeholder="Nhập mật khẩu">
			<select name="gioitinh" class="gioitinh">
				<option value="">Giới tính</option>
				<option value="1">Nam</option>
				<option value="0">Nữ</option>
			</select> <br>
			<input class="usename" type="password" name="password1" placeholder="Nhập lại mật khẩu">
			<select name="day" class="day">
				<option value>Ngày sinh</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>
			<select name="month" id="" class="month">
				<option value>Tháng</option>
				<%for(int i=0;i<12;i++) { %>
				<option><%=i %></option>
				<%} %>
			</select>
			<select name="year" id="" class="year">
				<option value>Năm</option>
				<option value="">1980</option>
				<option value="">1981</option>
				<option value="">1982</option>
				<option value="">1983</option>
				<option value="">1984</option>
				<option value="">1985</option>
				<option value="">1986</option>
				<option value="">1987</option>
				<option value="">1988</option>
				<option value="">1989</option>
				<option value="">1990</option>
				<option value="">1991</option>
				<option value="">1992</option>
				<option value="">1993</option>
				<option value="">1994</option>
				<option value="">1995</option>
				<option value="">1996</option>
				<option value="">1997</option>
				<option value="">1998</option>
				<option value="">1999</option>
				<option value="">2000</option>
				<option value="">2001</option>
				<option value="">2002</option>
				<option value="">2003</option>
				<option value="">2004</option>
				<option value="">2005</option>
				<option value="">2006</option>
				<option value="">2007</option>
				<option value="">2008</option>
				<option value="">2009</option>
			</select>
			 <br>
			<input class="usename" type="text" name="email" placeholder="Nhập địa chỉ email"> 
			<select name="addr" id="" class="addr">
				<option value>Tỉnh/TP</option>
				<option value="76">An Giang</option>
				<option value="64">Bà Rịa Vũng Tàu</option>
				<option value="281">Bắc Cạn</option>
				<option value="240">Bắc Giang</option>
				<option value="781">Bạc Liêu</option>
				<option value="241">Bắc Ninh</option>
				<option value="75">Bến Tre</option>
				<option value="650">Bình Dương</option>
				<option value="651">Bình Phước</option>
				<option value="62">Bình Thuận</option>
				<option value="56">Bình Định</option>
				<option value="78">Cà Mau</option>
				<option value="71">Cần Thơ</option>
				<option value="26">Cao Bằng</option>
				<option value="59">Gia Lai</option>
				<option value="19">Hà Giang</option>
				<option value="351">Hà Nam</option>
				<option value="4">Hà Nội</option>
				<option value="34">Hà Tây</option>
				<option value="39">Hà Tỉnh</option>
				<option value="320">Hải Dương</option>
				<option value="31">Hải Phòng</option>
				<option value="18">Hòa Bình</option>
				<option value="321">Hưng Yên</option>
				<option value="58">Khánh Hòa</option>
				<option value="77">Kiên Giang</option>
				<option value="60">Kon Tum</option>
				<option value="23">Lai Châu</option>
				<option value="63">Lâm Đồng</option>
				<option value="25">Lạng Sơn</option>
				<option value="20">Lào Cai</option>
				<option value="72">Long An</option>
				<option value="350">Nam Định</option>
				<option value="38">Nghệ An</option>
				<option value="30">Ninh Bình</option>
				<option value="68">Ninh Thuận</option>
				<option value="901">Nơi khác</option>
				<option value="210">Phú Thọ</option>
				<option value="57">Phú Yên</option>
				<option value="52">Quảng Bình</option>
				<option value="510">Quảng Nam</option>
				<option value="55">Quảng Ngãi</option>
				<option value="33">Quảng Ninh</option>
				<option value="53">Quảng Trị</option>
				<option value="79">Sóc Trăng</option>
				<option value="22">Sơn La</option>
				<option value="66">Tây Ninh</option>
				<option value="36">Thái Bình</option>
				<option value="280">Thái Nguyên</option>
				<option value="37">Thanh Hóa</option>
				<option value="54">Thừa Thiên Huế</option>
				<option value="73">Tiền Giang</option>
				<option value="8">TP.HCM</option>
				<option value="74">Trà Vinh</option>
				<option value="27">Tuyên Quang</option>
				<option value="70">Vĩnh Long</option>
				<option value="211">Vĩnh Phúc</option>
				<option value="29">Yên Bái</option>
				<option value="511">Đà Nẵng</option>
				<option value="50">Đắc Lắc</option>
				<option value="1042">Đắc Nông</option>
				<option value="900">Điện Biên</option>
				<option value="61">Đồng Nai</option>
				<option value="67">Đồng Tháp</option>
			</select><br>
			<input class="usename" type="text" name="email1" placeholder="Nhập lại địa chỉ email">
			<input type="text" class="usename" name="code" placeholder="Nhập mã xác nhận"> <br>
			<button class="button">Đăng Ký</button>
			<input type="checkbox" class="checkbox" name="checkbox" value="1"> Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
			</form>
			
		</div>
		</div>
</body>
</html>