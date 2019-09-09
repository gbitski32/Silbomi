<%@page import="com.team.silbomi.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../jquery/jquery-3.4.1.js"></script>
<!--  
▶ 내 정보
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

//다음 api
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

//수신동의 checked 확인
$(function() {
	$('input:checkbox[id="smsAgree"]').each(function() {
		if(this.value=="Y"){
			this.checked = true;
		}
		else {
			this.checked = false;
		}
	});
	$('input:checkbox[id="emailAgree"]').each(function() {
		if(this.value=="Y"){
			this.checked = true;
		}
		else {
			this.checked = false;
		}
	});
});


$(function() {
	$('#btnModify').click(function() {
		//패스워드 체크 확인
		if(confirm('수정하시겠습니까?')) {
			document.modifyFrm.action = "${path}/myPage/modify"
			document.modifyFrm.submit();
		}
	});
});
</script>
	  
  	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
   	<%@ include file="../main/include/nav.jsp" %>
	  

		
	<div style="margin-top:80px;" style="border:1px solid black;"></div>
	
	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width:100%; height:200px;" />
	</div>
	<section class="ftco-section ftco-no-pb ftco-no-pt ftco-services bg-light" id="services-section" >
        <div class="row no-gutters">
          <div class="col-md-2 ftco-animate py-5 nav-link-wrap" style="height: 800px;" >
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical" style="">
<!-- 				<a class="nav-link px-4 active" href="/silbomi/login/login" aria-selected="false"> -->
<!-- 					<span class="mr-3 flaticon-flasks"></span>로그인</a>  -->
				<a class="nav-link px-4 active" href="/silbomi/myPage/myInfo" aria-selected="false">
					<span class="mr-3 flaticon-ideas"></span> 내 정보</a> 
				<a class="nav-link px-4 active" href="/silbomi/myPage/applyList" aria-selected="false">
				<span class="mr-3 flaticon-analysis"></span> 신청 내역</a> 
				<a class="nav-link px-4 active" href="/silbomi/myPage/buyShareList" aria-selected="false">
					<span class="mr-3 flaticon-web-design"></span> 구매 및 나눔 내역</a> 
				<a class="nav-link px-4 active" href="/silbomi/myPage/silverInfo" aria-selected="false">
					<span class="mr-3 flaticon-ux-design"></span> 실버 모드 정보</a>
			</div>
          </div>
         	<div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center">
	          		<div class="tab-content" id="v-pills-tabContent" style="margin-top: 40px">
					<form class="form-inline" name="modifyFrm" style="width:100%; margin-left:15%;">	
						<h3 style="width: 90%; color: gray; margin-bottom: 20px;"
							align="center">내 정보</h3>
							
						<br><br>
						
						<table class="table table-striped">
							<colgroup>
								<col width="18%" />
								<col width="*" />
							</colgroup>
							<tr class="">
								<th>이름</th>
								<td>
									<input type="text" class="form-control" name="name" value="${myInfo.user_name}" class="join_input" style="width: 50%" readonly="readonly"/>
									&nbsp;&nbsp;
									<span style="font-size: 12px;">이름 변경은 고객센터에 문의해주세요.</span>
								</td>
							</tr>
							<tr>
								<th>아이디</th>
								<td>
									<input type="text" class="form-control" id="user_id" name="user_id" value="${myInfo.user_id }" style="width: 50%" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" class="form-control" id="pass" name="pass" value="${myInfo.user_pw }" class="join_input" style="width: 50%"/>&nbsp;&nbsp;<span id=msg></span></td> 
							</tr>
							<tr>
								<th>실버 아이디</th>
								<td>
									<input type="text" class="form-control" id="silver_id" name="silver_id" value="${myInfo.silver_id }" class="" style="width: 50%" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td><input type="text" class="form-control" id="birth" name="birth" value="${myInfo.birth }" maxlength="8"
									placeholder="숫자 8자리로 입력해주세요. (예: 19800101)" style="width: 50%" onkeypress="isNumber();"/></td> 
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<c:if test="${myInfo.gender eq 'M' }">
									<div class="form-check-inline">
										<label class="form-check-label" for="radio1">
											<input type="radio" class="form-check-input" id="gender_M" name="gender" value="M" checked />남성
										</label>
									</div>
						      		<div class="form-check-inline">
										<label class="form-check-label" for="radio2">
											<input type="radio" class="form-check-input" id="gender_W" name="gender" value="W" />여성
								      	</label>
								    </div>
									</c:if>
									<c:if test="${myInfo.gender eq 'W' }">
									<div class="form-check-inline">
										<label class="form-check-label" for="radio1">
											<input type="radio" class="form-check-input" id="gender_M" name="gender" value="M" />남성
										</label>
									</div>
						      		<div class="form-check-inline">
										<label class="form-check-label" for="radio2">
											<input type="radio" class="form-check-input" id="gender_W" name="gender" value="W" checked/>여성
								      	</label>
								    </div>
									</c:if>
								</td>
							</tr>
							<tr>
								<th>전화번호(선택)</th>
								<td>
									<input type="text" class="form-control" name="tel" id="tel" value="${myInfo.tel }" maxlength="11" 
										class="join_input" style="width: 50%;" placeholder="숫자로만 입력해주세요. (예: 01012345678)" onkeypress="isNumber();"/>
								</td>
							</tr>
							<tr>
								<th>전화번호(필수)</th>
								<td>
									<input type="text" class="form-control" name="mobile" id="mobile" value="${myInfo.mobile }" maxlength="11" 
										class="join_input" style="width: 50%;" placeholder="숫자로만 입력해주세요. (예: 01012345678)" onkeypress="isNumber();"/>
										&nbsp;&nbsp;
										<input type="checkbox" id="smsAgree" name="smsAgree" value="Y"><span style="font-size: 15px"> SMS 수신동의</span>
								</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" class="form-control" name="email_1" style="height:20px; border:solid 1px #dadada;" value="${myInfo.email_id }" /> @ 
									<c:if test="${not empty myInfo.email_domain}" >
									   <select class="form-control" name="email_domain" onChange="email_input(this.form, this);" id="email_domain" style="width:40%; height:50px; font-size: 16px;" >
									      <c:forEach var="email_domain" items="${myInfo.email_domain}" varStatus="i">
									         <option value="${myInfo.email_domain}">${myInfo.email_domain}</option>
									      </c:forEach>
									   </select>
									</c:if>
									&nbsp;&nbsp;<input type="checkbox" id="emailAgree" name="emailAgree" value="Y"><span style="font-size: 15px"> 이메일 수신동의</span>
								</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>
									<input type="text" class="form-control" id="zipcode" name="zipcode" value="${myInfo.zipcode }" class="join_input" style="width:200px;" placeholder="새 우편번호" readonly/>
									<button type="button" class="btn btn-light">
										<a href="javascript:;" title="새 창으로 열림" onclick="zipFind('zipFind', '<?=$_Common[bbs_path]?>member_zipcode_find.php', 590, 500, 0);" onkeypress="">우편번호검색</a>
									</button>
									<br/>
									<input type="text" class="form-control" id="addr1" name="addr1" value="${myInfo.addr1 }"  class="join_input" style="width:550px; margin-top:5px;" /><br>
									<input type="text" class="form-control" id="addr2" name="addr2" value="${myInfo.addr2 }"  class="join_input" style="width:550px; margin-top:5px;" />
								</td>
							</tr>
						</table>
								
						<div style="margin-left:44%;">
							<button type="submit" id="btnModify" name="btnModify" class="btn btn-warning">수정하기</button>
								&nbsp;&nbsp;<button type="button" class="btn btn-danger" onclick="location.href='/silbomi/main';">취소</button>
						</div>
					
					</form>
	          		</div>
	          	</div>
	        </div>
    </section>
	
	
	
	
	
<div style="height:200px"></div>   
    
	<%@ include file="../main/include/footer.jsp" %>

  </body>
</html>