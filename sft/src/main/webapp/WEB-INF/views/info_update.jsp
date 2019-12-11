<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>정보 변경</title>
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
            div.section1{
            	padding-left:40px;
            }
            div.article div.section1 table#category{
                width:100%;
                margin:auto;
                border-collapse: collapse;
                margin-bottom:10px;
            }
            div.article div.section1 table#category td{
                width:540px;
            }
            div.article div.section1 table#category td span#no3 button{
            	font-size:17px;
                width:100px;
                height:40px;
                background-color:white;
                border:1px solid lightgray;
                cursor:pointer;
                outline:none;
                font-family: 'Hanna', sans-serif;
            }
            div.article div.section1 table#category td span#no2 button{
            	font-size:17px;
                width:100px;
                height:40px;
                background-color:lightgray;
                border:1px solid lightgray;
                cursor:pointer;
                outline:none;
                opacity:0.5;
                font-family: 'Hanna', sans-serif;
            }
			div.article div.section1 table#category td span#no4 button{
            	font-family: 'Hanna', sans-serif;
            	font-size:17px;
                width:100px;
                height:40px;
                background-color:lightgray;
                border:1px solid lightgray;
                cursor:pointer;
                outline:none;
                opacity:0.5;
            }
            span#no1{
                font-size: 20px;
                display:inline-block;
                margin-bottom:10px;
            }
            span#no2{
                font-size: 15px;
                display:inline-block;
                color:gray;
            }
            div.article div.section2 table{
                border-collapse: collapse;
                width:1080px;
                margin-bottom:50px;
            }
            div.article div.section2 table tr{
                border-top:1px solid lightgray;
                border-bottom:1px solid lightgray;
            }
            div.article div.section2 table td{
                padding:10px;
                font-size:17px;
            }
            div.article div.section2 table td#t{
                padding-left:40px;
            }
            div.article div.section2 table td#d{

            }
            div.article div.section2 table td#b{
                text-align: center;
                padding-right:220px;
            }
            input#postsearch{
                background-color:#20d2b8;
                border:1px solid #20d2b8;
                outline:1px solid #20d2b8;
                color:white;
                cursor:pointer;
                font-family: 'Hanna', sans-serif;
            }
			input#pwCheck{
                background-color:#20d2b8;
                border:1px solid #20d2b8;
                outline:1px solid #20d2b8;
                color:white;
                cursor:pointer;
                font-family: 'Hanna', sans-serif;
            }
            div.article div.section2 table td#b input{
            	font-size:17px;
                width:100px;
                height:40px;
                background-color:#20d2b8;
                outline:0;
				border:0;
                color:white;
                cursor:pointer;
                font-family: 'Hanna', sans-serif;
            }
            input{
            	font-family: 'Hanna', sans-serif;
            	font-size:16px;
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
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script>
			var pc = false;
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
            var i = 0;
            function updateInfo_check(){
				var form = document.updateInfoForm;
				
				if(!form.pw_1.value){
					document.getElementById("pw_1c").innerHTML="현재 비밀번호를 입력해주세요.";
					document.getElementById("pw_1c").style.display = 'block';
					form.pw_1.focus();
					return;
				}
				else{
					document.getElementById("pw_1c").innerHTML="";
					document.getElementById("pw_1c").style.display = 'none';
				}
				if(!form.pw_2.value){
					document.getElementById("pw_2c").innerHTML="변경 비밀번호를 입력해주세요.";
					document.getElementById("pw_2c").style.display = 'block';
					form.pw_2.focus();
					return;
				}
				else{
					document.getElementById("pw_2c").innerHTML="";
					document.getElementById("pw_2c").style.display = 'none';
				}
				var passwordRule = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
				if(!(passwordRule.test(form.pw_2.value))){
					document.getElementById("pw_2c").innerHTML="비밀번호는 영문/숫자/특수문자 8~16자리 입니다.";
					document.getElementById("pw_2c").style.display = 'block';
					form.pw_2.focus();
					return;
				}
				else{
					document.getElementById("pw_2c").innerHTML="";
					document.getElementById("pw_2c").style.display = 'none';
				}
				if(!form.pw_3.value || (form.pw_2.value != form.pw_3.value)){
					document.getElementById("pw_3c").innerHTML="비밀번호를 확인해주세요.";
					document.getElementById("pw_3c").style.display = 'block';
					form.pw_2.focus();
					return;
				}
				else{
					document.getElementById("pw_3c").innerHTML="";
					document.getElementById("pw_3c").style.display = 'none';
				}
				if(!(form.postcode.value)){
					document.getElementById("addressc").innerHTML="주소를 입력해주세요.";
					document.getElementById("addressc").style.display = 'block';
					return;
				}
				else{
					document.getElementById("addressc").innerHTML="";
					document.getElementById("addressc").style.display = 'none';
				}
				if(!(form.detailAddress.value)){
					document.getElementById("addressc").innerHTML="상세주소를 입력해주세요.";
					document.getElementById("addressc").style.display = 'block';
					return;
				}
				else{
					document.getElementById("addressc").innerHTML="";
					document.getElementById("addressc").style.display = 'none';
				}
				if(!form.phone.value){
					document.getElementById("phonec").innerHTML="휴대전화를 입력해주세요.";
					document.getElementById("phonec").style.display = 'block';
					form.phone.focus();
					return;
				}
				else{
					document.getElementById("phonec").innerHTML="";
					document.getElementById("phonec").style.display = 'none';
				}
				var phoneRule = /^[0-9]+$/;
				if(!(phoneRule.test(form.phone.value))){
					document.getElementById("phonec").innerHTML="휴대전화를 확인해주세요.";
					document.getElementById("phonec").style.display = 'block';
					form.phone.focus();
					return;
				}
				else{
					document.getElementById("phonec").innerHTML="";
					document.getElementById("phonec").style.display = 'none';
				}
				if(!form.email.value){
					document.getElementById("emailc").innerHTML="이메일을 입력해주세요.";
					document.getElementById("emailc").style.display = 'block';
					form.emailc.focus();
					return;
				}
				else{
					document.getElementById("emailc").innerHTML="";
					document.getElementById("emailc").style.display = 'none';
				}
				var emailRule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
				if(!(emailRule.test(form.email.value))){
					document.getElementById("emailc").innerHTML="이메일 형식을 맞춰주세요.";
					document.getElementById("emailc").style.display = 'block';
					form.email.focus();
					return;
				}
				else{
					document.getElementById("emailc").innerHTML="";
					document.getElementById("emailc").style.display = 'none';
				}
				if(!pc){
					document.getElementById("pw_1c").innerHTML="비밀번호를 확인해주세요.";
					document.getElementById("pw_1c").style.color = 'red';
					document.getElementById("pw_1c").style.display = 'block';
					form.pw_1c.focus();
					return;
				}
				else{
					document.getElementById("pw_1c").innerHTML="";
				}
				alert("수정되었습니다.");
				form.submit();
			}
            $(function(){
				$("#pwCheck").click(function(){
					var query = {"pw" : $('#pw').val()};
					$.ajax({
						url : "pwCheck",
						type : "post",
						data : query,
						success : function(respone) {
							if(respone == 1) {
								$("#pw_1c").text("비밀번호가 일치합니다.");
								$("#pw_1c").attr("style", "display:block");
				    			$("#pw_1c").attr("style", "color:blue");
								pc = true;
							} else {
								$("#pw_1c").text("비밀번호가 다릅니다.");
								$("#pw_1c").attr("style", "display:block");
								$("#pw_1c").attr("style", "color:red");
				    			pc = false;
							}
						},
						error : function(request, status, error ) {   // 오류가 발생했을 때 호출된다. 
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						},
						complete : function () {   // 정상이든 비정상인든 실행이 완료될 경우 실행될 함수
						}
					}); 
				});
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
                <div class="section1">
                    <table id="category">
                        <tr>
                            <td>
                                <span id="no1">Tel. 010-2488-0043</span><br>
                                <span id="no2">평일 9:00~18:00(점심 12:00~13:00)</span>
                            </td>
                            <td id="my">
                                <span id="no1">마이 페이지</span><br>
                                <span id="no2"><button onclick="location.href='mypage'">주문조회</button></span> <span id="no4"><button onclick="location.href='cart'">장바구니</button></span> <span id="no3"><button onclick="location.href='info_update'">정보변경</button></span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="section2">
                    <form name="updateInfoForm" method="post" action="info_update_ok">
                        <table>
                            <tr>
                                <td id="t">아이디</td>
                                <td id="d">${login_view.member_id}<br></td>
                            </tr>
                            <tr>
                                <td id="t">현재 비밀번호</td>
                                <td id="d"><input id="pw" name="pw_1" type="password"> <input type="button" id="pwCheck" value="비밀번호 확인"><br><span id="pw_1c" style="color:red;display:none"></span><br> </td>
                            </tr>
                            <tr>
                                <td id="t">변경 비밀번호</td>
                                <td id="d"><input name="pw_2" type="password" placeholder="영문/숫자/특수문자 8~16자리"><br><span id="pw_2c" style="color:red;display:none"></span><br></td>
                            </tr>
                            <tr>
                                <td id="t">비밀번호 확인</td>
                                <td id="d"><input name="pw_3" type="password"><br><span id="pw_3c" style="color:red;display:none"></span><br></td>
                            </tr>
                            <tr>
                                <td id="t">이름</td>
                                <td id="d">${login_view.member_name}<br></td>
                            </tr>
                            <tr>
                                <td id="t">생년월일<br></td>
                                <td id="d">${login_view.member_birth}<br></td>
                            </tr>
                            <tr>
                                <td id="t">주소</td>
                                <td id="d">
                                    <input type="text" id="postcode" name="postcode" placeholder="우편번호" value="${login_view.member_postcode}" readonly>
                                    <input type="button" id="postsearch" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                                    <input type="text" id="roadAddress" name="roadAddress" value="${login_view.member_roadAddress}" readonly><br>
                                    <input type="text" id="jibunAddress" name="jibunAddress" value="${login_view.member_jibunAddress}" readonly ><br>
                                    <span id="guide" style="color:#999;display:none"></span><br>
                                    <input type="text" id="extraAddress" name="extraAddress" value="${login_view.member_extraAddress}" readonly ><br>
                                    <input type="text" id="detailAddress" name="detailAddress" value="${login_view.member_detailAddress}"><br>
                                    <span id="addressc" style="color:red;display:none"></span><br>
                                </td>
                            </tr>
                            <tr>
                                <td id="t">휴대전화</td>
                                <td id="d"><input name="phone" type="text" value="${login_view.member_phone}"><br><span id="phonec" style="color:red;display:none"></span><br></td>
                            </tr>
                            <tr>
                                <td id="t">이메일</td>
                                <td id="d"><input name="email" type="email" value="${login_view.member_email}"><br><span id="emailc" style="color:red; display:none;"></span><br></td>
                            </tr>
                            <tr>
                                <td id="b" colspan="2"><input type="button" value="수정" onclick="updateInfo_check()"></td>
                            </tr>
                        </table>
                    </form>
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