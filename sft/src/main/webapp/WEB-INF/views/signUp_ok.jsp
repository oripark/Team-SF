<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입 완료</title>
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
                margin-right:auto;
                margin-left:auto;
                margin-bottom:50px;
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
                line-height: -100px;
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
                margin-bottom:20px;
            }
            div.section1{
                /*border:2px solid #20d2b8;*/
                border-radius: 30px;
                width:247px;
                float:right;
            }
            div.section1 p{
                color:gray;
                font-size:20px;
                margin-left:7px;
            }
            div.section1 span{
                border-bottom: 2px solid gray;
            }
            div.section1 ul#category{
                list-style: none;
                padding:0;
            }
            div.section1 ul#category li{
                margin-left:10px;
                margin-bottom: 10px;
                border-bottom:1px solid lightgray;
            }
            div.section1 ul#category li a{
                color:black;
                text-decoration: none;
            }
            div.section1 ul#category li:hover{
                font-size:18px;
            }
            div.section2{
                width:820px;
                float:left;
            }
            div.section2 div.card{
                display:inline;
                float: left;
                width:247px;
                height:381px;
                margin-right:25px;
                text-align: center;
            }
            div.section2 div#index{
            	clear:both;
                width:820px;
                text-align: center;
            }
            div.section2 div#index ul{
            	padding-left:0;
            }
            div.section2 div#index li{
            	list-style:none;
            	display:inline;
            }
            div.article{
            	text-align:center;
            }
            div.article img{
            	width:820px;
            	margin:auto;
            	margin-bottom:20px;
            	display:block;
            }
			div.article button{
				font-family: 'Hanna', sans-serif;
				font-size:17px;
                width:200px;
                height:60px;
                margin:0 15px;
                color:white;
                background-color:#20d2b8;
				border:0;
				outline:0;
                border-radius:10px;
                font-size:18px;
                cursor:pointer;
                outline:none;
            }
            div.footer{
            	position:absolute;
				bottom:-250px;
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
        <script type="text/javascript">
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
                <img src="/mdk/resources/imgs/welcome.jpg"/>
				<button onclick="location.href='main'">홈으로</button>
				<button onclick="location.href='login'">로그인</button>
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