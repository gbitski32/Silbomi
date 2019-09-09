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
		if(confirm('정말로 삭제하시겠습니까?')) {
			
			$.ajax({
				url : "./deleteGoods",
				type : "get",
				data : {
					idx : ${param.idx}
				},
				dataType : "text",
				success : function(d) {
 					if(d == "true") {
						alert('삭제되었습니다');	
						location.href='./list';
					}else {
						alert('접근할수 없는 요청입니다');
					} 
				},
				error : function(e) {
					alert('삭제에 실패하셨습니다.');
					alert("요청실패 : " + e.status + ":" + e.statusText);
				}
				
			});
		}
	}
</script>

	<div class="container" style="margin-top: 50px;">

		<div align="center">
			<h1 style="font-size: 42px;">상품들 상세보기 페이지 입니다.</h1>

			<div style="">
				<div style="text-align:right; margin-bottom:20px;">
					<button type="button" class="btn btn-outline-danger"
						onclick="deleteGoods();">게시물 삭제</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-primary" 
						onclick="location.href='./list?';">목록으로</button>
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
					<span style="font-size:20px;" onclick="alert('아이디');">
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
						<!-- ajax로 좋아요처리해야함 (DB컬럼추가) -->
							<i class="fa fa-heart-o"></i> 좋아요 </a>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6" style="">
						<h3>${vo.goodsCategory }</h3>
						<br>

						<img src="${vo.goodsThumnail }"
							alt="" width="400" /> <br>
						<h5>수량 : ${vo.goodsStock}</h5>
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
			<button type="button" class="btn btn-success" id="detailView"
				style="width:200px; height:50px; margin-right:10px;" >
					상품설명</button>	<!-- 버튼들 jquery로 내용띄워주는것과 active or visited 효과 주기 -->
			<button type="button"  class="btn btn-outline-success" id="replyView"
				style="width:200px; height:50px;" >
					댓글보기(${vo.replyCount })</button>
		</div>

<!-- 상품 설명 / 댓글보기 Toggle 기능 -->
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
			<!-- 상품 상세 영역 -->

			<div class="col-lg-8 ftco-animate" id="detailDiv">
				<h2 class="mb-3">상품 상세 영역입니다ㅇㅇ</h2>
					
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
<!-- 댓글 삭제 / 수정 -->
<script>
function replyEdit(num) {
	alert(num);
	location.reload();
}

function replyDelete(num) {
	if(confirm('정말로삭제하시겠습니까?')) {
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
				alert('삭제되었습니다');
				$("#replyBlock_"+ num).hide(1000);
				setInterval("location.reload()",800);
			},
			error : function(e) {
				alert('삭제에 실패하셨습니다.');
				alert("요청실패 : " + e.status + ":" + e.statusText);
			}
			
		});
	}
}
/* 댓글이 바로 줄어들어야함 */
</script>			


		<!-- 댓글시작임 -->		
	<div id="replyDiv" style="text-align:left; padding:20px; width:80%;">		
		<div class="container" >
			<h3 class="mb-5">${vo.replyCount }개의 댓글이 있습니다</h3>

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
									<a href="javascript:replyEdit(${reply.replyNum });">수정</a>&nbsp;|&nbsp;
									<a href="javascript:replyDelete(${reply.replyNum });">삭제</a>
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
									<button type="button" class="reply" id="appendReply">댓글작성</button>
								</c:if>
							</p>
						</div>
					</li>
					</div>
				</c:forEach>
		</ul>	
		</ul>
		</div>
		
	<!-- 댓글에 댓글달기 폼추가 -->	
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
					"	<div class='form-group'> <label for='message'>댓글을 입력하세요</label> " +
					"		<textarea name='replyContent' id='message' cols='28' rows='3' " + 
					" 			class='form-control'>댓글작성</textarea> </div> " +
					"	<div class='form-group'> <input type='submit' value='댓글작성' " +
					" 		style='margin-top:10px;float:right;' class='btn px-4 btn-primary'>  </div> " +	
					" </form> </div> " );				
		});

	});	
	</script>			


				<!-- END comment-list -->
	
				<div class="comment-form-wrap pt-5">
					<h3 class="mb-5">아래에 댓글을 남겨주세요.</h3>
					<form action="./replyWrite" method="post" class="p-5 bg-light">
						<input type="hidden" name="idx" value="${param.idx }" />
						<input type="hidden" name="replyWriter" value="t" />
						<div class="form-group">
							<label for="name">작성자</label>
								<span style="margin-left:20px; font-size:20px; font-weight:bold; 
									font-color:#000000 !important; padding-top:10px;">누구누구</span>
						</div>
	
						<div class="form-group">
							<label for="message">내용</label>
								<textarea name="replyContent" id="message" cols="28" rows="4"
									class="form-control">댓글을 입력하세요</textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Post Comment" style="float:right;"
								class="btn py-3 px-4 btn-primary">
						</div>

					</form>
				</div>
			</div>	
			
			<button type="button" onclick="location.href='./list?';" 
				style="width:100px;"class="btn btn-outline-info">목록</button>

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