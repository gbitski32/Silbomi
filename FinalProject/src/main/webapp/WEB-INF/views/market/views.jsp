<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="../main/include/headAndMeta.jsp"%>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<%@ include file="../main/include/nav.jsp"%>


	<div style="margin-top: 80px;" style="border:1px solid black;"></div>

	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt=""
			style="width: 100%; height: 200px;" />
	</div>



	<div class="container" style="margin-top: 50px;">

		<div align="center">
			<h1 style="font-size: 42px;">상품들 상세보기 페이지 입니다.</h1>

			<div style="">
				
				<form action="#" class="search-form">
					<div class="form-group" style="width:70%;">
						<span class="icon icon-search"></span> <input type="text"
							class="form-control" placeholder="Type a keyword and hit enter">
					</div>
				</form>
			</div>	
		<br>
		<br>


	<section class="appointment-area area-padding-top">
		<div class="container">

			<div class="appointment-inner">
				<div style="text-align:right; width:92%; ">
					<p onclick="alert('아이디');">유저아이디</p>
				</div>
				<div style="padding-bottom:40px;border-bottom: 5px ridge #E8EDF4; text-align:left;
						padding-left: 40px; margin-bottom:40px;">
					<h2>
						<i class="fa fa-shopping-bag"></i>
						  상품제목(겁나게 길게 써있는거 주욱주욱 써있따)
					</h2>
				</div>
				<div class="row">
					<div class="col-lg-6" style="">
						<h3>아주 끝내주는 상품입니다</h3>
						<br>

						<img src="/silbomi/resources/green/images/doctor/gun1.jpg"
							alt="" width="400" /> <br>
						<h5>요것은 총이여 ㅋㅋㅋ</h5>
						<div style="">
							<h2 style="color:green; margin-top:50px;">￦20,000</h2>
						</div>
					</div>


					<div class="col-sm-12 col-lg-4 offset-lg-1" style="">
						<h3>Have Some Questions?</h3>
						<div class="accordion" id="accordionExample">

							<div class="card">
								<div class="card-header" id="headingOne">
									<h5 class="mb-0">
										<button class="btn btn-link" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
												이거 가격 말해줄게 ㅡㅡ	
										</button>

									</h5>
								</div>

								<div id="collapseOne" class="collapse show"
									aria-labelledby="headingOne" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											Moving creepeth moved upon man grass two days?</button>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse"
									aria-labelledby="headingTwo" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingThree">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											God male gathering them it female which green cattle?</button>
									</h5>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree"
									data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingFour">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseFour"
											aria-expanded="false" aria-controls="collapseFour">
											Saw isn't likeness beginning yielding land days she?</button>
									</h5>
								</div>
								<div id="collapseFour" class="collapse"
									aria-labelledby="headingFour" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingFive">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseFive"
											aria-expanded="false" aria-controls="collapseFive">
											Saw isn't likeness beginning yielding land days she?</button>
									</h5>
								</div>
								<div id="collapseFive" class="collapse"
									aria-labelledby="headingFive" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			

		<div style="border-top: 5px ridge #E8EDF4;  text-align:left; padding-top:20px;
					border-bottom:2px solid #28A745; padding-bottom:4px;
						padding-left: 20px; margin-top:100px; margin-bottom:40px;">
			<a href="#detail"><button type="button" class="btn btn-outline-success"
				style="width:200px; height:50px; margin-right:10px;" >
					상품설명</button></a><!-- 버튼들 jquery로 내용띄워주는것과 active or visited 효과 주기 -->
			<a href="#comment"><button type="button"  class="btn btn-success" 
				style="width:200px; height:50px;" >
					댓글보기</button></a>
		</div>


			<!-- 상품 상세 영역 -->

			<div class="col-lg-8 ftco-animate" id="detail">
				<h2 class="mb-3">상품 상세 영역입니다ㅇㅇ</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Reiciendis, eius mollitia suscipit, quisquam doloremque
						distinctio perferendis et doloribus unde architecto optio
						laboriosam porro adipisci sapiente officiis nemo accusamus ad
						praesentium? Esse minima nisi et. Dolore perferendis, enim
						praesentium omnis, iste doloremque quia officia optio deserunt
						molestiae voluptates soluta architecto tempora.</p>
					<p>
						<img src="/resources/green/images/image_3.jpg" alt="써도되고안써도되고" 
							class="img-fluid">
					</p>
					<p>Molestiae cupiditate inventore animi, maxime sapiente
						optio, illo est nemo veritatis repellat sunt doloribus nesciunt!
						Minima laborum magni reiciendis qui voluptate quisquam voluptatem
						soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi
						deleniti tenetur dolore amet fugit perspiciatis ipsa, odit.
						Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
						
				<h2 class="mb-3 mt-5">이상품은 어떤거야 ~~~~~~</h2>
				
					<p>Temporibus ad error suscipit exercitationem hic molestiae
						totam obcaecati rerum, eius aut, in. Exercitationem atque quidem
						tempora maiores ex architecto voluptatum aut officia doloremque.
						Error dolore voluptas, omnis molestias odio dignissimos culpa ex
						earum nisi consequatur quos odit quasi repellat qui officiis
						reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
					<p>
						<img src="/silbomi/resources/green/images/image_4.jpg" alt="" class="img-fluid">
					</p>
					<p>Quisquam esse aliquam fuga distinctio, quidem delectus
						veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde
						aut non tenetur tempore, nisi culpa voluptate maiores officiis
						quis vel ab consectetur suscipit veritatis nulla quos quia
						aspernatur perferendis, libero sint. Error, velit, porro.
						Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
					<p>Odit voluptatibus, eveniet vel nihil cum ullam dolores
						laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga
						iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis
						porro explicabo soluta commodi libero voluptatem similique id
						quidem? Blanditiis voluptates aperiam non magni. Reprehenderit
						nobis odit inventore, quia laboriosam harum excepturi ea.</p>
					<p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime
						ullam ipsam quidem, dolor distinctio similique asperiores
						voluptas enim, exercitationem ratione aut adipisci modi quod
						quibusdam iusto, voluptates beatae iure nemo itaque laborum.
						Consequuntur et pariatur totam fuga eligendi vero dolorum
						provident. Voluptatibus, veritatis. Beatae numquam nam ab
						voluptatibus culpa, tenetur recusandae!</p>
					<p>Voluptas dolores dignissimos dolorum temporibus, autem
						aliquam ducimus at officia adipisci quasi nemo a perspiciatis
						provident magni laboriosam repudiandae iure iusto commodi debitis
						est blanditiis alias laborum sint dolore. Dolores, iure,
						reprehenderit. Error provident, pariatur cupiditate soluta
						doloremque aut ratione. Harum voluptates mollitia illo minus
						praesentium, rerum ipsa debitis, inventore?</p>
				<div class="tag-widget post-tag-container mb-5 mt-5">
					<div class="tagcloud">
						<a href="#" class="tag-cloud-link">Life</a> <a href="#"
							class="tag-cloud-link">Sport</a> <a href="#"
							class="tag-cloud-link">Tech</a> <a href="#"
							class="tag-cloud-link">Travel</a>
					</div>
				</div>


			</div>
			
		<!-- 댓글시작임 -->			
		<div class="container" style="text-align:left; padding:20px; width:80%;">
			<h3 class="mb-5">6 Comments</h3>
			<ul class="comment-list">
				<li class="comment">
					<div class="vcard bio">
						<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
					</div>
					<div class="comment-body">
						<h3>John Doe</h3>
						<div class="meta">October 03, 2018 at 2:21pm</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing
							elit. Pariatur quidem laborum necessitatibus, ipsam impedit
							vitae autem, eum officia, fugiat saepe enim sapiente iste
							iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
						<p>
							<a href="#" class="reply">Reply</a>
						</p>
					</div>
				</li>

				<li class="comment">
					<div class="vcard bio">
						<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
					</div>
					<div class="comment-body">
						<h3>John Doe</h3>
						<div class="meta">October 03, 2018 at 2:21pm</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing
							elit. Pariatur quidem laborum necessitatibus, ipsam impedit
							vitae autem, eum officia, fugiat saepe enim sapiente iste
							iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
						<p>
							<a href="#" class="reply">Reply</a>
						</p>
					</div>

					<ul class="children">
						<li class="comment">
							<div class="vcard bio">
								<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>John Doe</h3>
								<div class="meta">October 03, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing
									elit. Pariatur quidem laborum necessitatibus, ipsam impedit
									vitae autem, eum officia, fugiat saepe enim sapiente iste
									iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>


							<ul class="children">
								<li class="comment">
									<div class="vcard bio">
										<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">October 03, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Pariatur quidem laborum necessitatibus, ipsam
											impedit vitae autem, eum officia, fugiat saepe enim
											sapiente iste iure! Quam voluptas earum impedit
											necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>

								</li>
							</ul>
						</li>
					</ul>
				</li>

					<li class="comment">
						<div class="vcard bio">
							<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
						</div>
						<div class="comment-body">
							<h3>John Doe</h3>
							<div class="meta">October 03, 2018 at 2:21pm</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing
								elit. Pariatur quidem laborum necessitatibus, ipsam impedit
								vitae autem, eum officia, fugiat saepe enim sapiente iste
								iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
							<p>
								<a href="#" class="reply">Reply</a>
							</p>
						</div>
					</li>
				</ul>
				<!-- END comment-list -->
	
				<div class="comment-form-wrap pt-5">
					<h3 class="mb-5">Leave a comment</h3>
					<form action="#" class="p-5 bg-light">
						<div class="form-group">
							<label for="name">Name *</label>
								<input type="text"
									class="form-control" id="name">
						</div>
						<div class="form-group">
							<label for="email">Email *</label> 
								<input type="email"
									class="form-control" id="email">
						</div>
	
						<div class="form-group">
							<label for="message">Message</label>
								<textarea name="" id="message" cols="30" rows="10"
									class="form-control"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Post Comment"
								class="btn py-3 px-4 btn-primary">
						</div>

					</form>
				</div>
			</div>	
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="../main/include/headAndMeta.jsp"%>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<%@ include file="../main/include/nav.jsp"%>


	<div style="margin-top: 80px;" style="border:1px solid black;"></div>

	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt=""
			style="width: 100%; height: 200px;" />
	</div>

