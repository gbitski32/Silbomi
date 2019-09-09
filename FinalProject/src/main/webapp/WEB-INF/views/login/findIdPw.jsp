<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<!--  
▶ 아이디/비밀번호 찾기
1. 매핑 완료
2. 레이아웃 잡기 
-->
<style>
body {
	background: #f3c538;
}

.forget-pwd>a {
	color: #dc3545;
	font-weight: 500;
}

.forget-password .panel-default {
	padding: 31%;
	margin-top: -27%;
}

.forget-password .panel-body {
	padding: 15%;
	margin-bottom: -50%;
	background: #fff;
	border-radius: 5px;
	-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

img {
	width: 40%;
	margin-bottom: 10%;
}

.btnForget {
	background: #c0392b;
	border: none;
}

.forget-password .dropdown {
	width: 100%;
	border: 1px solid #ced4da;
	border-radius: .25rem;
}

.forget-password .dropdown button {
	width: 100%;
}

.forget-password .dropdown ul {
	width: 100%;
}
</style>
<script src="../jquery/jquery-3.4.1.js"></script>
<script>
	//아이디 찾기 폼 유효성 검사
	function idFind() {
		var fn = document.findFrm;

		if (fn.findId_name.value.length == 0) {
			alert('이름을 입력해주세요');
			fn.findId_name.focus();
			return false;
		}

		if (fn.findId_email_id.value.length == 0) {
			alert('이메일 아이디를 입력해주세요');
			fn.findId_email.focus();
			return false;
		}

		if (fn.findId_email_domain.value.length == 0) {
			alert('이메일 도메인을 입력해주세요');
			fn.findId_email.focus();
			return false;
		}

		//폼 값 전송
		fn.action = "./findId";
		fn.method = "post";
		fn.submit();
	}

	//비밀번호 찾기 폼 유효성 검사
	function pwFind() {
		var fn = document.findFrm;

		if (fn.findPw_id.value.length == 0) {
			alert('아이디를 입력해주세요');
			fn.findPw_id.focus();
			return false;
		}

		if (fn.findPw_name.value.length == 0) {
			alert('이름을 입력해주세요');
			fn.findPw_name.focus();
			return false;
		}

		if (fn.findPw_email_id.value.length == 0) {
			alert('이메일 아이디를 입력해주세요');
			fn.findId_email.focus();
			return false;
		}

		if (fn.findPw_email_domain.value.length == 0) {
			alert('이메일 도메인을 입력해주세요');
			fn.findId_email.focus();
			return false;
		}

		//폼 값 전송
		fn.action = "./findPw";
		fn.method = "post";
		fn.submit();
	}
</script>
<%@ include file="../main/include/headAndMeta.jsp"%>


<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<%@ include file="../main/include/nav.jsp"%>


	<div style="margin-top: 78px; " style="border:1px solid black;"></div>

	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt=""
			style="width: 100%; height: 200px;" />
	</div>
	<form name="findFrm" method="post">
		<div style="display: inline-block; width: 30%; margin-left: 20%;">
			<div class="col-md-12 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<img src="../resources/forgotId.png" alt="car-key" border="0">
							<h2 class="text-center">아이디 찾기</h2>
							<p>성함과 이메일을 기입해주세요.</p>
							<div class="form-group">
								<div class="input-group" style="margin-top : 50px;">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope color-blue"></i></span> 
										<input type="text" id="findId_name" name="findId_name" placeholder="회원 이름"
										class="form-control">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group" style="">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="findId_email_id" name="findId_email_id" placeholder="이메일"
										class="form-control" type="text">
									&nbsp;@&nbsp;
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="findId_email_domain" name="findId_email_domain" placeholder="도메인"
										class="form-control" type="text">
								</div>
								<br />
							</div>
							<div class="form-group">
								<button type="button" name="btnForget"
									class="btn btn-lg btn-primary btn-block btnForget"
									onclick="idFind();">아이디 찾기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="display: inline-block; width: 30%;">
			<div class="col-md-12 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<img src="../resources/forgotPass.png" alt="car-key" border="0">
							<h2 class="text-center">비밀번호 찾기</h2>
							<p>아이디와 성함, 이메일을 기입해주세요.</p>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="findPw_id" name="findPw_id" placeholder="아이디"
										class="form-control" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope color-blue"></i></span>
										<input type="text" id="findPw_name" name="findPw_name" placeholder="회원 이름"
										class="form-control" />
								</div>
							</div>
							<div class="form-group">
								<div class="input-group" style="">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="findPw_email_id" name="findPw_email_id" placeholder="이메일"
										class="form-control" type="text">
									&nbsp;@&nbsp;
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span> <input
										id="findPw_email_domain" name="findPw_email_domain" placeholder="도메인"
										class="form-control" type="text">
								</div>
							</div>
							<div class="form-group">
								<button type="button" name="btnForget"
									class="btn btn-lg btn-primary btn-block btnForget"
									onclick="pwFind();">비밀번호 찾기</button>
							</div>
<!-- 							<p>입력하신 이메일로 비밀번호를 보내드리겠습니다.</p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div style="height: 200px"></div>

	<%@ include file="../main/include/footer.jsp"%>

</body>
</html>
