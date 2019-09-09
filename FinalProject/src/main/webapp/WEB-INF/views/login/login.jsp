<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="../jquery/jquery-3.4.1.js"></script>
<!DOCTYPE html>
<html lang="en">
<!--  
▶ 로그인
1. 매핑 완료
2. 레이아웃 잡기 
-->

<style>
@import url('https://fonts.googleapis.com/css?family=Mukta');
body{
  font-family: 'Mukta', sans-serif;
 	height:100vh;
 	min-height:550px; 
	background-image: url(http://www.planwallpaper.com/static/images/Free-Wallpaper-Nature-Scenes.jpg);
	background-repeat: no-repeat;
/* 	background-size:cover; */
	background-position:center;
/* 	position:relative; */
    overflow-y: scroll;
}
a{
  text-decoration:none;
  color:#444444;
}
.login-reg-panel{
    position: relative;
    top: 40%;
    transform: translateY(-50%);
	text-align:center;
    width:70%;
	right:0;left:0;
    margin-left: 18%;
    height:400px;
    background-color: rgba(126, 215, 126, 0.9);
}
.white-panel{
    background-color: rgba(255,255, 255, 1);
    height:500px;
    position:absolute;
    top:-50px;
    width:50%;
    right:calc(50% - 50px);
    transition:.3s ease-in-out;
    z-index:0;
    box-shadow: 0 0 15px 9px #00000096;
}
.login-reg-panel input[type="radio"]{
    position:relative;
    display:none;
}
.login-reg-panel{
    color:#B8B8B8;
}
.login-reg-panel #label-login, 
.login-reg-panel #label-register{
    border:1px solid #9E9E9E;
/*     padding:5px 5px; */
/*     width:150px; */
    display:block;
    text-align:center;
    border-radius:10px;
    cursor:pointer;
    font-weight: 600;
    font-size: 18px;
}
.login-info-box{
    width:30%;
    padding:0 50px;
    top:20%;
    left:0;
    position:absolute;
    text-align:left;
}
.register-info-box{
    width:30%;
    padding:0 50px;
    top:20%;
    right:0;
    position:absolute;
    text-align:left;
    
}
.right-log{right:50px !important;}

.login-show, 
.register-show{
    z-index: 1;
    display:none;
    opacity:0;
    transition:0.3s ease-in-out;
    color:#242424;
    text-align:left;
    padding:50px;
}
.show-log-panel{
    display:block;
    opacity:0.9;
}
.login-show input[type="text"], .login-show input[type="password"]{
    width: 100%;
    display: block;
    margin:20px 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
}
.login-show input[type="button"] {
    max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float:right;
    cursor:pointer;
}
.login-show a{
    display:inline-block;
    padding:10px 0;
}

.register-show input[type="text"], .register-show input[type="password"]{
    width: 100%;
    display: block;
    margin:20px 0;
    padding: 15px;
    border: 1px solid #b5b5b5;
    outline: none;
}
.register-show input[type="button"] {
    max-width: 150px;
    width: 100%;
    background: #444444;
    color: #f9f9f9;
    border: none;
    padding: 10px;
    text-transform: uppercase;
    border-radius: 2px;
    float:right;
    cursor:pointer;
}
.credit {
    position:absolute;
    bottom:10px;
    left:10px;
    color: #3B3B25;
    margin: 0;
    padding: 0;
    font-family: Arial,sans-serif;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: bold;
    letter-spacing: 1px;
    z-index: 99;
}
a{
  text-decoration:none;
  color:#2c7715;
}
</style>
<script>

$(document).ready(function(){
	$('.login-info-box').fadeOut();
	$('.login-show').addClass('show-log-panel');
	});
	
	
	$('.login-reg-panel input[type="radio"]').on('change', function() {
	if($('#log-login-show').is(':checked')) {
	    $('.register-info-box').fadeOut(); 
	    $('.login-info-box').fadeIn();
	    
	    $('.white-panel').addClass('right-log');
	    $('.register-show').addClass('show-log-panel');
	    $('.login-show').removeClass('show-log-panel');
	    
	}
	else if($('#log-reg-show').is(':checked')) {
	    $('.register-info-box').fadeIn();
	    $('.login-info-box').fadeOut();
	    
	    $('.white-panel').removeClass('right-log');
	    
	    $('.login-show').addClass('show-log-panel');
	    $('.register-show').removeClass('show-log-panel');
	}
	
});

function loginChk() {
	var fn = document.loginFrm;
	if(fn.user_id.value==""){
		alert('아이디를 입력하세요');
		fn.user_id.focus();
		return false;
	}
	
	if(fn.user_pw.value==""){
		alert('패스워드를 입력하세요');
		fn.user_pw.focus();
		return false;
	}
	
	//폼 값 전송
	fn.action = "./loginAction";
	fn.method = "post";
	fn.submit();
}

</script>
<%@ include file="../main/include/headAndMeta.jsp"%>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" >
	<%@ include file="../main/include/nav.jsp"%>

	<div style="margin-top: 100px;" style="border:1px solid black;"></div>
<!-- 	<div> -->
<!-- 		<img src="/silbomi/resources/green/images/main.jpg" alt="" -->
<!-- 			style="width: 100%; height: 200px;" /> -->
<!-- 	</div> -->

	<div style="margin-top:50px;" style="border:1px solid black;"></div>
	
	<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Have an account?</h2>
			<p>Lorem ipsum dolor sit amet</p>
			<label id="label-register" for="log-reg-show">Login</label> 
<!-- 			<input type="radio" name="active-log-panel" id="log-reg-show" -->
<!-- 				checked="checked"> -->
		</div>

		<div class="register-info-box">
			<h3>아직 회원이 아니신가요?</h3>
			<p style="color: #507a5b">회원가입을 해주세요.</p>
			<button type="button" onclick="location.href='./userType';" class="btn btn-outline-dark">회원가입</button>
<!-- 			<label id="label-login" for="log-login-show">회원가입</label> <input type="radio" name="active-log-panel" id="log-login-show"> -->
		</div>
			
		<div style="height: 50px"></div>
		<form name="loginFrm">
			<div class="white-panel">
				<div class="login-show" id="login">
					<h2>LOGIN</h2>
					<input type="text" id="user_id" name="user_id" placeholder="아이디"> 
					<input type="password" id="user_pw" name="user_pw" placeholder="패스워드"> 
					<button type="button" id="loginBtn" name="loginBtn" class="btn btn-outline-success" onclick="loginChk();" 
						style=" padding: 10px; text-transform: uppercase; float:right; cursor:pointer;">로그인</button> 
					<a href="./findIdPw" style="color:#477a36;">아이디/비밀번호 찾기</a>
				</div>
				<div class="register-show">
					<h2>REGISTER</h2>
					<input type="text" placeholder="Email"> <input
						type="password" placeholder="Password"> <input
						type="password" placeholder="Confirm Password"> <input
						type="button" value="Register">
				</div>
			</div>
		</form>
		<div style="height: 50px"></div>
	</div>

	<div style="height: 50%"></div>

	<%@ include file="../main/include/footer.jsp"%>

</body>
</html>
