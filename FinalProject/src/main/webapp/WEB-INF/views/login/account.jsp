<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../jquery/jquery-3.4.1.js"></script>
<!--  
▶ 회원가입
1. 매핑 완료
2. 레이아웃 잡기 
-->

  	<%@ include file="../main/include/headAndMeta.jsp" %>
  
<style>
	input[type = 'text']{
		height: 15px;
		font-size: 15px;
	}
	input[type = 'password']{
		width: 1500px;
		height: 15px;
		font-size: 15px;
	}
</style>	
<script>

//숫자만 입력 가능
function isNumber() {
   if(event.keyCode<48 || event.keyCode>57) {
      event.returnValue=false;
   }
}

function zipFind() {

	new daum.Postcode({

		oncomplete:function(data) {
			$("#zipcode").val(data.zonecode);
			$("#addr1").val(data.address);
			
			$("#addr2").focus();
			/* console.log(data); */
		}

	}).open();

}
 
//아이디 유효성 검사(1 = 중복 / 0 != 중복)
$("#user_id").blur(function() {

	var user_id = $('#user_id').val();
	
	$.ajax({
		url : '${pageContext.request.contextPath}/myPage/idCheck?userId='+ user_id,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
			if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("사용 중인 아이디입니다.");
					$("#id_check").css("color", "red");
					$("#user_id").css("border", "red");
					$("#reg_submit").attr("disabled", true);
				} else {
					
					if(idJ.test(user_id)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
						$("#reg_submit").attr("disabled", false);
			
					} else if(user_id == ""){
						
						$('#id_check').text('아이디를 입력해주세요 :)');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);
					}
					
				}
			}, error : function() {
					console.log("실패");
			}
		});
	});
	
function registFrmCheck() {	
	var fn = document.registFrm;
	
	var frmArray = ["user_name", "user_id", "user_pw", "user_type", "silver_id", "gender", "birth", "mobile", "smsAgree",
		"email_id","email_domain", "emailAgree","zipcode", "addr1", "addr2"]; 

	var txtArray = ["이름란", "아이디란", "비밀번호란", "회원 유형란", "실버 아이디란", "성별란", "생년월일란", "핸드폰번호란", 
		"SMS 수신 동의란", "이메일란", "이메일란", "이메일 수신 동의란","우편번호란", "주소란", "주소란"]; 
			
	for(var i=0 ; i<frmArray.length ; i++) {
		if(eval("fn."+frmArray[i]+".type")=="text" || eval("fn."+frmArray[i]+".type")=="password") {			
			/*
			frmArray[i]이 string타입이므로 fn, value
			까지 문자열로 만들어준 다음 eval함수로
			DOM을 가져올수 있는 명령으로 만들어준다.
			*/
			if(eval("fn."+frmArray[i]+".value")==""){
				alert(txtArray[i]+"을 확인해주세요");
				eval("fn."+frmArray[i]+".focus()");
				return false;
			}			
		}

// 		//아이디 중복확인을 마쳐야 회원가입을 할수있다.
// 		if(fn.overFlag.value=="0"){
// 			alert("아이디 중복확인을 해주세요.")
// 			return false;
// 		}
		
// 		//비밀번호란과 비밀번호확인란이 다르면 회원가입을 할 수 없다.
// 		if(fn.pass.value!=fn.pass2.value){
// 			alert('입력하신 비밀번호가 일치하지 않습니다.');
// 			return false;
// 		}
		
		/* 폼 값 전송 */
		fn.action = "./accountAction";
		fn.method = "post";
		fn.submit();
	}
}
</script>
	  
  	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
   	<%@ include file="../main/include/nav.jsp" %>
	  

		
	<div style="margin-top:80px;" style="border:1px solid black;"></div>
	
	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width:100%; height:200px;" />
	</div>
	<div class="container">
		<div align="center">
			<form class="form-inline" name="registFrm" onsubmit="return registFrmCheck();" style="width:100%; margin-left:5px; margin-top: 45px;">	
				<h3 style="font-size:42px; margin-left:35.5%; color: gray">실보미 회원가입</h3>
				<table class="table table-striped">
					<colgroup>
						<col width="18%" />
						<col width="*" />
					</colgroup>
					<tr class="">
						<th>이름</th>
						<td><input type="text" class="form-control" id="user_name" name="user_name" value="" class="join_input" style="width: 50%"/></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" class="form-control" id="user_id" name="user_id" value="" style="width: 50%"/>&nbsp;&nbsp;
