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
			<h1 style="font-size:42px;margin-bottom:40px;">상품 등록 페이지</h1>
			
			
			<br><br>

	<section class="appointment-area area-padding-top">
		

		<div class="appointment-inner">
			<div class="container">
	
			<table class="table"  style="width:88%; padding:10px;">
				<tr>
					<th>카테고리</th>
					<td>
						<select name="" id="" class="" style="width:40%;text-align:center;">
							<option value="">선택하세요</option>
							<option value="">품목1</option>
							<option value="">품목2</option>
							<option value="">품목3</option>
							<option value="">품목4</option>
							<option value="">품목5</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>거래방법</th>
					<td>
						<select name="" id="" class="" style="width:40%;text-align:center;">
							<option value="">선택하세요</option>
							<option value="">품목1</option>
							<option value="">품목2</option>
							<option value="">품목3</option>
							<option value="">품목4</option>
							<option value="">기타(오른쪽에 input추가)</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
					<div class="form-group">
						<input type="text" name="" id="" value="" 
							class="form-control" style="width:84%" />
					</div>
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<h2>판매자 아이디를 쓸까말까 고민 ㄱㄱ</h2>
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>
						<p>썸네일로 사용할 이미지를 선택하세요</p>
						<div class="filebox bs3-primary" style="border:1px solid red; margin-right:40px; display:inline-block;">
                            <input class="upload-name" value="파일선택" disabled="disabled">
                            <label for="filename" id="clickFile" >업로드</label> 
                          	<input type="file" name="" id="uploadFile" class="upload-hidden"> 
                        </div>
						<div id="img_view" style="border:1px solid blue; display:inline-block;">
							<img src="/silbomi/resources/green/images/image_1.jpg" width="250"  alt="" />
						</div>
					</td>
				</tr>
				<tr>
					<th>정보제공동의</th>
					<td>
						<input type="checkbox" name="" id="" />
							상품등록정보의 거래업체 제공동의(필수)
					</td>
				</tr>
				<tr>
					<th>판매자정보</th>
					<td>
						<div style="text-align:center; width:60%;">
							<p><a href="">연락처 변경</a></p>
							<p>연락처 : 010-5315-7568</p>
							<p>이메일 : akdie213@naver.com</p>
							<br>
							<div style="text-align:left">
								<input type="checkbox" name="" id="" />
									판매자 연락처정보 노출 동의  &nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="" id="" />
									판매자 이메일정보 노출 동의<br>
							</div>
						</div>
						
					</td>
				</tr>
				<tr >
					<th>상품설명</th>
					<td style="padding-top:50px;  padding-bottom:60px;">
						<textarea name="" id="contentsCk"  style="width:92%;"
							class="form-control">CK에디터를 적용</textarea>
					</td>
					<script type="text/javascript">
						CKEDITOR.replace('contentsCk', {
							height : 800,
							filebrowserImageUploadUrl: './ckupload.do'
						});
					</script>
				</tr>
				<tr>
					<th>캡챠api</th>
					<td>
						<div style="display:inline-block; width:250px;text-align:center;margin-top:40px;">
							<h4>자동등록 방지 캡챠</h4><br>
							<div style="background-color:skyblue; font-size:30px;">
								JDCA7D<br>
							</div>
						</div>
						<div style="display:inline-block; margin-left:80px;width:420px;">
							<p>똑바로 입력하십시오!!본인인증을 하지 않고 간편인증을 하시는 고객님께서는 
								일부 제휴 서비스가 제한될 수 있습니다.</p>
							<input type="text" class="form-control" style="width:360px;"/>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center; ">
						<input type="submit" value="등록하기" style="margin-top:40px;"
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
		<h3>이런식으로 알아서 다들 하시오</h3>
		
	
	</div>

	
		
<!-- about us (our staff 라인입니다 -->		
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
			alert("�슂泥��떎�뙣 : " + e.status + ":" + e.statusText);
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
    			alert("�슂泥��떎�뙣 : " + e.status + ":" + e.statusText);
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
    				alert('�꽦怨�');
    				$('#capResult').val('1');
    			}
    			else {
    				alert('�떎�뙣');
    			}
    		},
    		error : function(e) {
    			alert("�슂泥��떎�뙣 : " + e.status + ":" + e.statusText);
    		}
    	});
    });
    $('#confer').click(function() {
    	alert('${pageContext.request.contextPath}')
    });
    
    
}); 