<script>
	function deleteGoods() {
		if(confirm('�젙留먮줈 �궘�젣�븯�떆寃좎뒿�땲源�?')) {
			
			$.ajax({
				url : "./deleteGoods",
				type : "get",
				data : {
					idx : ${param.idx}
				},
				dataType : "text",
				success : function(d) {
 					if(d == "true") {
						alert('�궘�젣�릺�뿀�뒿�땲�떎');	
						location.href='./list';
					}else {
						alert('�젒洹쇳븷�닔 �뾾�뒗 �슂泥��엯�땲�떎');
					} 
				},
				error : function(e) {
					alert('�궘�젣�뿉 �떎�뙣�븯�뀲�뒿�땲�떎.');
					alert("�슂泥��떎�뙣 : " + e.status + ":" + e.statusText);
				}
				
			});
		}
	}
</script>

	<div class="container" style="margin-top: 50px;">

		<div align="center">
			<h1 style="font-size: 42px;">�긽�뭹�뱾 �긽�꽭蹂닿린 �럹�씠吏� �엯�땲�떎.</h1>

			<div style="">
				<div style="text-align:right; margin-bottom:20px;">
					<button type="button" class="btn btn-outline-danger"
						onclick="deleteGoods();">寃뚯떆臾� �궘�젣</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-primary" 
						onclick="location.href='./list?';">紐⑸줉�쑝濡�</button>
				</div>
				<form action="#" class="search-form">
					<div class="form-group" style="width:70%;">
						<span class="icon icon-search"></span> <input type="text"
							class="form-control" placeholder="Type a keyword and hit enter">
					</div>
				</form>
			</div>	
		<br>
		<br>


	<section class="appointment-area area-padding-top">
		<div class="container">
			<div class="appointment-inner">	
			
				<div style="text-align:right; width:92%; ">
					<span style="font-size:20px;" onclick="alert('�븘�씠�뵒');">
						${vo.goodsWriter }</span>
				</div>
				<div style="padding-bottom:20px;border-bottom: 5px ridge #E8EDF4; text-align:left;
						padding-left: 40px; margin-bottom:40px;">
					<h2>
						<i class="fa fa-shopping-bag"></i>
						  	${vo.goodsName }
					</h2>
					<div style="text-align:right; font-size:20px; width:90%;">
						<a href="">
						<!-- ajax濡� 醫뗭븘�슂泥섎━�빐�빞�븿 (DB而щ읆異붽��) -->
							<i class="fa fa-heart-o"></i> 醫뗭븘�슂 </a>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6" style="">
						<h3>${vo.goodsCategory }</h3>
						<br>

						<img src="${vo.goodsThumnail }"
							alt="" width="400" /> <br>
						<h5>�닔�웾 : ${vo.goodsStock}</h5>
						<div style="">
							<h2 style="color:green; margin-top:50px;">
								<fmt:formatNumber type="currency" value="${vo.goodsPrice }" />
							</h2>
						</div>
					</div>


					<div class="col-sm-12 col-lg-4 offset-lg-1" style="">
						<h3>Have Some Questions?</h3>
						<div class="accordion" id="accordionExample">

							<div class="card">
								<div class="card-header" id="headingOne">
									<h5 class="mb-0">
										<button class="btn btn-link" type="button"
											data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">
												�씠嫄� 媛�寃� 留먰빐以꾧쾶 �뀫�뀫	
										</button>

									</h5>
								</div>

								<div id="collapseOne" class="collapse show"
									aria-labelledby="headingOne" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">
											Moving creepeth moved upon man grass two days?</button>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse"
									aria-labelledby="headingTwo" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingThree">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											God male gathering them it female which green cattle?</button>
									</h5>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree"
									data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingFour">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseFour"
											aria-expanded="false" aria-controls="collapseFour">
											Saw isn't likeness beginning yielding land days she?</button>
									</h5>
								</div>
								<div id="collapseFour" class="collapse"
									aria-labelledby="headingFour" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="headingFive">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapseFive"
											aria-expanded="false" aria-controls="collapseFive">
											Saw isn't likeness beginning yielding land days she?</button>
									</h5>
								</div>
								<div id="collapseFive" class="collapse"
									aria-labelledby="headingFive" data-parent="#accordionExample">
									<div class="card-body">Great day without sixth a lesser
										beginning. Their thing abundantly air moving saw fruitful
										lesser god. Sea abundantly blessed life set. Land. Lights
										divided man in deep in open upon.</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			

		<div style="border-top: 5px ridge #E8EDF4;  text-align:left; padding-top:20px;
					border-bottom:2px solid #28A745; padding-bottom:4px;
						padding-left: 20px; margin-top:100px; margin-bottom:40px;">
			<button type="button" class="btn btn-success" id="detailView"
				style="width:200px; height:50px; margin-right:10px;" >
					�긽�뭹�꽕紐�</button>	<!-- 踰꾪듉�뱾 jquery濡� �궡�슜�쓣�썙二쇰뒗寃껉낵 active or visited �슚怨� 二쇨린 -->
			<button type="button"  class="btn btn-outline-success" id="replyView"
				style="width:200px; height:50px;" >
					�뙎湲�蹂닿린(${vo.replyCount })</button>
		</div>