<!-- 							<button class="btn btn-primary"> -->
<!-- 								<a onclick="id_check_person();" style="cursor:hand;">중복 확인</a> -->
<!-- 							</button> &nbsp;&nbsp;-->
								<span style="font-size: 12px">* 4자 이상 12자 이내로 입력해주세요</span>
							<div class="check_font" id="id_check"></div>
						</td>
					</tr>
					<tr>
						<th>패스워드</th>
						<td><input type="password" class="form-control" id="user_pw" name="user_pw" value="" class="join_input" style="width: 50%"/>&nbsp;&nbsp;<span id=msg></span></td> 
					</tr>
					<tr>
						<th>실버 아이디</th>
						<td>
							<input type="text" class="form-control" id="silver_id" name="silver_id" value="" class="" style="width: 50%"/>&nbsp;&nbsp;
							<button class="btn btn-primary">
								<a onclick="id_check_person();" style="cursor:hand;">중복 확인</a>
							</button>
								&nbsp;&nbsp;<span style="font-size: 12px">* 4자 이상 12자 이내로 입력해주세요</span>	
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" class="form-control" id="birth" name="birth" maxlength="8" 
							value="" placeholder="숫자 8자리로 입력해주세요. (예: 19800101)" style="width: 50%" onkeypress="isNumber();"/></td> 
					</tr>
					<tr>
						<th>성별</th>
						<td>
							<div class="form-check-inline">
						      <label class="form-check-label" for="radio1">
						        <input type="radio" class="form-check-input" id="gender" name="gender" value="M" checked>남성
						      </label>
						    </div>
						    <div class="form-check-inline">
						      <label class="form-check-label" for="radio2">
						        <input type="radio" class="form-check-input" id="gender" name="gender" value="W">여성
						      </label>
						    </div>
						</td>
					</tr>
					<tr>
						<th>전화번호(선택)</th>
						<td>
							<input type="text" class="form-control" name="tel" id="tel" value="" maxlength="11" 
								class="join_input" style="width: 50%;" placeholder="숫자로만 입력해주세요. (예: 01012345678)" onkeypress="isNumber();"/>
						</td>
					</tr>
					<tr>
						<th>전화번호(필수)</th>
						<td>
							<input type="text" class="form-control" name="mobile" id="mobile" value="" maxlength="11" 
								class="join_input" style="width: 50%;" placeholder="숫자로만 입력해주세요. (예: 01012345678)" onkeypress="isNumber();"/>
							&nbsp;&nbsp;<input type="checkbox" name="smsAgree" value="Y"><span style="font-size: 15px"> SMS 수신동의</span>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" class="form-control" id="email_id" name="email_id" style="height:20px; border:solid 1px #dadada;" value="" /> @ 
<!-- 							<input type="text" class="form-control" id="email_2" name="email_2" style="height:20px;border:solid 1px #dadada;" value=""/> &nbsp;&nbsp; -->
							<select class="form-control" name="email_domain" onChange="email_input(this.form, this);" id="email_domain" style="width:25%; height:50px; font-size: 16px;" >
								<option selected="" value="" readonly>선택해주세요</option>
								<option value="user_input" >직접입력</option>
								<option value="dreamwiz.com" >dreamwiz.com</option>
								<option value="empal.com" >empal.c
								om</option>
								<option value="empas.com" >empas.com</option>
								<option value="freechal.com" >freechal.com</option>
								<option value="hanafos.com" >hanafos.com</option>
								<option value="hanmail.net" >hanmail.net</option>
								<option value="hotmail.com" >hotmail.com</option>
								<option value="intizen.com" >intizen.com</option>
								<option value="korea.com" >korea.com</option>
								<option value="kornet.net" >kornet.net</option>
								<option value="msn.co.kr" >msn.co.kr</option>
								<option value="nate.com" >nate.com</option>
								<option value="naver.com" >naver.com</option>
								<option value="netian.com" >netian.com</option>
								<option value="orgio.co.kr" >orgio.co.kr</option>
								<option value="paran.com" >paran.com</option>
								<option value="sayclub.com" >sayclub.com</option>
								<option value="yahoo.co.kr" >yahoo.co.kr</option>
								<option value="yahoo.com" >yahoo.com</option>
							</select>
							
							&nbsp;&nbsp;<input type="checkbox" name="emailAgree" value="Y"><span style="font-size: 15px">이메일 수신동의</span>
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" class="form-control" id="zipcode" name="zipcode" value="" class="join_input" style="width:200px;" placeholder="새 우편번호" readonly/>
							<button type="button" class="btn btn-light">
								<a href="javascript:;" title="새 창으로 열림" onclick="zipFind('zipFind', '<?=$_Common[bbs_path]?>member_zipcode_find.php', 590, 500, 0);" onkeypress="">우편번호검색</a>
							</button>
							<br/>
							<input type="text" class="form-control" id="addr1" name="addr1" value=""  class="join_input" style="width:550px; margin-top:5px;" /><br>
							<input type="text" class="form-control" id="addr2" name="addr2" value=""  class="join_input" style="width:550px; margin-top:5px;" />
						</td>
					</tr>
				</table>
					
				<div style="margin-left:44%;">
					<button type="submit" class="btn btn-info">확인</button>
						&nbsp;&nbsp;<button type="button" class="btn btn-danger" onclick="location.href='/silbomi/main';">취소</button>
				</div>
		</form>
		</div>
	</div>
