<<<<<<< HEAD
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
			<h1 style="font-size:42px;">ì—¬ê¸°ë‹¤ê°€ ë‹¤ë“¤ ì‘ì„±í•˜ì‹œì˜¤ ë¹ ì´íŒ…!</h1>
			
			<h3>ì´ë¯¸ì§€ë‚˜ í°íŠ¸ css ì´ëŸ°ê²ƒë„ ì•Œì•„ì„œë“¤ ì‘ì„±í•˜ì„¸ìš”</h3>
			
			<p>ì•„ë˜ì˜ dbì—°ê²°ê³¼ controller, mapper, service, dao ë“±ë“±ì˜ ë°ì´í„°íë¦„ê³¼ êµ¬ì¡°ë¥¼ 
				ê¼­ ì´í•´í•˜ì‹œê³  ì•„ë˜ì²˜ëŸ¼ ë””ë¹„ì—°ê²°í•´ì„œ ì“°ì„¸ìš© ! (ëª¨ë¥´ê² ìœ¼ë©´ ì§ˆë¬´ìš°ìš°ìš´~~)</p>
			<br><br>
			
			<table class="table">
								
			<c:forEach items="${list}" var="test">
				<tr>
					<th>ì œ1ì»¬ëŸ¼</th>
					<td>${test.id }</td>
				</tr>
				<tr>
					<th>ì œ2ì»¬ëŸ¼</th>
					<td>${test.pw }</td>
				</tr>
			</c:forEach>	
			
			</table>
			
		</div>
		
		<h3>ì´ëŸ°ì‹ìœ¼ë¡œ ì•Œì•„ì„œ ë‹¤ë“¤ í•˜ì‹œì˜¤</h3>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<h1 style="font-size:42px;">¿©±â´Ù°¡ ´Ùµé ÀÛ¼ºÇÏ½Ã¿À ºüÀÌÆÃ!</h1>
			
			<h3>ÀÌ¹ÌÁö³ª ÆùÆ® css ÀÌ·±°Íµµ ¾Ë¾Æ¼­µé ÀÛ¼ºÇÏ¼¼¿ä</h3>
			
			<p>¾Æ·¡ÀÇ db¿¬°á°ú controller, mapper, service, dao µîµîÀÇ µ¥ÀÌÅÍÈå¸§°ú ±¸Á¶¸¦ 
				²À ÀÌÇØÇÏ½Ã°í ¾Æ·¡Ã³·³ µğºñ¿¬°áÇØ¼­ ¾²¼¼¿ë ! (¸ğ¸£°ÚÀ¸¸é Áú¹«¿ì¿ì¿î~~)</p>
			<br><br>
			
			<table class="table">
								
			<c:forEach items="${list}" var="test">
				<tr>
					<th>Á¦1ÄÃ·³</th>
					<td>${test.id }</td>
				</tr>
				<tr>
					<th>Á¦2ÄÃ·³</th>
					<td>${test.pw }</td>
				</tr>
			</c:forEach>	
			
			</table>
			
		</div>
		
		<h3>ÀÌ·±½ÄÀ¸·Î ¾Ë¾Æ¼­ ´Ùµé ÇÏ½Ã¿À</h3>
>>>>>>> refs/remotes/origin/master
		
	
	</div>
	
		
		
		
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