<!-- �긽�뭹 �꽕紐� / �뙎湲�蹂닿린 Toggle 湲곕뒫 -->
<script>
	$("#replyView").click(function() {
		$("#replyView").removeClass('btn btn-outline-success').addClass('btn btn-success');
		$("#detailView").removeClass('btn btn-success').addClass('btn btn-outline-success');
		$("#detailDiv").hide();
		$("#replyDiv").hide();
		$("#replyDiv").slideDown();
	});
	$("#detailView").click(function() {
		$("#replyView").removeClass('btn btn-success').addClass('btn btn-outline-success');
		$("#detailView").removeClass('btn btn-outline-success').addClass('btn btn-success');
		$("#detailDiv").hide();
		$("#replyDiv").hide();
		$("#detailDiv").slideDown();
	});
</script>
	
	<div id="allView" ></div>
			<!-- �긽�뭹 �긽�꽭 �쁺�뿭 -->

			<div class="col-lg-8 ftco-animate" id="detailDiv">
				<h2 class="mb-3">�긽�뭹 �긽�꽭 �쁺�뿭�엯�땲�떎�뀋�뀋</h2>
					
					<p>Molestiae cupiditate inventore animi, maxime sapiente
						optio, illo est nemo veritatis repellat sunt doloribus nesciunt!
						Minima laborum magni reiciendis qui voluptate quisquam voluptatem
						soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi
						deleniti tenetur dolore amet fugit perspiciatis ipsa, odit.
						Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
						
						<img src="/silbomi/resources/green/images/image_4.jpg" alt="" class="img-fluid">
					<br><br>
				
					${vo.goodsContent}
					
					<br><Br>
					
					<p>Quisquam esse aliquam fuga distinctio, quidem delectus
						veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde
						aut non tenetur tempore, nisi culpa voluptate maiores officiis
						quis vel ab consectetur suscipit veritatis nulla quos quia
						aspernatur perferendis, libero sint. Error, velit, porro.
						Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
					
					

				<div class="tag-widget post-tag-container mb-5 mt-5">
					<div class="tagcloud">
						<a href="#" class="tag-cloud-link">Life</a> <a href="#"
							class="tag-cloud-link">Sport</a> <a href="#"
							class="tag-cloud-link">Tech</a> <a href="#"
							class="tag-cloud-link">Travel</a>
					</div>
				</div>


			</div>
