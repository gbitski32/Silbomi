<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">


  <%@ include file="../main/include/headAndMeta.jsp" %>
  
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
   <%@ include file="../main/include/nav.jsp" %>
	  
<script>

$(document).ready(function(){
  var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });
    
    $("#clickFile").click(function() {
    	$('#uploadFile').click();
    });
    
}); 

</script>		
	<div style="margin-top:80px;" style="border:1px solid black;"></div>
	
	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width:100%; height:200px;" />
	</div>
	
    
	
	<div class="container" style="margin-top:50px;">
	
		<div align="center">
			<h1 style="font-size:42px;margin-bottom:40px;">»óÇ° µî·Ï ÆäÀÌÁö</h1>
			
			
			<br><br>

	<section class="appointment-area area-padding-top">
		

		<div class="appointment-inner">
			<div class="container">
	
			<table class="table"  style="width:88%; padding:10px;">
				<tr>
					<th>Ä«Å×°í¸®</th>
					<td>
						<select name="" id="" class="" style="width:40%;text-align:center;">
							<option value="">¼±ÅÃÇÏ¼¼¿ä</option>
							<option value="">Ç°¸ñ1</option>
							<option value="">Ç°¸ñ2</option>
							<option value="">Ç°¸ñ3</option>
							<option value="">Ç°¸ñ4</option>
							<option value="">Ç°¸ñ5</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>°Å·¡¹æ¹ı</th>
					<td>
						<select name="" id="" class="" style="width:40%;text-align:center;">
							<option value="">¼±ÅÃÇÏ¼¼¿ä</option>
							<option value="">Ç°¸ñ1</option>
							<option value="">Ç°¸ñ2</option>
							<option value="">Ç°¸ñ3</option>
							<option value="">Ç°¸ñ4</option>
							<option value="">±âÅ¸(¿À¸¥ÂÊ¿¡ inputÃß°¡)</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>Á¦¸ñ</th>
					<td>
					<div class="form-group">
						<input type="text" name="" id="" value="" 
							class="form-control" style="width:84%" />
					</div>
					</td>
				</tr>
				<tr>
					<th>¾ÆÀÌµğ</th>
					<td>
						<h2>ÆÇ¸ÅÀÚ ¾ÆÀÌµğ¸¦ ¾µ±î¸»±î °í¹Î ¤¡¤¡</h2>
					</td>
				</tr>
				<tr>
					<th>ÀÌ¹ÌÁö</th>
					<td>
						<p>½æ³×ÀÏ·Î »ç¿ëÇÒ ÀÌ¹ÌÁö¸¦ ¼±ÅÃÇÏ¼¼¿ä</p>
						<div class="filebox bs3-primary" style="border:1px solid red; margin-right:40px; display:inline-block;">
                            <input class="upload-name" value="ÆÄÀÏ¼±ÅÃ" disabled="disabled">
                            <label for="filename" id="clickFile" >¾÷·Îµå</label> 
                          	<input type="file" name="" id="uploadFile" class="upload-hidden"> 
                        </div>
						<div id="img_view" style="border:1px solid blue; display:inline-block;">
							<img src="/silbomi/resources/green/images/image_1.jpg" width="250"  alt="" />
						</div>
					</td>
				</tr>
				<tr>
					<th>Á¤º¸Á¦°øµ¿ÀÇ</th>
					<td>
						<input type="checkbox" name="" id="" />
							»óÇ°µî·ÏÁ¤º¸ÀÇ °Å·¡¾÷Ã¼ Á¦°øµ¿ÀÇ(ÇÊ¼ö)
					</td>
				</tr>
				<tr>
					<th>ÆÇ¸ÅÀÚÁ¤º¸</th>
					<td>
						<div style="text-align:center; width:60%;">
							<p><a href="">¿¬¶ôÃ³ º¯°æ</a></p>
							<p>¿¬¶ôÃ³ : 010-5315-7568</p>
							<p>ÀÌ¸ŞÀÏ : akdie213@naver.com</p>
							<br>
							<div style="text-align:left">
								<input type="checkbox" name="" id="" />
									ÆÇ¸ÅÀÚ ¿¬¶ôÃ³Á¤º¸ ³ëÃâ µ¿ÀÇ  &nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="" id="" />
									ÆÇ¸ÅÀÚ ÀÌ¸ŞÀÏÁ¤º¸ ³ëÃâ µ¿ÀÇ<br>
							</div>
						</div>
						
					</td>
				</tr>
				<tr >
					<th>»óÇ°¼³¸í</th>
					<td style="padding-top:50px;  padding-bottom:60px;">
						<textarea name="" id="contentsCk"  style="width:92%;"
							class="form-control">CK¿¡µğÅÍ¸¦ Àû¿ë</textarea>
					</td>
					<script type="text/javascript">
						CKEDITOR.replace('contentsCk', {
							height : 800,
							filebrowserImageUploadUrl: './ckupload.do'
						});
					</script>
				</tr>
				<tr>
					<th>Ä¸Ã­api</th>
					<td>
						<div style="display:inline-block; width:250px;text-align:center;margin-top:40px;">
							<h4>ÀÚµ¿µî·Ï ¹æÁö Ä¸Ã­</h4><br>
							<div style="background-color:skyblue; font-size:30px;">
								JDCA7D<br>
							</div>
						</div>
						<div style="display:inline-block; margin-left:80px;width:420px;">
							<p>¶È¹Ù·Î ÀÔ·ÂÇÏ½Ê½Ã¿À!!º»ÀÎÀÎÁõÀ» ÇÏÁö ¾Ê°í °£ÆíÀÎÁõÀ» ÇÏ½Ã´Â °í°´´Ô²²¼­´Â 
								ÀÏºÎ Á¦ÈŞ ¼­ºñ½º°¡ Á¦ÇÑµÉ ¼ö ÀÖ½À´Ï´Ù.</p>
							<input type="text" class="form-control" style="width:360px;"/>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center; ">
						<input type="submit" value="µî·ÏÇÏ±â" style="margin-top:40px;"
							class="btn py-3 px-4 btn-primary">
					</td>
				</tr>
			</table>
			
			</div>
		</div>
	</section>	
			
		</div>
		
		<br><br>
		<hr />
		<br><br>
		<h3>ÀÌ·±½ÄÀ¸·Î ¾Ë¾Æ¼­ ´Ùµé ÇÏ½Ã¿À</h3>
		
	
	</div>

	
		
