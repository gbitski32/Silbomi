<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">


  <%@ include file="../main/include/headAndMeta.jsp" %>
  
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
   <%@ include file="../main/include/nav.jsp" %>
	  
		
	<div style="margin-top:80px;" style="border:1px solid black;"></div>
	
	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width:100%; height:200px;" />
	</div>
	
    

	<div class="container" style="margin-top:50px;">
	
		<div align="center">
			<h1 style="font-size:42px;">장터관련입니다</h1>

			
	<section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      
      <div class="container">	
			
		<div class="row d-flex contact-info mb-5">
		
		
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-map-signs"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
          
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-phone2"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
          
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-paper-plane"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
          
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-globe"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
          
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-contacts"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
          
          
          <div class="col-md-4 col-lg-2 d-flex text-center" style="height:210px;" >
          		<button class="box p-4" id="clics"
          				onclick="location.href='../test/main';">
	          		<div class="icon d-flex align-items-center justify-content-center">
	          			<span class="icon-globe"></span>
	          		</div>
	          		<h3 class="mb-4" style="font-weight:bold;">Address</h3>
          		</button>
      	  </div>
      	  
        </div>
        </div>
    </section>
    
    
			
			
	<br><br>
	
	<table class="table" style="width:90%">
		<tr>
			<th>카테고리1</th>
			<td style="text-align:center;">
				<select name="ss" id="" class="form-control">
					<option>가격순</option>
					<option>날짜순</option>
					<option>이름순</option>
				</select>
			</td>
			<th>카테고리1</th>
			<td style="text-align:center;">
				<select name="ss" id="" class="form-control">
					<option>가격순</option>
					<option>날짜순</option>
					<option>이름순</option>
				</select>
			</td>
		</tr>
		
	</table>
	
	<table class="table" style="width:90%">
		<tr>
			<th>지역</th>
			<td style="text-align:center;">
				<input type="text" class="form-controll" style="width:80%" />
			</td>
			<th>작성자</th>
			<td style="text-align:center;">
				<input type="text" class="form-controll" style="width:80%" />
			</td>
		</tr>
		
	</table>
	<table class="table" style="width:90%">
		<tr>
			<th>검색</th>
			<td style="width:60%;">
				<input type="text" class="form-controll" style="width:80%" />
				<button type="button" class="btn btn-outline-info" style="float:right;">검색</button>
			</td>
			<th>필터</th>
			<td style="text-align:center;">
				<select name="ss" id="" class="form-controll">
					<option>가격순</option>
					<option>날짜순</option>
					<option>이름순</option>
					<option>댓글순</option>
				</select>
			</td>
		</tr>
		
	</table>
	
	<br><br>
	<hr>
	<br><br>
			
	<section class="doctor_part section_padding single_doctor_part">
        <div class="container">
           
            
         <div class="row">
         		
         		<c:forEach items="${list}" var="goods" >
         			
         			<div class="col-sm-6 col-lg-3" style=""
         					id="cursor"  onclick="location.href='./views?idx=${goods.goodsNum}';">
	                    <div class="single_blog_item" >
	                        <div class="single_blog_img">
	                            <img src="${goods.goodsThumnail }"  
	                            	width="250" height="180" alt="이미지">
	                           
	                        </div>
	                        <div class="single_text">
	                            <div class="single_blog_text">
	                            	<br>
	                                <h6 style="color:#282828; font-weight:bold; ">
	                                	가격 : <fmt:formatNumber type="currency" value="${goods.goodsPrice }" />
	                                </h6>
	                                <div align="center">
										<p style="font-size:18px; font-color:black !important; font-weight:bold">
											${goods.goodsName }
										</p>
	                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
	                                <p>
		                               	 <a href="#" style="color:gray;">
		                               	 	<i class="fa fa-commenting-o"></i> ${goods.replyCount} comment</a>
		                                &nbsp;&nbsp;&nbsp;&nbsp;
		                                <a href="j" style="color:gray;">
		                                	<i class="fa fa-heart-o"></i> 0 like</a>
	                                </p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                	</div>
         		</c:forEach>
				
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/gun1.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/gun1.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/bullet2.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/gun2.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                	
                	
            <!--  기본 입니다 -->    	
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/sinbal.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/sinbal.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/gun1.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="single_blog_item" >
                        <div class="single_blog_img">
                            <img src="/silbomi/resources/green/images/doctor/bullet2.jpg" 
                            	width="250" height="180">
                           
                        </div>
                        <div class="single_text">
                            <div class="single_blog_text">
                            	<br>
                                <h6 style="color:#282828; font-weight:bold; ">가격 : ￦20,000</h6>
                                <div align="center">
									<p style="font-size:18px; font-color:black !important; font-weight:bold">
										너무졸리다 집가고 싶다 집가고 싶다 으아아아ㅏ
									</p>
                                	<!-- substring 으로 2줄넘으로 짜르고 1줄짜리면 br태그를 붙혀준다 -->
                                <p>
	                               	 <a href="#" style="color:gray;">
	                               	 	<i class="fa fa-commenting-o"></i> 08 comment</a>
	                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <a href="#" style="color:gray;">
	                                	<i class="fa fa-heart-o"></i> 0 like</a>
                                </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
        </div>
    </section>
			
		</div>
		
	
	</div>
	
	<br><br>
	<hr>
	<br><br>				

		
		
     <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5">
          <div class="col-md-6 heading-section text-center ftco-animate">
          	<span class="subheading">About Us</span>
            <h2 class="mb-4">Our Staff</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>
        <div class="row">
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(/silbomi/resources/green/images/staff-1.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Lloyd Wilson</h3>
									<span class="position mb-4">CEO, Founder</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(/silbomi/resources/green/images/staff-2.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Rachel Parker</h3>
									<span class="position mb-4">Web Designer</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(/silbomi/resources/green/images/staff-3.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Ian Smith</h3>
									<span class="position mb-4">Web Developer</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
								<div class="img align-self-stretch" style="background-image: url(/silbomi/resources/green/images/staff-4.jpg);"></div>
							</div>
							<div class="text d-flex align-items-center pt-3 text-center">
								<div>
									<h3 class="mb-2">Alicia Henderson</h3>
									<span class="position mb-4">Graphic Designer</span>
									<div class="faded">
										<ul class="ftco-social text-center">
			                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
			                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
			              </ul>
		              </div>
		            </div>
							</div>
						</div>
					</div>
				</div>
    	</div>
    </section> 

<div style="height:200px"></div>   
    
    

	<%@ include file="../main/include/footer.jsp" %>

  </body>
</html>