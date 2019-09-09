<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<!--  
▶ 회원 타입
1. 매핑 완료
2. 레이아웃 잡기 
-->
<style>
	button {
		width: 50%;
		height: 100px;
	}

</style>

<%@ include file="../main/include/headAndMeta.jsp"%>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


	<%@ include file="../main/include/nav.jsp"%>


	<div style="margin-top: 80px;" style="border:1px solid black;"></div>

	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width: 100%; height: 200px;" />
	</div>
	<div class="container">
		<div align="center">
			<table class="table" style="width: 100%; height: 80%; margin-top: 45px;" >
				<tr style="height: 30%;"> 
					<td colspan="2" style="text-align: center; font-size: 30px; color: gray;">
						실보미 회원 유형
					</td>
				</tr>
				<tr>
					<td style="width:50%;" align="center" >
						<button type="button" class="btn btn-outline-primary" style="font-size: 28px;" onclick="location.href='./accountAgree?user_type=0';">일반</button>
						<br /><br />
						<button type="button" class="btn btn-outline-success" style="font-size: 28px;" onclick="location.href='./accountAgree?user_type=1';">간병인</button>	
						<br /><br />
						<button type="button" class="btn btn-outline-danger" style="font-size: 28px;" onclick="location.href='./accountAgree?user_type=2';">간병인 신청자</button>	
<!-- 						<button type="button" class="btn btn-outline-primary" style="font-size: 28px;" onclick="location.href='./accountAgree?type=basic';">일반</button> -->
<!-- 						<br /><br /> -->
<!-- 						<button type="button" class="btn btn-outline-success" style="font-size: 28px;" onclick="location.href='./accountAgree?type=caregiver';">간병인</button>	 -->
<!-- 						<br /><br /> -->
<!-- 						<button type="button" class="btn btn-outline-danger" style="font-size: 28px;" onclick="location.href='./accountAgree?type=requester';">간병인 신청자</button>	 -->
					</td>
					<td style="width:50%; padding-top: 13%" align="center" >
						<button type="button" class="btn btn-outline-secondary" style="font-size: 28px;" onclick="location.href='./accountAgree?user_type=3';">실버</button>	
<!-- 						<button type="button" class="btn btn-outline-secondary" style="font-size: 28px;" onclick="location.href='./accountAgree?user_type=silver';">실버</button>	 -->
					</td>
				</tr>
			</table>
		</div>
	</div>
<!-- 	<section class="ftco-section ftco-no-pb ftco-no-pt ftco-services bg-light" id="services-section"> -->
<!-- 		<div class="row no-gutters" style="width: 100%"> -->
<!-- 			<div class="col-md-2 ftco-animate py-5 nav-link-wrap" > -->
<!-- 	            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"  -->
<!-- 	            		aria-orientation="vertical" style="clear;"> -->
<!-- 	              <a class="nav-link px-4 active" href="/silbomi/myPage/login"  -->
<!-- 	              	aria-selected="false"><span class="mr-3 flaticon-flasks"></span> 로그인</a> -->
<!-- 	              <a class="nav-link px-4 active" href="/silbomi/myPage/myInfo"  -->
<!-- 	              	aria-selected="false"><span class="mr-3 flaticon-ideas"></span> 내 정보</a> -->
<!-- 	              <a class="nav-link px-4 active" href="/silbomi/myPage/applyList"  -->
<!-- 	              	aria-selected="false"><span class="mr-3 flaticon-analysis"></span> 신청 내역 확인</a> -->
<!-- 	              <a class="nav-link px-4 active" href="/silbomi/myPage/buyShareList"  -->
<!-- 	              	aria-selected="false"><span class="mr-3 flaticon-web-design"></span> 구매 및 나눔 내역</a> -->
<!-- 	              <a class="nav-link px-4 active" href="/silbomi/myPage/silverInfo"  -->
<!-- 	              	aria-selected="false"><span class="mr-3 flaticon-ux-design"></span> 실버 모드 정보</a> -->
<!-- 	            </div> -->
<!--        		</div> -->
<!-- 			<div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center" style="width: 100%; margin-left: 8%;"> -->
<!-- 				<table class="table" style="width: 100%; height: 80%"> -->
<!-- 					<tr style="height: 30%;"> -->
<!-- 						<td colspan="2" style="text-align: center; font-size: 30px; color: gray;"> -->
<!-- 							실보미 회원 유형 -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td style="width:50%;" align="center" > -->
<!-- 							<button type="button" class="btn btn-outline-primary" style="font-size: 28px;" onclick="location.href='./accountAgree?type=basic';">일반</button> -->
<!-- 							<br /><br /> -->
<!-- 							<button type="button" class="btn btn-outline-success" style="font-size: 28px;" onclick="location.href='./accountAgree?type=caregiver';">간병인</button>	 -->
<!-- 							<br /><br /> -->
<!-- 							<button type="button" class="btn btn-outline-danger" style="font-size: 28px;" onclick="location.href='./accountAgree?type=requester';">간병인 신청자</button>	 -->
<!-- 						</td> -->
<!-- 						<td style="width:50%; padding-top: 15%" align="center" > -->
<!-- 							<button type="button" class="btn btn-outline-secondary" style="font-size: 28px;" onclick="location.href='./accountAgree?type=silver';">실버</button>	 -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 				</table> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->

	<%@ include file="../main/include/footer.jsp"%>
</body>
</html>