<!-- about us (our staff ¶óÀÎÀÔ´Ï´Ù -->		
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 

  <%@ include file="../main/include/headAndMeta.jsp" %>
  
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  
   <%@ include file="../main/include/nav.jsp" %>
	  
<script>

$(document).ready(function(){
	
	$.ajax({
		url : "./captcha",
		type : "get",
		data : {
			
		},
		dataType : "json",
		success : function(d) {
			$('#captImg').attr("src", d.capImage);
			$('#key').val(d.key);
		},
		error : function(e) {
			alert("ìš”ì²­ì‹¤íŒ¨ : " + e.status + ":" + e.statusText);
		}
		
	});
	
  	var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }
		
        $(this).siblings('.upload-name').val(filename);
    });
    
    $("#clickFile").click(function() {
    	$('#uploadFile').click();
    });
    
    $("#capRefresh").click(function() {
    	$.ajax({
    		url : "./captcha",
    		type : "get",
    		data : {
    			refresh : "1",
    			c_img : $('#captImg').attr('src')
    		},
    		dataType : "json",
    		success : function(d) {
    			$('#captImg').attr("src", d.capImage);
    			$('#key').val(d.key);
    		},
    		error : function(e) {
    			alert("ìš”ì²­ì‹¤íŒ¨ : " + e.status + ":" + e.statusText);
    		}
    		
    	});
    });
    
    $('#captBtn').click(function() {
    	$.ajax({
    		url : "./captchaResult",
    		type : "get",
    		data : {
    			key : $('#key').val(),
    			value : $('#inputValue').val()
    		},
    		dataType : "text",
    		success : function(d) {
    			if(d == "true") {
    				alert('ì„±ê³µ');
    				$('#capResult').val('1');
    			}
    			else {
    				alert('ì‹¤íŒ¨');
    			}
    		},
    		error : function(e) {
    			alert("ìš”ì²­ì‹¤íŒ¨ : " + e.status + ":" + e.statusText);
    		}
    	});
    });
    $('#confer').click(function() {
    	alert('${pageContext.request.contextPath}')
    });
    
    
}); 

