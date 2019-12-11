<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>메인</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <style>
        	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
            body{
            	font-family: 'Hanna', sans-serif;
                margin:0;
            }
            div#wrap{
                margin:0; 
                width:100%;`
                margin-right:auto;
                margin-left:auto;
            }
            div.header{
                background-image: url("/mdk/resources/imgs/home.png");
                background-repeat: no-repeat;
                background-position: center;
            }
            div.header1{ 
                width:1080px;
                margin-bottom:50px;
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
                font-weight:normal;
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
            div.header2{
                width:1080px;
                margin-left:auto;
                margin-right:auto;
                height:500px;

            }
            div#header2_1{
                width:1080px;
                padding-top:50px;
                margin-left:auto;
                margin-right:auto;
            }
            div#header2_2{
                width:1080px;
                margin-left:auto;
                margin-right:auto;
            }
            button#app{
                width:200px;
                height:60px; 
                background-image :url("/mdk/resources/imgs/apple.png");
                background-repeat: no-repeat;
                outline:0;
                border:0;
                cursor:pointer;
                overflow:hidden;
            }
            button#google{
                width:200px;
                height:60px; 
                background-image :url("/mdk/resources/imgs/google.png");
                background-repeat: no-repeat;
                outline:0;
                border:0;
                cursor:pointer;
                overflow:hidden;
            }
            div.article{
                width:1080px;
                margin:auto;
            }
            div.section{

            	padding-top:20px;
                width:100%;
            }
			div.rotator{
                width:532px;
                height:372px;
                background-image: url('/mdk/resources/imgs/r_ipad.png');
                background-repeat: no-repeat;
                float:left;
                margin-bottom:50px;
            }
            div.ex{
            	margin-top:20px;
            	margin-left:50px;
            	float:left;
            	font-size:22px;
            	line-height:30px;
            }
            div.rotator img{
            	width: 441px;
            	height: 290px;
                padding: 41px 45.5px;
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
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
        <script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
        <script>
            $(document).ready(function(){
                $('.rotator').cycle({
                    fx: 'fade',
                    timeout: 1000
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
                <div class="header2">
                    <div id="header2_1">
                        <img src="/mdk/resources/imgs/text.png">
                    </div>
                    <div id="header2_2">
                        <button id="app" onclick="window.open('https://www.apple.com/kr/ios/app-store/')"></button> <button id="google" onclick="window.open('https://play.google.com/store/apps?utm_source=apac_med&utm_medium=hasem&utm_content=Apr0119&utm_campaign=Evergreen&pcampaignid=MKT-DR-apac-kr-1003227-med-hasem-ap-Evergreen-Apr0119-Text_Search_BKWS-BKWS%7cONSEM_kwid_43700009359644019_creativeid_268791854615_device_c&gclid=EAIaIQobChMIirDBp7zC4gIVgRsqCh1z9QFbEAAYASAAEgL-YvD_BwE&gclsrc=aw.ds')"></button>
                    </div>
                </div>
            </div>
            <div class="article">
                <div class="section">
                    <div class="rotator">
                    	<img src="/mdk/resources/imgs/i1.png">
                    	<img src="/mdk/resources/imgs/i2.png">
                    	<img src="/mdk/resources/imgs/i3.png">
                    	<img src="/mdk/resources/imgs/i4.png">
                    	<img src="/mdk/resources/imgs/i5.png">
        			</div>
        			<div class="ex">
        				<span style="font-size:40px;">재미있는 한글공부!</span>
        				<ul style="list-style:square; padding-left:20px;">
						<li>IOS 또는 Android용 앱을 다운로드 받으세요</li>
						<li>앱을 열고 원하는 모드를 선택하세요</li>
						<li>따라쓰기
							<ul style="list-style:none; padding-left:10px;">
  							<li>- 그림에 나와있는 순서대로 한글을 따라쓰세요</li>
  							</ul>
  						</li>
						<li>AR공부
							<ul style="list-style:none; padding-left:10px;">
  								<li>- 낱말카드를 카메라로 비추면 재미있는 일이 벌어집니다.</li>
  							</ul>
  						</li>
						<li>홀로그램
							<ul style="list-style:none; padding-left:10px;">
  								<li>- 홀로그램 뷰어를 위에 올려보세요!</li>
  							</ul>
  						</li>
						<li>한글을 즐겁게 공부하세요!</li>
						</ul>
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