<!-- �뙎湲� �궘�젣 / �닔�젙 -->
<script>
function replyEdit(num) {
	alert(num);
	location.reload();
}

function replyDelete(num) {
	if(confirm('�젙留먮줈�궘�젣�븯�떆寃좎뒿�땲源�?')) {
		$.ajax({
			url : "./replyDelete",
			type : "get",
			data : {
				replyNum : num,
				idx : ${param.idx},
				replyGroup : ${vo.goodsNum}
			},
			dataType : "text",
			success : function() {
				alert('�궘�젣�릺�뿀�뒿�땲�떎');
				$("#replyBlock_"+ num).hide(1000);
				setInterval("location.reload()",800);
			},
			error : function(e) {
				alert('�궘�젣�뿉 �떎�뙣�븯�뀲�뒿�땲�떎.');
				alert("�슂泥��떎�뙣 : " + e.status + ":" + e.statusText);
			}
			
		});
	}
}
/* �뙎湲��씠 諛붾줈 以꾩뼱�뱾�뼱�빞�븿 */
</script>			


		<!-- �뙎湲��떆�옉�엫 -->		
	<div id="replyDiv" style="text-align:left; padding:20px; width:80%;">		
		<div class="container" >
			<h3 class="mb-5">${vo.replyCount }媛쒖쓽 �뙎湲��씠 �엳�뒿�땲�떎</h3>

			<ul class="comment-list">
				<c:forEach items="${replyList }" var="reply">
					<div  id="replyBlock_${reply.replyNum }">
				<c:if test="${reply.replyStep eq 0 }">
					<li class="comment" >
				</c:if>
				<c:if test="${reply.replyStep eq 1 }">
					<li class="comment" style="width:88%;margin-right:10px; float:right;">
				</c:if>	
						<div class="vcard bio" >
							<img src="/silbomi/resources/green/images/person_1.jpg" alt="Image placeholder">
						</div>
						<div class="comment-body" style="margin-bottom:30px;">
							<h3 style="margin-bottom:-1px;">${reply.replyWriter }</h3>
								<div style="width:90%; text-align:right ">
									<a href="javascript:replyEdit(${reply.replyNum });">�닔�젙</a>&nbsp;|&nbsp;
									<a href="javascript:replyDelete(${reply.replyNum });">�궘�젣</a>
								</div>
							<div class="meta">
								<fmt:formatDate value="${reply.replyPostDate }" 
									pattern="yyyy/MM/dd kk:mm" />
							</div>
							<p style="font-size:18px;">
								${reply.replyContent }
							</p>
							<p id="${reply.replyNum }">
								<c:if test="${reply.replyStep eq 0 }">
									<button type="button" class="reply" id="appendReply">�뙎湲��옉�꽦</button>
								</c:if>
							</p>
						</div>
					</li>
					</div>
				</c:forEach>
		</ul>	
		</ul>
		</div>
		
	<!-- �뙎湲��뿉 �뙎湲��떖湲� �뤌異붽�� -->	
	<script>
	$(function() {
		
		$(".reply").click(function() {
			$(this).hide();
			$(this).parent().append("<div id='addForm'  > " +
					"<form action='./replyWrite' method='post' class='bg-light' style='padding:20px;height:50%;'> " +
					"  <input type='hidden' name='idx' value='${param.idx}' /> " +
					"  <input type='hidden' name='flag' value='1' /> " +
					"  <input type='hidden' name='replySubGroup' value='" 
							+ $(this).parent().attr('id') +"' />" + 
					"  <input type='hidden' name='replyWriter' value='t' /> " +
					"	<div class='form-group'> <label for='message'>�뙎湲��쓣 �엯�젰�븯�꽭�슂</label> " +
					"		<textarea name='replyContent' id='message' cols='28' rows='3' " + 
					" 			class='form-control'>�뙎湲��옉�꽦</textarea> </div> " +
					"	<div class='form-group'> <input type='submit' value='�뙎湲��옉�꽦' " +
					" 		style='margin-top:10px;float:right;' class='btn px-4 btn-primary'>  </div> " +	
					" </form> </div> " );				
		});

	});	
	</script>			


				<!-- END comment-list -->
	
				<div class="comment-form-wrap pt-5">
					<h3 class="mb-5">�븘�옒�뿉 �뙎湲��쓣 �궓寃⑥＜�꽭�슂.</h3>
					<form action="./replyWrite" method="post" class="p-5 bg-light">
						<input type="hidden" name="idx" value="${param.idx }" />
						<input type="hidden" name="replyWriter" value="t" />
						<div class="form-group">
							<label for="name">�옉�꽦�옄</label>
								<span style="margin-left:20px; font-size:20px; font-weight:bold; 
									font-color:#000000 !important; padding-top:10px;">�늻援щ늻援�</span>
						</div>
	
						<div class="form-group">
							<label for="message">�궡�슜</label>
								<textarea name="replyContent" id="message" cols="28" rows="4"
									class="form-control">�뙎湲��쓣 �엯�젰�븯�꽭�슂</textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Post Comment" style="float:right;"
								class="btn py-3 px-4 btn-primary">
						</div>

					</form>
				</div>
			</div>	
			
			<button type="button" onclick="location.href='./list?';" 
				style="width:100px;"class="btn btn-outline-info">紐⑸줉</button>