function validate(f) {
	/*if(f.goodsCategory.value == "ì„ íƒ") {
		alert("ì¹´í…Œê³ ë¦¬ë¥¼ ì„ íƒí•´ì•¼í•©ë‹ˆë‹¤");
		f.goodsCategory.focus();
		return false;
	}
	if(f.del_type.value == "ì„ íƒ") {
		alert("ê±°ë˜ë°©ë²•ì„ ì„ íƒí•´ì•¼í•©ë‹ˆë‹¤.");
		f.del_type.focus();
		return false;
	}
	if(f.goodsName.value == "") {
		alert("ì œëª©ì„ ì…ë ¥í•˜ì„¸ìš”");
		f.goodsName.focus();
		return false;
	}
	if(f.goodsWriter.value == "") {
		alert("ì„¸ì…˜ì´ë§Œë£Œë˜ì—ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œë¡œê·¸ì¸í•´ì£¼ì„¸ìš”.");
		location.href="./list";
		return false;
	}
	if(f.goodsPrice.value == "") {
		alert('ê°€ê²©ì„ ì…ë ¥í•˜ì„¸ìš”');
		f.goodsPrice.focus();
		return false;
	}
	if(f.goodsStock.value == "") {
		alert("ìˆ˜ëŸ‰ì„ ì…ë ¥í•˜ì„¸ìš”");
		f.goodsStock.focus();
		return false;
	}
	if(f.goodsThumnail.value == "" || f.goodsThumnail.value == null) {
		alert("ì´ë¯¸ì§€ë¥¼ ì„ íƒí•˜ì„¸ìš”");
		f.goodsThumnail.focus();
		return false;
	}
	if(f.infoAgree.checked == false) {
		alert("ì •ë³´ì œê³µì— ë™ì˜í•´ì£¼ì„¸ìš”");
		f.infoAgree.focus();
		return false;
	}
	if(f.goodsContent.value.length < 10) {
		alert("ìƒí’ˆë‚´ìš©ì€ 10ìì´ìƒ ì…ë ¥í•´ì•¼í•©ë‹ˆë‹¤");
		f.goodsContent.focus();
		return false;
	}
	if(f.capResult.value == "0") {
		alert("ìë™ë“±ë¡ë°©ì§€ë¥¼ í•´ì œí•´ì£¼ì„¸ìš”");
		f.inputValue.focus();
		return false;
	}*/
	
}
 

function isNumber() {
	if(event.keyCode<48 || event.keyCode>57) {
		event.returnValue=false;
	}
}