function validate(f) {
	/*if(f.goodsCategory.value == "�꽑�깮") {
		alert("移댄뀒怨좊━瑜� �꽑�깮�빐�빞�빀�땲�떎");
		f.goodsCategory.focus();
		return false;
	}
	if(f.del_type.value == "�꽑�깮") {
		alert("嫄곕옒諛⑸쾿�쓣 �꽑�깮�빐�빞�빀�땲�떎.");
		f.del_type.focus();
		return false;
	}
	if(f.goodsName.value == "") {
		alert("�젣紐⑹쓣 �엯�젰�븯�꽭�슂");
		f.goodsName.focus();
		return false;
	}
	if(f.goodsWriter.value == "") {
		alert("�꽭�뀡�씠留뚮즺�릺�뿀�뒿�땲�떎. �떎�떆濡쒓렇�씤�빐二쇱꽭�슂.");
		location.href="./list";
		return false;
	}
	if(f.goodsPrice.value == "") {
		alert('媛�寃⑹쓣 �엯�젰�븯�꽭�슂');
		f.goodsPrice.focus();
		return false;
	}
	if(f.goodsStock.value == "") {
		alert("�닔�웾�쓣 �엯�젰�븯�꽭�슂");
		f.goodsStock.focus();
		return false;
	}
	if(f.goodsThumnail.value == "" || f.goodsThumnail.value == null) {
		alert("�씠誘몄��瑜� �꽑�깮�븯�꽭�슂");
		f.goodsThumnail.focus();
		return false;
	}
	if(f.infoAgree.checked == false) {
		alert("�젙蹂댁젣怨듭뿉 �룞�쓽�빐二쇱꽭�슂");
		f.infoAgree.focus();
		return false;
	}
	if(f.goodsContent.value.length < 10) {
		alert("�긽�뭹�궡�슜��� 10�옄�씠�긽 �엯�젰�빐�빞�빀�땲�떎");
		f.goodsContent.focus();
		return false;
	}
	if(f.capResult.value == "0") {
		alert("�옄�룞�벑濡앸갑吏�瑜� �빐�젣�빐二쇱꽭�슂");
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
			<h1 style="font-size:42px;margin-bottom:40px;">�긽�뭹 �벑濡� �럹�씠吏�</h1>
				<form action="./tt.do">
					<div style="width:90%;">
						<input type="text" name="tt" style="width:40%;height:40px;"/>
						<button type="submit" class="btn btn-primary">寃��깋</button>
						<button type="button" style="float:right;" class="btn btn-outline-info"
							onclick="history.back(-1);">紐⑸줉�씠�룞</button>
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
					<th>移댄뀒怨좊━</th>
					<td>
						<select name="goodsCategory" id="" class="form-control" 
								style="width:40%;text-align:center;">
							<option value="�꽑�깮">�꽑�깮�븯�꽭�슂</option>
							<option value="�뭹1">�뭹紐�1</option>
							<option value="�뭹2">�뭹紐�2</option>
							<option value="�뭹3">�뭹紐�3</option>
							<option value="�뭹4">�뭹紐�4</option>
							<option value="�뭹5">�뭹紐�5</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>嫄곕옒諛⑸쾿</th>
					<td>
						<select name="del_type" id="" class="form-control" 
								style="width:40%;text-align:center;">
							<option value="�꽑�깮">�꽑�깮�븯�꽭�슂</option>
							<option value="吏곴굅�젅">吏곴굅�젅</option>
							<option value="�깮諛곌굅�옒">�깮諛곌굅�옒</option>
							<option value="洹몄쇅嫄곕옒">洹몄쇅嫄곕옒</option>
							<option value="�뿰�씫�썑�빀�쓽" >�뿰�씫�썑�빀�쓽</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>�젣紐�</th>
					<td>
					<div class="form-group">
						<input type="text" name="goodsName" id="" value="" 
							class="form-control" style="width:84%" />
					</div>
					</td>
				</tr>
				<tr>
					<th>�븘�씠�뵒</th>
					<td>
						<h2>�뙋留ㅼ옄 �븘�씠�뵒瑜� �벝源뚮쭚源� 怨좊�� �꽦�꽦</h2>
						<input type="text" name="goodsWriter" id=""  />
					</td>
				</tr>
				<tr>
					<th>媛�寃�</th>
					<td>
						<input type="text" name="goodsPrice" class="form-control" 
							id="goodsPrice"  onkeypress="isNumber();" />
					</td>
				</tr>
				<tr>
					<th>�닔�웾</th>
					<td>
						<input type="number" name="goodsStock" id="goodsStock"  style="width:30%;"
							class="form-control" onkeypress="isNumber();" />
					</td>
				</tr>
				<tr>
					<th>�씠誘몄��</th>
					<td>
						<p>�뜽�꽕�씪濡� �궗�슜�븷 �씠誘몄��瑜� �꽑�깮�븯�꽭�슂</p>
						<div class="filebox bs3-primary" style="margin-right:80px; display:inline-block;">
                            <input class="upload-name" value="�뙆�씪�꽑�깮" disabled="disabled">
                            <label for="filename" id="clickFile" >�뾽濡쒕뱶</label> 
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
					<th>�젙蹂댁젣怨듬룞�쓽</th>
					<td>
						<input type="checkbox" name="infoAgree" id="infoAgree"  />
							�긽�뭹�벑濡앹젙蹂댁쓽 嫄곕옒�뾽泥� �젣怨듬룞�쓽(�븘�닔)
					</td>
				</tr>
				<tr>
					<th>�뙋留ㅼ옄�젙蹂�</th>
					<td>
						<div style="text-align:center; width:60%;">
							<p><a href="">�뿰�씫泥� 蹂�寃�</a></p>
							<p>�뿰�씫泥� : 010-5315-7568</p>
							<p>�씠硫붿씪 : akdie213@naver.com</p>
							<br>
							<div style="text-align:left">
								<input type="checkbox" name="phoneAgree" id="phoneAgree" />
									�뙋留ㅼ옄 �뿰�씫泥섏젙蹂� �끂異� �룞�쓽  &nbsp;&nbsp;&nbsp;
								<input type="checkbox" name="emailAgree" id="emailAgree" />
									�뙋留ㅼ옄 �씠硫붿씪�젙蹂� �끂異� �룞�쓽<br>
							</div>
						</div>
						
					</td>
				</tr>
				<tr >
					<th>�긽�뭹�꽕紐�</th>
					<td style="padding-top:50px;  padding-bottom:60px;">
						<textarea name="goodsContent" id="contentsCk"  style="width:92%;"
							class="form-control">�궡�슜�쓣 �엯�젰�븯�꽭�슂</textarea>
					</td>
					<script type="text/javascript">
						var editor = CKEDITOR.replace('contentsCk', {
							height : 800,
							filebrowserImageUploadUrl: './ckUpload.do'
						});
					</script>
				</tr>
				<tr>
					<th>�옄�룞�벑濡앸갑吏�</th>
					<td style="">
						<div style="display:inline-block; margin-bottom:20px; width:300px;
							text-align:center;">
							<img src="" alt="111" id="captImg" width="250"/><br>
							<h4 style="font-size:20px; color:black;">�옄�룞�벑濡앸갑吏�瑜� �빐二쇱꽭�슂</h4>
						</div>
						<div style="display:inline-block; margin-left:80px;width:420px;
								padding-top:60px;">
							<p>�삊諛붾줈 �엯�젰�븯�떗�떆�삤!!蹂몄씤�씤利앹쓣 �븯吏� �븡怨� 媛꾪렪�씤利앹쓣 �븯�떆�뒗 怨좉컼�떂猿섏꽌�뒗 
								�씪遺� �젣�쑕 �꽌鍮꾩뒪媛� �젣�븳�맆 �닔 �엳�뒿�땲�떎.</p>
							<input type="text" name="inputValue" id="inputValue"  value=""
								style="width:300px; height:60px; font-size:22px;" />
							
							<button type="button" class="btn btn-info" id="captBtn"
								style="width:80px; height:60px; margint-left:10px;">�솗�씤</button>
							<input type="hidden" name="key" id="key" value=""/>
							<input type="hidden" name="capResult" id="capResult" value="0"/>
							<br>
							<button type="button" class="btn btn-outline-danger" id="capRefresh">
								�깉濡쒓퀬移�</button>
							
						</div>
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<td colspan="2" style="text-align:center; ">
						<input type="submit" value="�벑濡앺븯湲�" style="margin-top:40px;"
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
		<h3>�씠�윴�떇�쑝濡� �븣�븘�꽌 �떎�뱾 �븯�떆�삤</h3>
		
	
	</div>

	
		
<!-- about us (our staff �씪�씤�엯�땲�떎 -->		
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