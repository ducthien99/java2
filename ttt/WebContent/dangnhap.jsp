<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  background: -webkit-linear-gradient(left, #4555b2, #42d5fa);
}
::selection{
  background: #fa4299;
  color: #fff;
}
.wrapper{
  overflow: hidden;
  max-width: 390px;
  background: #fff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
  position: absolute;
  right:34%;
}
.wrapper a .img{
  position: absolute;
  top: 0px;
  right: 0px;
  width: 35px;
  height: 35px;
  cursor: pointer;
  background-color: #eee;
}
.wrapper .title-text{
  display: flex;
  width: 200%;
}
.wrapper .title{
  width: 50%;
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
}
.wrapper .slide-controls{
  position: relative;
  display: flex;
  height: 50px;
  width: 100%;
  overflow: hidden;
  margin: 30px 0 10px 0;
  justify-content: space-between;
  border: 1px solid lightgrey;
  border-radius: 5px;
}
.slide-controls .slide{
  height: 100%;
  width: 100%;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  text-align: center;
  line-height: 48px;
  cursor: pointer;
  z-index: 1;
  transition: all 0.6s ease;
}
.slide-controls label.signup{
  color: #000;
}
.slide-controls .slider-tab{
  position: absolute;
  height: 100%;
  width: 50%;
  left: 0;
  z-index: 0;
  border-radius: 5px;
  background: -webkit-linear-gradient(left, #4555b2, #42d5fa);
  transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
}
.wrapper input[type="radio"]{
  display: none;
}
#signup:checked ~ .slider-tab{
  left: 50%;
}
#signup:checked ~ label.signup{
  color: #fff;
  cursor: default;
  user-select: none;
}
#signup:checked ~ label.login{
  color: #000;
}
#login:checked ~ label.signup{
  color: #000;
}
#login:checked ~ label.login{
  cursor: default;
  user-select: none;
}
.wrapper .form-container{
  width: 100%;
  overflow: hidden;
}
.form-container .form-inner{
  display: flex;
  width: 200%;
}
.form-container .form-inner form{
  width: 50%;
  transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55);
}
.form-inner form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
}
.form-inner form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  padding-left: 15px;
  border-radius: 5px;
  border: 1px solid lightgrey;
  border-bottom-width: 2px;
  font-size: 17px;
  transition: all 0.3s ease;
}
.form-inner form .field input:focus{
  border-color: #fc83bb;
  /* box-shadow: inset 0 0 3px #fb6aae; */
}
.form-inner form .field input::placeholder{
  color: #999;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus::placeholder{
  color: #b3b3b3;
}
.form-inner form .pass-link{
  margin-top: 5px;
}
.form-inner form .signup-link{
  text-align: center;
  margin-top: 30px;
}
.form-inner form .pass-link a,
.form-inner form .signup-link a{
  color: #fa4299;
  text-decoration: none;
}
.form-inner form .pass-link a:hover,
.form-inner form .signup-link a:hover{
  text-decoration: underline;
}
.wrapper form .btn{
  height: 50px;
  width: 100%;
  border-radius: 5px;
  position: relative;
  overflow: hidden;
}
.wrapper form .btn .btn-layer{
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  background: -webkit-linear-gradient(right,  #4555b2, #42d5fa,  #4555b2, #42d5fa);
  border-radius: 5px;
  transition: all 0.4s ease;;
}
.wrapper form .btn:hover .btn-layer{
  left: 0;
}
.wrapper form .btn input[type="submit"]{
  height: 100%;
  width: 100%;
  z-index: 1;
  position: relative;
  background: none;
  border: none;
  color: #fff;
  padding-left: 0;
  border-radius: 5px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
}


</style>
</head>
<body>
	<div id="w" class="wrapper">
	<div class="icon">
               <a href="sachcontroller" > <img id="img" class="img" src="icon.png" alt=""></a>
            </div>
            <div class="title-text">
            <div class="title login">Đăng nhập</div>
        <div class="title signup">Đăng ký</div>
    </div>
    <div class="form-container">
            <div class="slide-controls">
                <input type="radio" name="slide" id="login" checked>
                <input type="radio" name="slide" id="signup">
                <label for="login" class="slide login">Đăng nhập</label>
                <label for="signup" class="slide signup">Đăng ký</label>
                <div class="slider-tab">
    </div>
    </div>
    <div class="form-inner">
        <form action="dangnhapcontroller" class="login">
             <div class="field">
                    <input name="tendangnhap" type="text" placeholder="Tên đăng nhập" required>
             </div>
        <div class="field">
             <input name="matkhau" type="password" placeholder="Mật khẩu" required>
        </div>
        <div class="pass-link">
            <a href="#">Quên mật khẩu?</a></div>
        <div class="field btn">
            <div class="btn-layer"> </div>
            <input type="submit" value="Đăng nhập">
        </div>
        <div class="signup-link"> Bạn chưa có tài khoản? đăng ký <a href="dangkycontroller">tại đây</a></div>
        </form>
        <form action="dangkycontroller" class="signup">
            <div class="field">
                <input name="hoten" type="text" placeholder="Họ tên" required>
            </div>
            <div class="field">
                <input name="diachi" type="text" placeholder="Địa chỉ" required>
            </div>
            <div class="field">
                <input name="sdt" type="text" placeholder="Số điện thoại" required>
            </div>
            <div class="field">
                <input name="email" type="text" placeholder="Email" required>
            </div>
            <div class="field">
                <input name="tendn" type="text" placeholder="Tên đăng nhập" required>
            </div>
            <div class="field">
                <input name="pass" type="password" placeholder="Mật khẩu" required>
            </div>
            <!--<div class="field">
                            <input type="password" placeholder="Confirm password" required>
                        </div>-->
            <div class="field btn">
                <div class="btn-layer"></div>
            <input type="submit" value="Đăng ký">
            </div>
        </form>
    </div>
    </div>
    </div>
    <script>
            const loginText = document.querySelector(".title-text .login");
            const loginForm = document.querySelector("form.login");
            const loginBtn = document.querySelector("label.login");
            const signupBtn = document.querySelector("label.signup");
            const signupLink = document.querySelector("form .signup-link a");
            signupBtn.onclick = (()=>{
            loginForm.style.marginLeft = "-50%";
            loginText.style.marginLeft = "-50%";
            });
            loginBtn.onclick = (()=>{
            loginForm.style.marginLeft = "0%";
            loginText.style.marginLeft = "0%";
            });
            signupLink.onclick = (()=>{
            signupBtn.click();
            return false;
            });
        </script>
</body>
</body>
</html>