</script>		
	<div style="margin-top:80px;" style="border:1px solid black;"></div>
	
	<div>
		<img src="/silbomi/resources/green/images/main.jpg" alt="" style="width:100%; height:200px;" />
	</div>
	
    
	
	<div class="container" style="margin-top:50px;">
	
		<div align="center">
			<h1 style="font-size:42px;margin-bottom:40px;">ìƒí’ˆ ë“±ë¡ í˜ì´ì§€</h1>
				<form action="./tt.do">
					<div style="width:90%;">
						<input type="text" name="tt" style="width:40%;height:40px;"/>
						<button type="submit" class="btn btn-primary">ê²€ìƒ‰</button>
						<button type="button" style="float:right;" class="btn btn-outline-info"
							onclick="history.back(-1);">ëª©ë¡ì´ë™</button>
					</div>
				</form>
			<br><br>

	<section class="appointment-area area-padding-top">
		

		<div class="appointment-inner">
			<div class="container">
		
		<form action="registAction" name="registForm" method="post" 
				onsubmit="return validate(this);" enctype="multipart/form-data">
		
			<table class="table"  style="width:88%; padding:10px;">
				<tr>
					<th>ì¹´í…Œê³ ë¦¬</th>
					<td>
						<select name="goodsCategory" id="" class="form-control" 
								style="width:40%;text-align:center;">
							<option value="ì„ íƒ">ì„ íƒí•˜ì„¸ìš”</option>
							<option value="í’ˆ1">í’ˆëª©1</option>
							<option value="í’ˆ2">í’ˆëª©2</option>
							<option value="í’ˆ3">í’ˆëª©3</option>
							<option value="í’ˆ4">í’ˆëª©4</option>
							<option value="í’ˆ5">í’ˆëª©5</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>ê±°ë˜ë°©ë²•</th>
					<td>
						<select name="del_type" id="" class="form-control" 
								style="width:40%;text-align:center;">
							<option value="ì„ íƒ">ì„ íƒí•˜ì„¸ìš”</option>
							<option value="ì§ê±°ë ˆ">ì§ê±°ë ˆ</option>
							<option value="íƒë°°ê±°ë˜">íƒë°°ê±°ë˜</option>
							<option value="ê·¸ì™¸ê±°ë˜">ê·¸ì™¸ê±°ë˜</option>
							<option value="ì—°ë½í›„í•©ì˜" >ì—°ë½í›„í•©ì˜</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>ì œëª©</th>
					<td>
					<div class="form-group">
						<input type="text" name="goodsName" id="" value="" 
							class="form-control" style="width:84%" />
					</div>
					</td>
				</tr>
				<tr>
					<th>ì•„ì´ë””</th>
					<td>
						<h2>íŒë§¤ì ì•„ì´ë””ë¥¼ ì“¸ê¹Œë§ê¹Œ ê³ ë¯¼ ã„±ã„±</h2>
						<input type="text" name="goodsWriter" id=""  />
					</td>
				</tr>
				<tr>
					<th>ê°€ê²©</th>
					<td>
						<input type="text" name="goodsPrice" class="form-control" 
							id="goodsPrice"  onkeypress="isNumber();" />
					</td>
				</tr>
				<tr>
					<th>ìˆ˜ëŸ‰</th>
					<td>
						<input type="number" name="goodsStock" id="goodsStock"  style="width:30%;"
							class="form-control" onkeypress="isNumber();" />
					</td>
				</tr>
				<tr>
					<th>ì´ë¯¸ì§€</th>
					<td>
						<p>ì¸ë„¤ì¼ë¡œ ì‚¬ìš©í•  ì´ë¯¸ì§€ë¥¼ ì„ íƒí•˜ì„¸ìš”</p>
						<div class="filebox bs3-primary" style="margin-right:80px; display:inline-block;">
                            <input class="upload-name" value="íŒŒì¼ì„ íƒ" disabled="disabled">
                            <label for="filename" id="clickFile" >ì—…ë¡œë“œ</label> 
                          	<input type="file" name="thumnail" id="uploadFile" class="upload-hidden"> 
                        </div>
						<div  style="display:inline-block;">
							<img src="/silbomi/resources/green/images/image_1.jpg" id="img_view" width="250"  />
						</div>
					</td>
					<script>
					$("#uploadFile").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$("#img_view").attr("src", data.target.result).width(250);
							}
							reader.readAsDataURL(this.files[0]);
						}
					});

					</script>
				</tr>
				
				<tr>
					<th>ì •ë³´ì œê³µë™ì˜</th>
					<td>
						<input type="checkbox" name="infoAgree" id="infoAgree"  />
							ìƒí’ˆë“±ë¡ì •ë³´ì˜ ê±°ë˜ì—…ì²´ ì œê³µë™ì˜(í•„ìˆ˜)
					</td>
				</tr>
				<tr>
					<th>íŒë§¤ìì •ë³´</th>
					<td>
						<div style="text-align:center; width:60%;">
							<p><a href="">ì—°ë½ì²˜ ë³€ê²½</a></p>
							<p>ì—°ë½ì²˜ : 010-5315-7568</p>
							<p>ì´ë©”ì¼ : akdie213@naver.com</p>
							<br>
							<div style="text-align:left">
								<input type="checkbox" name="phoneAgree" id="phoneAgree" />
									íŒë§¤ì ì—°ë½ì²˜ì •ë³´ ë…¸ì¶œ ë™ì˜  &nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="emailAgree" id="emailAgree" />
									íŒë§¤ì ì´ë©”ì¼ì •ë³´ ë…¸ì¶œ ë™ì˜<br>
							</div>
						</div>
						
					</td>
				</tr>
				<tr >
					<th>ìƒí’ˆì„¤ëª…</th>
					<td style="padding-top:50px;  padding-bottom:60px;">
						<textarea name="goodsContent" id="contentsCk"  style="width:92%;"
							class="form-control">ë‚´ìš©ì„ ì…ë ¥í•˜ì„¸ìš”</textarea>
					</td>
					<script type="text/javascript">
						var editor = CKEDITOR.replace('contentsCk', {
							height : 800,
							filebrowserImageUploadUrl: './ckUpload.do'
						});
					</script>
				</tr>
				<tr>
					<th>ìë™ë“±ë¡ë°©ì§€</th>
					<td style="">
						<div style="display:inline-block; margin-bottom:20px; width:300px;
							text-align:center;">
							<img src="" alt="111" id="captImg" width="250"/><br>
							<h4 style="font-size:20px; color:black;">ìë™ë“±ë¡ë°©ì§€ë¥¼ í•´ì£¼ì„¸ìš”</h4>
						</div>
						<div style="display:inline-block; margin-left:80px;width:420px;
								padding-top:60px;">
							<p>ë˜‘ë°”ë¡œ ì…ë ¥í•˜ì‹­ì‹œì˜¤!!ë³¸ì¸ì¸ì¦ì„ í•˜ì§€ ì•Šê³  ê°„í¸ì¸ì¦ì„ í•˜ì‹œëŠ” ê³ ê°ë‹˜ê»˜ì„œëŠ” 
								ì¼ë¶€ ì œíœ´ ì„œë¹„ìŠ¤ê°€ ì œí•œë  ìˆ˜ ìˆìŠµë‹ˆë‹¤.</p>
							<input type="text" name="inputValue" id="inputValue"  value=""
								style="width:300px; height:60px; font-size:22px;" />
							
							<button type="button" class="btn btn-info" id="captBtn"
								style="width:80px; height:60px; margint-left:10px;">í™•ì¸</button>
							<input type="hidden" name="key" id="key" value=""/>
							<input type="hidden" name="capResult" id="capResult" value="0"/>
							<br>
							<button type="button" class="btn btn-outline-danger" id="capRefresh">
								ìƒˆë¡œê³ ì¹¨</button>
							
						</div>
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<td colspan="2" style="text-align:center; ">
						<input type="submit" value="ë“±ë¡í•˜ê¸°" style="margin-top:40px;"
							class="btn py-3 px-4 btn-primary">
					</td>
				</tr>
			</table>
		
		</form>
			
			</div>
		</div>
	</section>	
			
		</div>
		
		<br><br>
		<hr />
		<br><br>
		<h3>ì´ëŸ°ì‹ìœ¼ë¡œ ì•Œì•„ì„œ ë‹¤ë“¤ í•˜ì‹œì˜¤</h3>
		
	
	</div>

	
		
<!-- about us (our staff ë¼ì¸ì…ë‹ˆë‹¤ -->		
>>>>>>> refs/remotes/origin/master
		
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
								<div class="img align-self-stretch" style="background-image: url(images/staff-1.jpg);"></div>
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
								<div class="img align-self-stretch" style="background-image: url(images/staff-2.jpg);"></div>
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
								<div class="img align-self-stretch" style="background-image: url(images/staff-3.jpg);"></div>
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
								<div class="img align-self-stretch" style="background-image: url(images/staff-4.jpg);"></div>
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