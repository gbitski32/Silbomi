<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<!--  
▶ 신청 내역 확인
1. 매핑 완료
2. 레이아웃 잡기 
-->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@ include file="../main/include/headAndMeta.jsp"%>


<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<%@ include file="../main/include/nav.jsp"%>


	<div style="margin-top: 80px;" style="border:1px solid black;"></div>

	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt=""
			style="width: 100%; height: 200px;" />
	</div>
	<section
		class="ftco-section ftco-no-pb ftco-no-pt ftco-services bg-light"
		id="services-section">
		<div class="row no-gutters">
			<div class="col-md-2 ftco-animate py-5 nav-link-wrap" style="height: 800px;">
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

			<div
				class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center"
				style="width: 100%; height: 100%; margin-left: 8%; margin-top: 50px;">
				<div id="accordion" style="width: 100%">
					<form action="">
						<h3 style="width: 90%; color: gray; margin-bottom: 20px;"
							align="center">신청 내역</h3>
						<table class="table table-hover">
							<thead>
								<tr align="center;">
									<th style="width: 5%">NO</th>
									<th style="width: 25%">제목</th>
									<th style="width: 50%">내용</th>
									<th style="width: 20%">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="lists">
									<tr>
										<td>${lists.idx}</td>
										<td><a href="/myPage/view?idx=${lists.idx}">${lists.title}</a>
										</td>
										<td>${lists.contents}</td>
										<td><fmt:formatDate value="${lists.regidate}"
												pattern="yyyy-MM-dd" /></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div align="center" id="page" name="page"
							style="margin-top: 40px; margin-right: 70px;">
							<button type="button" class="btn btn-outline-secondary">
								<<</button>
							<button type="button" class="btn btn-outline-secondary">
								<</button>
							<button type="button" class="btn btn-outline-secondary">
								1</button>
							<button type="button" class="btn btn-outline-secondary">
								2</button>
							<button type="button" class="btn btn-outline-secondary">
								3</button>
							<button type="button" class="btn btn-outline-secondary">
								></button>
							<button type="button" class="btn btn-outline-secondary">
								>></button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>

	<div style="margin-top: 60px;" style="border:1px solid black;"></div>

	<%@ include file="../main/include/footer.jsp"%>

</body>
</html>