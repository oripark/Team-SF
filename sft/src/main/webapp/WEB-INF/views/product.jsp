<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>교육용 카드</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <style>
        	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
            body{
            	font-family: 'Hanna', sans-serif;
                margin:0;
            }
            div#wrap{
                margin:0; 
                width:100%;
            }
            div.header{ 
                width:1080px;
                margin-bottom:50px;
                margin-right:auto;
                margin-left:auto;
                border-bottom:1px solid #20d2b8;
            }
            div.header ul{
                list-style:none;
            }
            div.header ul li{
                display:inline;
            }
            div.header ul li a{
                text-decoration:none;
                color:black;
                font-size:24px;
                margin-right:50px;
            }
            div.header ul li a img{
                vertical-align:middle;
            }
            div.header li#menu2 a{
                color:black;
                float:right;
                font-size:17px;
                font-weight: normal;
            }
            div.header a:hover{
                text-decoration: underline;
            }
            div.article{
                width:1080px;
                margin-left:auto;
                margin-right:auto;
                margin-bottom:50px;
            }
            div.section1{
            	margin-bottom:50px;
            }
            div.section2{
            
            }
            div.section2 input#number{
            	font-family: 'Hanna', sans-serif;
            	width:30px;
            }
			div.section2 input#plus, div.section2 input#minus{
            	width:20px;
            	border:1px solid gray;
            	outline:0;
            	cursor:pointer;
            	background-color:white;
            }
			div.section2 input#plus{
            	border-right:0;
            }
            div.section2 input#buy, div.section2 input#cart{
            	font-family: 'Hanna', sans-serif;
            	width:150px;
            	height:60px;
            	background-color:#20d2b8;
            	color:white;
            	outline:0;
            	border:0;
            	cursor:pointer;
            	font-size:18px;
            }
            #slider {
				position: relative;
			  	overflow: hidden;
			  	border-radius: 4px;
			}
			#slider2 {
				position: relative;
				overflow:hidden;
			}
			
			#slider ul {
			  	position: relative;
			  	margin: 0;
			  	padding: 0;
			  	height: 200px;
			  	list-style: none;
			}
			
			#slider2 ul {
			  	position: relative;
			  	margin: 0;
			  	padding: 0;
			  	list-style: none;
			}
			
			#slider ul li {
			  	position: relative;
			  	display: block;
			  	float: left;
			  	margin: 0;
			  	padding: 0;
			  	width: 510px;
			  	height: 400px;
			  	text-align: center;
			  	line-height: 300px;
			}
			
			#slider2 ul li {
			  	position: relative;
			}
			
			button.control_prev, button.control_next {
				font-family: 'Hanna', sans-serif;	
				position: absolute;
			  	top: 40%;
			  	z-index: 999;
			  	display: block;
			  	padding: 4% 3%;
			  	width: 50px;
			  	height: 60px;
			  	background: rgba(255,0,0,0);
			  	color: black;
			  	text-decoration: none;
			  	font-size: 26px;
			  	border:0;
			  	outline:0;
			  	cursor: pointer;
			}
			
			button.control_prev:hover, button.control_next:hover {
			  	opacity: 1;
			  	-webkit-transition: all 0.2s ease;
			}
				
			button.control_prev {
			  	border-radius: 0 2px 2px 0;
			}
			
			button.control_next {
			  	right: 0;
			  	border-radius: 2px 0 0 2px;
			}
			
			#slider2 ul li img{
				opacity: 0.5;
			}
			
			#slider2 ul li:first-child img{
				opacity: 1.0;
			}
			td{
				padding:5px 0;
			}
			input#d{
				font-family: 'Hanna', sans-serif;
				border:0;
				outline:0;
				font-size:18px;
			}
            div.footer{
            	position:absolute;
				bottom:-50px;
            	display:table; 
            	color:white;
            	clear:both;
            	position:relative;
                width:1900px;
                margin:auto;
                text-align:center;
                line-height:22px;
                font-size:18px;
                height:100px; 
                background-color:rgb(64, 64, 64);
            }
            #footer1{
            	display:table-cell; vertical-align:middle; width:1300px;
            }
            .fa-3x{
            	display:table-cell; vertical-align:middle; text-align:left;
            }
            .fa-3x a{
            	text-decoration:none;
            	color:white;
            }
        </style>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script type="text/javascript">
        	function plus_button(){
        		if(parseInt(document.getElementById("number").value) < 999)
	        		document.getElementById("number").value = parseInt(document.getElementById("number").value)+1;
        	}
        	function minus_button(){
	        	if(parseInt(document.getElementById("number").value) > 1)
	        		document.getElementById("number").value = parseInt(document.getElementById("number").value)-1;
        	}
            var i = 0;
            jQuery(document).ready(function ($) {
          	  
            	var slideCount = $('#slider ul li').length;
            	var slideWidth = $('#slider ul li').width();
            	var slideHeight = $('#slider ul li').height();
            	var sliderUlWidth = slideCount * slideWidth;
            	var cnt = 1;
            	
            	$('#slider').css({ width: slideWidth, height: slideHeight });
            	
            	$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
            	
                $('#slider ul li:last-child').prependTo('#slider ul');

                function moveLeft() {
                	cnt--;
                    $('#slider ul').animate({
                        left: + slideWidth
                    }, 200, function () {
                        $('#slider ul li:last-child').prependTo('#slider ul');
                        $('#slider ul').css('left', '');
                        if(cnt<1)
                        	cnt=3;
                        $('#slider2 ul li img').css('opacity','0.5');
                        $('#slider2 ul li:nth-child('+cnt+') img').css('opacity','1.0');
                    });
                };
                
                function moveRight() {
                	cnt++;
                    $('#slider ul').animate({
                        left: - slideWidth
                    }, 200, function () {
                        $('#slider ul li:first-child').appendTo('#slider ul');
                        $('#slider ul').css('left', '');
                        if(cnt>slideCount)
                        	cnt=1;
                        $('#slider2 ul li img').css('opacity','0.5');
                        $('#slider2 ul li:nth-child('+cnt+') img').css('opacity','1.0');
                        
                    });
                };

                $('button.control_prev').click(function () {
                    moveLeft();
                });

                $('button.control_next').click(function () {
                    moveRight();
                });

            });
            
            $(function(){
				$("#cart").click(function(){
					var login_no = <%=session.getAttribute("member_no")%>;
					var cart_no = ${card_detail.no};
					var amount = document.getElementById("number").value;
					var image_path = "${card_detail.image_path}";
					var query = {"login_no" : login_no, "cart_no" : cart_no, "amount" : amount, "image_path" : image_path};
					$.ajax({
						url : "cartCheck",
						type : "post",
						data : query,
						success : function(respone) {
							var check = confirm("장바구니에 담겼습니다.\n장바구니로 이동하시겠습니까?")
							if(check)
								location.replace("cart") 
						},
						error : function(request, status, error ) {   // 오류가 발생했을 때 호출된다. 
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						},
						complete : function () {   // 정상이든 비정상인든 실행이 완료될 경우 실행될 함수
						}
					}); 
				});
			});
            function order(){
            	var form = document.orderForm;
            	if("${member_name}" == null){
            		location.href="login";
            	}
            	else{
            		form.submit();
            	}
            }
        </script>
    </head>
    <body>
    	<script id="embeddedChatbot" data-botId="B1eekk" src="https://www.closer.ai/js/webchat.min.js"> </script>
        <div id="wrap">
            <div class="header">
            	<ul>
	                <li><a href="main"><img src="/mdk/resources/imgs/logo.png"/></a></li>
                	<li id="menu1"><a href="card">교육용 카드</a></li>
						<c:choose>
                        	<c:when test="${member_name != null}">
                        		<c:choose>
                        			<c:when test="${member_name == '관리자'}">	
	                        			<li id="menu1"><a href="adminpage">관리페이지</a></li>	
                        			</c:when>
                        			<c:otherwise>
			                        	<li id="menu1"><a href="mypage">마이페이지</a></li>
	                        		</c:otherwise>
	                        	</c:choose>
                        		<li id="menu1"><a href="cs">고객센터</a></li>
                        	</c:when>
                        	<c:otherwise>
                        		<li id="menu1"><a href="login">마이페이지</a></li>
                        		<li id="menu1"><a href="login">고객센터</a></li>
                        	</c:otherwise>
                        </c:choose>
                        
						<c:choose>
                        	<c:when test="${member_name != null}">
								<li id="menu2"><a href="logout">로그아웃</a></li>
                        		<li id="menu2"><a href="mypage">${member_name} 님</a></li>                      
                        	</c:when>
                        	<c:otherwise>
                        		<li id="menu2"><a href="login">로그인</a></li>
                        		<li id="menu2"><a href="signUp">회원가입</a></li>
                        	</c:otherwise>
                        </c:choose>
            	</ul>
            </div>
            <div class="article">
            	<div class="section1" style="float:left; width:540px;">
	                <div id="slider" style="display:inline; float:left; margin-bottom:5px;">
						<button class="control_next">&gt;</button>
						<button class="control_prev">&lt;</button>
						<ul>				 
							<li><img src="${card_detail.detail_image_path_1}" alt="제품사진"/></li>
							<li><img src="${card_detail.detail_image_path_2}" alt="제품사진"/></li>
							<li><img src="${card_detail.detail_image_path_3}" alt="제품사진"/></li>
						</ul>
					</div>
					<div id="slider2" style="width:500px; height:150px; margin-left:5px;">
						<ul style="list-style:none">
							<li style="display:inline;"><img src="${card_detail.detail_image_path_1}" alt="제품사진'" width="162px" height="150px"/></li>
							<li style="display:inline;"><img src="${card_detail.detail_image_path_2}" alt="제품사진'" width="162px" height="150px"/></li>
							<li style="display:inline;"><img src="${card_detail.detail_image_path_3}" alt="제품사진'" width="162px" height="150px"/></li>
						</ul>				
					</div>
				</div>
				<div class="section2" style="float:right;">
					<div style="width:540px; height:600px;float:right">
					<form name="orderForm" method="post" action="order_now">
						<table style="width:540px; margin-bottom: 20px;">
						<input style="display:none;" type="text" name="card_no" value="${idx}">
						<tr>
						<td><span style="font-size:22px;">제품정보</span> <span style="color:gray; font-size:16px;">Product Info</span></td>
						</tr>
						<tr>
						<td style="font-size:18px; border-bottom:1px solid #20d2b8; padding-bottom:20px">-상품명 <input id="d" name="card_name" type="text" value="&lt; ${card_detail.card_name} &gt;" readonly><input style="display:none;" name="image_path" type="text" value="${card_detail.image_path}" readonly></td>
						</tr>
						<tr>
						<td><span style="font-size:22px;">가격정보</span> <span style="color:gray; font-size:16px;">Price Info</span></td>
						</tr>
						<tr>
						<td style="font-size:18px; border-bottom:1px solid #20d2b8; padding-bottom:20px">-상품 가격 <input id="d" name="card_price" type="text" value="&lt; ${card_detail.card_price}원 &gt;" readonly></span></td>
						</tr>
						<tr>
						<td><span style="font-size:22px;">배송정보</span> <span style="color:gray; font-size:16px;">Delivery Info</span></td>
						</tr>
						<tr>
						<td style="font-size:18px; border-bottom:1px solid #20d2b8; padding-bottom:20px">-배송비 <span  style="">&lt; 2,500원 &gt;</span></td>
						</tr>
						<tr>
						<td><span style="font-size:22px;">옵션정보</span> <span style="color:gray; font-size:16px;">Option Info</span></td>
						</tr>
						<tr>
						<td style="font-size:18px; border-bottom:1px solid #20d2b8; padding-bottom:20px">-수량 <input id="number" name="amount" type="text" value="1"> <input id="plus" type="button" value="+" onclick="plus_button()"><input id="minus" type="button" value="-" onclick="minus_button()"></td>
						</tr>
						<tr>
						<td><input id="buy" type="button" onclick="order()" value="바로구매"> <input id="cart" type="button" value="장바구니"></td>
						</table>
					</form>
					</div>
            	</div>
            </div>
			<div class="footer">
            	<div id="footer1">
            		공상과학기술 강원도 춘천시 한림대학길 1 CLC 107호<br>
					전화 : 033 - 248 - 1010  팩스 : 0502 - 1234 - 5678<br>
					이메일 : SFT@gmail.com  사업자 등록번호 : 123 - 45 - 67890호<br>
					ⓒ 2019 SFT All Rights Reserved.
				</div>

            	<div class="fa-3x">
            		<a href="https://www.youtube.com/?gl=KR&hl=ko" target="_blank"><i class="fab fa-youtube"></i></a>
            		<a href="https://ko-kr.facebook.com/" target="_blank"><i class="fab fa-facebook-square"></i></a>
            		<a href="https://twitter.com/?lang=ko" target="_blank"><i class="fab fa-twitter"></i></a>
            		<a href="https://www.instagram.com/?hl=ko" target="_blank"><i class="fab fa-instagram"></i></a>
            	</div>
            	
            </div>
        </div>
    </body>
</html>