<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target"
	id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="/silbomi/main">SIL<span>보미</span></a>
		<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle"
			type="button" data-toggle="collapse" data-target="#ftco-nav"
			aria-controls="ftco-nav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="oi oi-menu"></span> Menu
		</button>

		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav nav ml-auto">


				<!-- <li class="nav-item dropwdown">
          		<a href="./main.jsp" class="nav-link"><span>Home</span></a></li> -->

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						사이트소개 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/silbomi/main/execute">사업 설명 및
							개요</a> <a class="dropdown-item" href="/silbomi/main/execute">앱소개
							및 설명</a> <a class="dropdown-item" href="/silbomi/main/execute">사이트
							기능 설명</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						시설정보 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/silbomi/main/execute">요양원 정보</a> <a
							class="dropdown-item" href="/silbomi/main/execute">병원 정보</a> <a
							class="dropdown-item" href="/silbomi/main/execute">약국 정보</a> <a
							class="dropdown-item" href="/silbomi/main/execute">실버타운 정보</a> <a
							class="dropdown-item" href="/silbomi/main/execute">봉사단체 리스트?</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						알림마당 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/silbomi/main/execute">공지사항</a> <a
							class="dropdown-item" href="/silbomi/main/execute">복지뉴스</a> <a
							class="dropdown-item" href="/silbomi/main/execute">관련의학 정보</a> <a
							class="dropdown-item" href="/silbomi/main/execute">같이가면좋은
							문화생활</a> <a class="dropdown-item" href="/silbomi/main/execute">연관사이트</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						알뜰장터 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/silbomi/market/list">상품판매리스트</a> <a
							class="dropdown-item" href="/silbomi/market/register">상품등록</a> <a
							class="dropdown-item" href="/silbomi/main/execute">무료상품나눔</a> <a
							class="dropdown-item" href="/silbomi/market/views">노인들이만든 상품
							경매</a>
					</div></li>
				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown_1" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						커뮤니티 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
						<a class="dropdown-item" href="/silbomi/main/execute">좋은정보
							공유게시판</a> <a class="dropdown-item" href="/silbomi/main/execute">미담
							사례 혹은 인증샷 갤러리</a> <a class="dropdown-item"
							href="/silbomi/main/execute">간병인 모집</a> <a class="dropdown-item"
							href="/silbomi/main/execute">간병인 신청</a> <a class="dropdown-item"
							href="/silbomi/main/execute">사연 제보</a> <a class="dropdown-item"
							href="/silbomi/main/execute">다른사이트의 간병인들</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown_1" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						고객센터 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
						<a class="dropdown-item" href="blog.html">불편사항</a> <a
							class="dropdown-item" href="/silbomi/main/execute">신고하기</a> <a
							class="dropdown-item" href="/silbomi/main/execute">Q&A</a> <a
							class="dropdown-item" href="/silbomi/main/execute">자주묻는 질문</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link navis"
					href="blog.html" id="navbarDropdown_1" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						마이페이지 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown_1">

						<c:choose>
							<c:when test="${empty member }">
								<a class="dropdown-item" href="/silbomi/login/login">로그인</a>
							</c:when>
							<c:otherwise>
								<a class="dropdown-item" href="/silbomi/login/logout">로그아웃</a>
							</c:otherwise>
						</c:choose>
						<a class="dropdown-item" href="/silbomi/myPage/myInfo">내 정보</a> <a
							class="dropdown-item" href="/silbomi/myPage/applyList">신청 내역</a>
						<a class="dropdown-item" href="/silbomi/myPage/buyShareList">구매
							및 나눔 내역</a> <a class="dropdown-item"
							href="/silbomi/myPage/silverInfo">실버모드 정보</a>
					</div></li>


				<!-- <li class="nav-item"><a href="./contact.jsp" class="nav-link"><span>Contact</span></a></li>
         -->

			</ul>
		</div>

	</div>
</nav>
=======

    
 <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="/silbomi/main">SIL<span>보미</span></a>
      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      
      
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav nav ml-auto">
        
        
          <!-- <li class="nav-item dropwdown">
          		<a href="./main.jsp" class="nav-link"><span>Home</span></a></li> -->
		
		  <li class="nav-item dropdown" >
            <a class="nav-link navis" href="blog.html" id="navbarDropdown" 
                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	사이트소개
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/silbomi/main/execute">사업 설명 및 개요</a>
                <a class="dropdown-item" href="/silbomi/main/execute">앱소개 및 설명</a>
                <a class="dropdown-item" href="/silbomi/main/execute">사이트 기능 설명</a>
            </div>
        </li>

		  <li class="nav-item dropdown">
               <a class="nav-link navis" href="blog.html" id="navbarDropdown"
                   role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   	시설정보
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                   <a class="dropdown-item" href="/silbomi/main/execute">요양원 정보</a>
                   <a class="dropdown-item" href="/silbomi/main/execute">병원 정보</a>
                   <a class="dropdown-item" href="/silbomi/main/execute">약국 정보</a>
                   <a class="dropdown-item" href="/silbomi/main/execute">실버타운 정보</a>
                   <a class="dropdown-item" href="/silbomi/main/execute">봉사단체 리스트?</a>
               </div>
           </li>

	      <li class="nav-item dropdown">
                  <a class="nav-link navis" href="blog.html" id="navbarDropdown"
                      role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           			알림마당
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="/silbomi/main/execute">공지사항</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">복지뉴스</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">관련의학 정보</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">같이가면좋은 문화생활</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">연관사이트</a>
                  </div>
              </li>

              <li class="nav-item dropdown">
                  <a class="nav-link navis" href="blog.html" id="navbarDropdown"
                      role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					알뜰장터
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="/silbomi/market/list">상품판매리스트</a>
                      <a class="dropdown-item" href="/silbomi/market/register">상품등록</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">무료상품나눔</a>
                      <a class="dropdown-item" href="/silbomi/market/views">노인들이만든 상품 경매</a>
                  </div> 
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link navis" href="blog.html" id="navbarDropdown_1"
                      role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					커뮤니티
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                      <a class="dropdown-item" href="/silbomi/main/execute">좋은정보 공유게시판</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">미담 사례 혹은 인증샷 갤러리</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">간병인 모집</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">간병인 신청</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">사연 제보</a>
						<a class="dropdown-item" href="/silbomi/main/execute">다른사이트의 간병인들</a>
                  </div>
              </li>

              <li class="nav-item dropdown">
                  <a class="nav-link navis" href="blog.html" id="navbarDropdown_1"
                      role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					고객센터
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                      <a class="dropdown-item" href="blog.html">불편사항</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">신고하기</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">Q&A</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">자주묻는 질문</a>
                  </div>
              </li>
              
              <li class="nav-item dropdown">
                  <a class="nav-link navis" href="blog.html" id="navbarDropdown_1"
                      role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					마이페이지
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                      <a class="dropdown-item" href="blog.html">없을때는 로그인이나 회원가입</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">내정보(수정,내게시물)</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">신청 내역 확인</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">구매 및 나눔 내역</a>
                      <a class="dropdown-item" href="/silbomi/main/execute">노인모드Gps 및 정보</a>
                  </div>
              </li>
		  
			
          <!-- <li class="nav-item"><a href="./contact.jsp" class="nav-link"><span>Contact</span></a></li>
         -->
        
        </ul>
      </div>
      
    </div>
  </nav>   
>>>>>>> refs/remotes/origin/master