<!-- 	<section class="ftco-section ftco-no-pb ftco-no-pt ftco-services bg-light"
     	 id="services-section" > 
         <div class="row no-gutters"> 
           <div class="col-md-2 ftco-animate py-5 nav-link-wrap" > 
             <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"  
             		aria-orientation="vertical" style="clear;"> 
               <a class="nav-link px-4 active" href="/silbomi/myPage/login"  
               	aria-selected="false"><span class="mr-3 flaticon-flasks"></span> 로그인</a> 
               <a class="nav-link px-4 active" href="/silbomi/myPage/myInfo"  
               	aria-selected="false"><span class="mr-3 flaticon-ideas"></span> 내 정보</a> 
               <a class="nav-link px-4 active" href="/silbomi/myPage/applyList"  
               	aria-selected="false"><span class="mr-3 flaticon-analysis"></span> 신청 내역 확인</a> 
               <a class="nav-link px-4 active" href="/silbomi/myPage/buyShareList"  
               	aria-selected="false"><span class="mr-3 flaticon-web-design"></span> 구매 및 나눔 내역</a> 
               <a class="nav-link px-4 active" href="/silbomi/myPage/silverInfo"  
               	aria-selected="false"><span class="mr-3 flaticon-ux-design"></span> 실버 모드 정보</a> 
             </div> 
           </div> 
          
          	<div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center"> 
 	          		<div class="tab-content" id="v-pills-tabContent"> 
 					<form class="form-inline" name="registFrm" onsubmit="return registFrmCheck();" style="width:100%; margin-left:15%;">	 
 							<h1 style="font-size:42px; margin-left:35.5%;">실보미 회원가입</h1> 
							
 							<br><br> 
							
 							<table class="table table-striped"> 
 								<colgroup> 
 									<col width="18%" /> 
 									<col width="*" /> 
 								</colgroup> 
 								<tr class=""> 
 									<th>이름</th> 
 									<td><input type="text" class="form-control" name="name" value="" class="join_input" style="width: 50%"/></td> 
 								</tr> 
  								<tr>  
  									<th>유형</th>  
  									<td>  
  										<div class="form-check-inline">  
  									      <label class="form-check-label" for="radio1">  
  									        <input type="radio" class="form-check-input" id="nomal" name="optradio" value="nomal" checked>일반 
  									      </label> 
  									    </div> 
  									    <div class="form-check-inline">  
  									      <label class="form-check-label" for="radio2">  
  									        <input type="radio" class="form-check-input" id="caregiver" name="optradio" value="caregiver">간병인  
  									      </label> 
  									    </div> 
  									    <div class="form-check-inline">  
  									      <label class="form-check-label">  
  									        <input type="radio" class="form-check-input" id="requester" name="optradio" value="requester">간병인 신청자  
  									      </label> 
  									    </div> 
  									</td> 
  								</tr> 
 								<tr> 
 									<th>아이디</th> 
 									<td> 
 										<input type="text" class="form-control" id="user_id" name="user_id" value="" style="width: 50%"/>&nbsp;&nbsp; 
 										<button class="btn btn-primary"> 
 											<a onclick="id_check_person();" style="cursor:hand;">중복 확인</a> 
 										</button> 
 											&nbsp;&nbsp;<span style="font-size: 12px">* 4자 이상 12자 이내로 입력해주세요</span> 
 									</td> 
 								</tr> 
 								<tr> 
 									<th>패스워드</th> 
 									<td><input type="password" class="form-control" id="pass" name="pass" value="" class="join_input" style="width: 50%"/>&nbsp;&nbsp;<span id=msg></span></td>  
 								</tr> 
 								<tr> 
 									<th>실버 아이디</th> 
 									<td> 
 										<input type="text" class="form-control" id="user_id" name="user_id" value="" class="" style="width: 50%"/>&nbsp;&nbsp; 
 										<button class="btn btn-primary"> 
 											<a onclick="id_check_person();" style="cursor:hand;">중복 확인</a> 
 										</button> 
 											&nbsp;&nbsp;<span style="font-size: 12px">* 4자 이상 12자 이내로 입력해주세요</span>	 
 									</td> 
 								</tr> 
 								<tr> 
 									<th>생년월일</th> 
 									<td><input type="text" class="form-control" id="pass" name="pass" value="" placeholder="숫자 8자리로 입력해주세요. (예: 19800101)" style="width: 50%"/></td>  
 								</tr> 
 								<tr> 
 									<th>성별</th> 
 									<td> 
 										<div class="form-check-inline"> 
 									      <label class="form-check-label" for="radio1"> 
 									        <input type="radio" class="form-check-input" id="male" name="optradio" value="male" checked>남성 
 									      </label> 
 									    </div> 
 									    <div class="form-check-inline"> 
 									      <label class="form-check-label" for="radio2"> 
 									        <input type="radio" class="form-check-input" id="female" name="optradio" value="female">여성 
 									      </label> 
 									    </div> 
 									</td> 
 								</tr> 
 								<tr> 
 									<th>전화번호</th> 
 									<td> 
 										<input type="text" class="form-control" name="tel1" value="" maxlength="3" class="join_input" style="width: 50%;" placeholder="숫자로만 입력해주세요. (예: 01012345678)"/> 
 									</td> 
 								</tr> 
 								<tr> 
 									<th>이메일</th> 
 									<td> 
 										<input type="text" class="form-control" name="email_1" style="height:20px; border:solid 1px #dadada;" value="" /> @  
  										<input type="text" class="form-control" id="email_2" name="email_2" style="height:20px;border:solid 1px #dadada;" value=""/> &nbsp;&nbsp; --
 										<select class="form-control" name="domain" onChange="email_input(this.form, this);" id="domain" style="width:50%; height:50px; font-size: 16px;" > 
 											<option selected="" value="" readonly>선택해주세요</option> 
 											<option value="user_input" >직접입력</option> 
 											<option value="dreamwiz.com" >dreamwiz.com</option> 
 											<option value="empal.com" >empal.com</option> 
 											<option value="empas.com" >empas.com</option> 
 											<option value="freechal.com" >freechal.com</option> 
 											<option value="hanafos.com" >hanafos.com</option> 
 											<option value="hanmail.net" >hanmail.net</option> 
 											<option value="hotmail.com" >hotmail.com</option> 
 											<option value="intizen.com" >intizen.com</option> 
 											<option value="korea.com" >korea.com</option> 
 											<option value="kornet.net" >kornet.net</option> 
 											<option value="msn.co.kr" >msn.co.kr</option> 
 											<option value="nate.com" >nate.com</option> 
 											<option value="naver.com" >naver.com</option> 
 											<option value="netian.com" >netian.com</option> 
 											<option value="orgio.co.kr" >orgio.co.kr</option> 
 											<option value="paran.com" >paran.com</option> 
 											<option value="sayclub.com" >sayclub.com</option> 
 											<option value="yahoo.co.kr" >yahoo.co.kr</option> 
 											<option value="yahoo.com" >yahoo.com</option> 
 										</select> 
										
 										&nbsp;&nbsp;<input type="checkbox" name="open_email" value="Y"><span style="font-size: 15px">이메일 수신동의</span> 
 									</td> 
 								</tr> 
 								<tr> 
 									<th>주소</th> 
 									<td> 
 										<input type="text" class="form-control" id="zipcode" name="zipcode" value="" class="join_input" style="width:200px;" placeholder="새 우편번호" readonly/> 
 										<button type="button" class="btn btn-light"> 
<%-- 											<a href="javascript:;" title="새 창으로 열림" onclick="zipFind('zipFind', '<?=$_Common[bbs_path]?>member_zipcode_find.php', 590, 500, 0);" onkeypress="">우편번호검색</a> --%>
 										</button> 
 										<br/> 
 										<input type="text" class="form-control" id="addr1" name="addr1" value=""  class="join_input" style="width:550px; margin-top:5px;" /><br> 
 										<input type="text" class="form-control" id="addr2" name="addr2" value=""  class="join_input" style="width:550px; margin-top:5px;" /> 
 									</td> 
 								</tr> 
 							</table> 
								
 							<div style="margin-left:44%;"> 
 								<button type="submit" class="btn btn-info">확인</button> 
 									&nbsp;&nbsp;<button type="button" class="btn btn-danger" onclick="location.href='/silbomi/main';">취소</button> 
 							</div> 
					
 					</form> 
 	          		</div> 
 	          	</div> 
 	        </div> 
     </section> 

-->
	
<div style="height:200px"></div>   
    
	<%@ include file="../main/include/footer.jsp" %>

  </body>
</html>