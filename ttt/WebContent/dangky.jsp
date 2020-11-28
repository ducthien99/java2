<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	*{
    margin: 0;
    padding: 0;
    outline: none;
   
}
a
{
    text-decoration: none;
}
body
{
    background-color: chartreuse;
    display: flex;
    justify-content: center;
   
}
.container
{
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    width: 400px;
    height: 700px;
    background-color: white;
    border-radius: 10px;
    margin-top: 20px;
    padding: 50px;
    
    
}
.form_login
{
    width: 100%;
    height: 100%;
}
.input
{
    width: 100%;
    height: 80px;
    position: relative;
}
.input input
{
    width: 90%;
    height: 33px;
    border: none;
    border-radius: 4px;
    border: 1px solid rgb(128, 121, 121);
    cursor: pointer;
    padding-left: 20px;
    font-size: 17px;
    
}
label
{
    float:left;
    left: 0px;
    bottom: 58px;
    font-size: 17px;
    margin-left: 10px;
}
h1
{
    margin-top: 30px;
    margin-bottom: 30px;
}
button
{
    width: 95%;
    height: 40px;
    margin-bottom:30px;
    background-color: chartreuse;
    border:none;
    border-radius: 5px;
}
.input img{
    right: 12px;
    position: absolute;
    bottom: 58px;
    cursor: pointer;
}
.tb
{
    position: relative;
    bottom: -6px;
    float: left;
    color: red;
}

	
</style>
</head>
<body>
	 <div class="container">
        <form action="dangkycontroller" class="form_login">
            <h1>Đăng Ký</h1>
            <div class="input">
                <label id="labelemail" >Họ tên</label>
                <input  name="hoten" type="text">
                <span class="tb" id ="error"></span>
            </div>
            <div class="input">
                <label id="labelemail" >Địa chỉ</label>
                <input  name="diachi" type="text">
                <span class="tb" id ="error"></span>
            </div>
            <div class="input">
                <label id="labelemail" >Số điện thoại</label>
                <input  name="sdt" type="text">
                <span class="tb" id ="error"></span>
            </div>
            <div class="input">
                <label id="labelemail" >Email</label>
                <input  name="email" type="text">
                <span class="tb" id ="error"></span>
            </div>
            <div class="input">
                <label id="labelemail" >Tên đăng nhập</label>
                <input  name="tendn" type="text">
                <span class="tb" id ="error"></span>
            </div>
            
            <div class="input">
                <label >Mật khẩu</label>
                <input name="pass" type="password">
               
            </div>
            <button type="submit" onclick="checkemail()" >Đăng Ký</button> <br>
           

        </form>
    </div>
</body>
</html>