<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>주문서 작성</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <style>
        	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
            body{
            	font-family: 'Hanna', sans-serif;
                margin:0;
                line-height:20px;
            }
            div#wrap{
                margin:0; 
                width:100%;
            }
            div.header1{ 
                width:1080px;
                margin-bottom:40px;
                margin-right:auto;
                margin-left:auto;
                border-bottom:1px solid #20d2b8;
            }
            div.header1 ul{
                list-style:none;
            }
            div.header1 ul li{
                display:inline;
            }
            div.header1 ul li a{
                text-decoration:none;
                color:black;
                font-size:24px;
                margin-right:50px;
            }
            div.header1 ul li a img{
                vertical-align:middle;
            }
            div.header1 li#menu2 a{
                color:black;
                float:right;
                font-size:17px;
                font-weight: normal;
            }
            div.header1 a:hover{
                text-decoration: underline;
            }
            div.article{
               width:1080px;
                margin-left:auto;
                margin-right:auto;
                margin-bottom:20px;
            }
            button#del{
            	font-family: 'Hanna', sans-serif;
            	font-size:15px;
            	height:30px;
            	background-color:white;
                cursor:pointer;
                border:1px solid lightgray;
                outline:none;
            }
            table#product{
                width:1080px;
                margin:auto;
                border-collapse: collapse;
                margin-bottom:50px;
            }
			table#product tr#d{
                border:1px solid #20d2b8;
            }
            table#product th{
                font-size: 22px;
                font-weight:normal;
                height:50px;
            }
            #no{
                width:100px;
            }
            #title{
                width:700px;
            }
            table#product td{
                text-align:center;
                height:50px;
            }
            table#product tr#d{
                border-bottom:1px solid #20d2b8;
            }
            table#product tr#d td a{
                color:black;
                text-decoration: none;
            }
            table#product td#b{
                text-align: right;
                padding-right:10px;
            }
            div.article div.section2 table#product td#b button{
                width:100px;
                height:40px;
                cursor:pointer;
                border-radius: 5px;
                background-color:#20d2b8;
            }
            input#order{
            	font-family: 'Hanna', sans-serif;
            	font-size:18px;
                width:200px;
                height:60px;
                background-color:#20d2b8;
                border:1px solid #20d2b8;
                color:white;
                cursor:pointer;
                outline:1px solid #20d2b8;
                margin-top:10px;
                text-align:center;
                margin:auto;
            }
            table#buyer{
            	width: 1080px;
            	border-collapse: collapse;
            	margin-bottom: 50px;
            }
            table#buyer tr{
            	border:1px solid #20d2b8;
            }
            table#buyer td{
            	padding:10px 5px;
            }
            table#buyer td#t{
            	width:100px;
            }
            div.section5{
            	width:1080px;
            	text-align:center;
            }
            span#no1{
            	font-size:22px;
            }
            span#no2{
            	color:gray; 
            	font-size:16px;
            }
            #postsearch{
            	font-family: 'Hanna', sans-serif;
            	font-size:15px;
            	background-color:#20d2b8;
                cursor:pointer;
                border:1px solid #20d2b8;
                color:white;
                outline:none;
            }
			input{
            	font-family: 'Hanna', sans-serif;
            	font-size: 16px;
            }
            textarea{
            	font-family: 'Hanna', sans-serif;
            	font-size: 16px;
            }
            div.footer{
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
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script type="text/javascript">
        	function order_check(){
        		var IMP = window.IMP; // 생략가능
        		IMP.init('iamport'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        		
        		var form = document.orderForm;
        		if(!form.buyer_name.value){
					document.getElementById("bnc").innerHTML="구매인 이름을 입력해주세요.";
					document.getElementById("bnc").style.display = 'block';
					form.buyer_name.focus();
					return;
				}
				else{
					document.getElementById("bnc").innerHTML="";
					document.getElementById("bnc").style.display = 'none';
				}
        		if(!form.buyer_phone.value){
					document.getElementById("bpc").innerHTML="구매인 휴대전화를 입력해주세요.";
					document.getElementById("bpc").style.display = 'block';
					form.buyer_phone.focus();
					return;
				}
				else{
					document.getElementById("bpc").innerHTML="";
					document.getElementById("bpc").style.display = 'none';
				}
        		if(!form.buyer_email.value){
					document.getElementById("bec").innerHTML="구매인 이메일을 입력해주세요.";
					document.getElementById("bec").style.display = 'block';
					form.buyer_email.focus();
					return;
				}
				else{
					document.getElementById("bec").innerHTML="";
					document.getElementById("bec").style.display = 'none';
				}
        		if(!form.recipient_name.value){
					document.getElementById("rnc").innerHTML="수령인 이름을 입력해주세요.";
					document.getElementById("rnc").style.display = 'block';
					form.recipient_name.focus();
					return;
				}
				else{
					document.getElementById("rnc").innerHTML="";
					document.getElementById("rnc").style.display = 'none';
				}
        		if(!form.recipient_phone.value){
					document.getElementById("rpc").innerHTML="수령인 휴대전화를 입력해주세요.";
					document.getElementById("rpc").style.display = 'block';
					form.recipient_phone.focus();
					return;
				}
				else{
					document.getElementById("rpc").innerHTML="";
					document.getElementById("rpc").style.display = 'none';
				}
        		if(!form.postcode.value){
					document.getElementById("rac").innerHTML="수령인 주소를 입력해주세요.";
					document.getElementById("rac").style.display = 'block';
					form.postcode.focus();
					return;
				}
				else{
					document.getElementById("rac").innerHTML="";
					document.getElementById("rac").style.display = 'none';
				}
        		if(!form.detailAddress.value){
					document.getElementById("rac").innerHTML="수령인 상세주소를 입력해주세요.";
					document.getElementById("rac").style.display = 'block';
					form.detailAddress.focus();
					return;
				}
				else{
					document.getElementById("rac").innerHTML="";
					document.getElementById("rac").style.display = 'none';
				}
        		IMP.request_pay({
        		    pg : 'inicis', // version 1.1.0부터 지원.
        		    pay_method : 'card',
        		    merchant_uid : 'merchant_' + new Date().getTime(),
        		    name : '주문명:결제테스트',
        		    amount : 14000,
        		    buyer_email : 'iamport@siot.do',
        		    buyer_name : '구매자이름',
        		    buyer_tel : '010-1234-5678',
        		    buyer_addr : '서울특별시 강남구 삼성동',
        		    buyer_postcode : '123-456',
        		    //m_redirect_url : 'https://www.yourdomain.com/payments/complete'
        		}, function(rsp) {
        		    if ( rsp.success ) {
        		        var msg = '결제가 완료되었습니다.';
        		        msg += '고유ID : ' + rsp.imp_uid;
        		        msg += '상점 거래ID : ' + rsp.merchant_uid;
        		        msg += '결제 금액 : ' + rsp.paid_amount;
        		        msg += '카드 승인번호 : ' + rsp.apply_num;
        		    } else {
        		        var msg = '결제에 실패하였습니다.';
        		        msg += '에러내용 : ' + rsp.error_msg;
        		    }
        		    alert(msg);
        		    form.submit();
        		});
        	}
            var i = 0;
			function execDaumPostcode(){
		    	new daum.Postcode({
		     	   oncomplete: function(data) {
		      	      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		      	      // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		               // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
		               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		               var roadAddr = data.roadAddress; // 도로명 주소 변수
		               var extraRoadAddr = ''; // 참고 항목 변수
		
		               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                   extraRoadAddr += data.bname;
		               }
		               // 건물명이 있고, 공동주택일 경우 추가한다.
		               if(data.buildingName !== '' && data.apartment === 'Y'){
		                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		               }
		               // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		               if(extraRoadAddr !== ''){
		                   extraRoadAddr = ' (' + extraRoadAddr + ')';
		               }
		
		               // 우편번호와 주소 정보를 해당 필드에 넣는다.
		               document.getElementById('postcode').value = data.zonecode;
		               document.getElementById("roadAddress").value = roadAddr;
		               document.getElementById("jibunAddress").value = data.jibunAddress;
		               
		               // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
		               if(roadAddr !== ''){
		                   document.getElementById("extraAddress").value = extraRoadAddr;
		               } else {
		                   document.getElementById("extraAddress").value = '';
		               }
		
		               var guideTextBox = document.getElementById("guide");
		               // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
		               if(data.autoRoadAddress) {
		                   var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
		                   guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
		                   guideTextBox.style.display = 'block';
		
		               } else if(data.autoJibunAddress) {
		                   var expJibunAddr = data.autoJibunAddress;
		                   guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
		                   guideTextBox.style.display = 'block';
		               } else {
		                   guideTextBox.innerHTML = '';
		                   guideTextBox.style.display = 'none';
		               }
		      	  }
		    	}).open();
			}
			$(document).ready(function()
					{ 
					    $("input:radio[name=ad]").click(function() 
					    { 
					    	if($("input[name=ad]:checked").val()=="new"){
					    		$("#recipient_name").val("");
					    		$("#recipient_phone").val("");
					    		$("#postcode").val("");
					    		$("#roadAddress").val("");
					    		$("#jibunAddress").val("");
					    		$("#guide").css('display', 'none');
					    		$("#extraAddress").val("");
					    		$("#detailAddress").val("");
					    	}
					    	else{
					    		$("#recipient_name").val("${login_view.member_name}");
					    		$("#recipient_phone").val("${login_view.member_phone}");
					    		$("#postcode").val("${login_view.member_postcode}");
					    		$("#roadAddress").val("${login_view.member_roadAddress}");
					    		$("#jibunAddress").val("${login_view.member_jibunAddress}");
					    		$("#extraAddress").val("${login_view.member_extraAddress}");
					    		$("#detailAddress").val("${login_view.member_detailAddress}");
					    	}
					    }) 
					});
        </script>
    </head>
    <body>
    	<script id="embeddedChatbot" data-botId="B1eekk" src="https://www.closer.ai/js/webchat.min.js"> </script>
        <div id="wrap">
            <div class="header">
                <div class="header1">
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
            </div>
            <div class="article">
            	<form name="orderForm" method="post" action="order_ok_2">
                <div class="section2">
                	&nbsp;<span id="no1">상품 정보</span> <span id="no2">Product Info</span>
                    <table id="product">
                        <tr id="d">
                        	<th id="no">번호</th>    
                            <th id="title">상품 정보</th>
                            <th id="no">수량</th>
                            <th id="date">상품 금액</th>
                        </tr>
                        <tr id="d">
                        	<td>1</td>    
                            <td><img src="${image_path}" width="70" height="70" style="vertical-align:middle;"> ${card_name}</td>
                            <td>${amount}개</td>
                            <td>${card_price}원</td>
                            <input style="display:none;" type="text" name="cart_no" value="${card_no}">
                            <input style="display:none;" type="text" name="del_no" value="${del_no}">
                            <input style="display:none;" type="text" name="amount" value="${amount}">
                        </tr>
                        <tr>
                        	<td></td>
                        	<td></td>
                        	<td></td>
                        	<td>배송비 : 2,500원<br>총금액 : ${all_price}원</td>
                        </tr>
                    </table>
                </div>
                <div class="section1">
                	&nbsp;<span id="no1">구매자 정보</span> <span id="no2">Buyer Info</span>
                	<table id="buyer">
                		<tr>
                			<td id="t">구매인</td><td id="d"><input type="text" name="buyer_name" value="${login_view.member_name}"><br><span id="bnc" style="color:red;display:none"></span></td>
                		</tr>
                		<tr>
                			<td id="t">휴대전화</td><td id="d"><input type="text" name="buyer_phone" value="${login_view.member_phone}"><br><span id="bpc" style="color:red;display:none"></span></td>
                		</tr>
                		<tr>
                			<td id="t">이메일</td><td id="d"><input type="text" name="buyer_email" value="${login_view.member_email}"><br><span id="bec" style="color:red;display:none"></span></td>
                		</tr>	
                	</table>
                </div>
                <div class="section3">
                	&nbsp;<span id="no1">수령자 정보</span> <span id="no2">Recipient Info</span> <input id="basic" type="radio" name="ad" value="basic" checked><label for="basic">구매자 정보</label> <input id="new" type="radio" name="ad" value="new"><label for="new">새로운 정보</label>
					<table id="buyer">
                		<tr>
                			<td id="t">수령인</td><td id="d"><input type="text" name="recipient_name" id="recipient_name" value="${login_view.member_name}"><br><span id="rnc" style="color:red;display:none"></span>
                		</tr>
                		<tr>
                			<td id="t">휴대전화</td><td id="d"><input type="text" name="recipient_phone" id="recipient_phone" value="${login_view.member_phone}"><br><span id="rpc" style="color:red;display:none"></span>
                		</tr>
                		<tr>
                			<td id="t">배송지 주소</td><td id="d"><input type="text" id="postcode" name="postcode" value="${login_view.member_postcode}" placeholder="우편번호" readonly>
                                <input type="button" id="postsearch" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                                <input type="text" id="roadAddress" name="roadAddress" placeholder="도로명주소" value="${login_view.member_roadAddress}" readonly><br>
                                <input type="text" id="jibunAddress" name="jibunAddress" placeholder="지번주소" value="${login_view.member_jibunAddress}" readonly ><br>
                                <span id="guide" style="color:#999;display:none"></span><br>
                                <input type="text" id="extraAddress" name="extraAddress" value="${login_view.member_extraAddress}" placeholder="참고항목" readonly ><br>
                                <input type="text" id="detailAddress" name="detailAddress" value="${login_view.member_detailAddress}" placeholder="상세주소">
                                <br/><span id="rac" style="color:red;display:none"></span></td>
                		</tr>
                		<tr>
                			<td id="t">배송 메모</td><td id="d"><textarea style="width:400px; height:50px;"></textarea></td>
                		</tr>
                	</table>
                </div>
                <div class="section4">
                	&nbsp;<span id="no1">결제 정보</span> <span id="no2">Payment Info</span>
                	<table id="buyer">
                		<tr>
                			<td id="t">결제 수단</td><td id="d"><input type="radio" checked>계좌이체</td>
                		</tr>
                		<tr>
                			<td id="t">결제 안내</td><td id="d">계좌이체는 주문 시 안내된 계좌에 고객님이 이체를 하는 결제 방식입니다. <br> 다른 방식은 준비중에 있으며 하루빨리 준비하겠습니다. 감사합니다.</td>
                		</tr>
                	</table>
                </div>
                <div class="section5">
					<input type="button" id="order" onclick="order_check()" value="주문하기">
                </div>
                </form>
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