>>>>>>> refs/remotes/origin/master

		</div>
		</div>


	</section>



</div>




	</div>

	<br>
	<hr>
	<br>


	<section class="ftco-section">
		
		<div class="container">
				
		<!-- .col-md-8 -->
		<div class=" ftco-animate">
			
			<div class="sidebar-box ftco-animate">
				<h3 class="heading-sidebar">Categories</h3>
				<ul class="categories">
					<li><a href="#">Interior Design <span>(12)</span></a></li>
					<li><a href="#">Exterior Design <span>(22)</span></a></li>
					<li><a href="#">Industrial Design <span>(37)</span></a></li>
					<li><a href="#">Landscape Design <span>(42)</span></a></li>
				</ul>
			</div>

			<div class="sidebar-box ftco-animate">
				<h3 class="heading-sidebar">Recent Blog</h3>
				<div class="block-21 mb-4 d-flex">
					<a class="blog-img mr-4"
						style="background-image: url(/silbomi/resources/green/images/image_1.jpg);"></a>
					<div class="text">
						<h3 class="heading">
							<a href="#">Even the all-powerful Pointing has no control
								about the blind texts</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> March 12,
									2019</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>
				<div class="block-21 mb-4 d-flex">
					<a class="blog-img mr-4"
						style="background-image: url(/silbomi/resources/green/images/image_2.jpg);"></a>
					<div class="text">
						<h3 class="heading">
							<a href="#">Even the all-powerful Pointing has no control
								about the blind texts</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> March 12,
									2019</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>
				<div class="block-21 mb-4 d-flex">
					<a class="blog-img mr-4"
						style="background-image: url(/silbomi/resources/green/images/image_3.jpg);"></a>
					<div class="text">
						<h3 class="heading">
							<a href="#">Even the all-powerful Pointing has no control
								about the blind texts</a>
						</h3>
						<div class="meta">
							<div>
								<a href="#"><span class="icon-calendar"></span> March 12,
									2019</a>
							</div>
							<div>
								<a href="#"><span class="icon-person"></span> Admin</a>
							</div>
							<div>
								<a href="#"><span class="icon-chat"></span> 19</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="sidebar-box ftco-animate">
				<h3 class="heading-sidebar">Tag Cloud</h3>
				<div class="tagcloud">
					<a href="#" class="tag-cloud-link">house</a> <a href="#"
						class="tag-cloud-link">office</a> <a href="#"
						class="tag-cloud-link">building</a> <a href="#"
						class="tag-cloud-link">land</a> <a href="#"
						class="tag-cloud-link">table</a> <a href="#"
						class="tag-cloud-link">interior</a> <a href="#"
						class="tag-cloud-link">exterior</a> <a href="#"
						class="tag-cloud-link">industrial</a>
				</div>
			</div>

		</div>
	</div>
	
	</section>





	<div style="height: 200px"></div>



	<%@ include file="../main/include/footer.jsp"%>

</body>
</html>