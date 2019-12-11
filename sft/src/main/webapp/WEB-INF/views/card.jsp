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
                /*border:2px solid #20d2b8;*/
                border-radius: 30px;
                width:247px;
                float:right;
            }
            div.section1 p{
                color:gray;
                font-size:22px;
                margin-left:7px;
                letter-spacing:2px;
            }
            div.section1 span{
                color:#2dd1b8;
                border-bottom:2px solid #2dd1b8;
            }
            div.section1 ul#category{
                list-style: none;
                padding:0;
            }
            div.section1 ul#category li{
            	font-size:18px;
                margin-left:10px;
                margin-bottom: 10px;
                border-bottom:1px solid lightgray;
            }
            div.section1 ul#category li a{
                color:black;
                text-decoration: none;
            }
            div.section1 ul#category li:hover{
                font-size:20px;
            }
            div.section2{
                width:820px;
                float:left;
            }
            div.section2 div.card{
                display:inline;
                float: left;
                width:247px;
                margin-bottom:30px;
                margin-right:25px;
                text-align: center;
            }
			div.section2 div.card a#name{
				display:inline-block;
				text-decoration:none;
				color:black;
				font-size:22px;
				margin-bottom:5px;
            }
            div.section2 div.card span{
				color:gray;
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
            div#index a{
            	text-decoration:none;
            	color:gray;
            }
			div.footer{
				position:absolute;
				bottom:-275px;
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
                <div class="section2">
                	<c:forEach items="${card_list}" var="dto">                    
                    	<div class="card">
                    		<a href="product?idx=${dto.no}"><img src=${dto.image_path} alt="카드"></a><br>
                        	<a id="name" href="product?idx=${dto.no}">${dto.card_name}</a><br>
                        	<span>${dto.card_price}원</span>
                    	</div>
                    </c:forEach>

                    <div id="index">
                   		<c:if test="${pg > page_size}">
                   	 		<a href="card?pg=1">◀◀</a> <a href="card?pg=${startPage - 1}">◀</a>
                         	</c:if>
                   		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
                   			<c:choose>
                   				<c:when test="${i == pg}">
                    				<u><b>${i}</b></u>
                   				</c:when>
               					<c:otherwise>
                    				<a href="card?pg=${i}">${i}</a>
                   				</c:otherwise>
                   			</c:choose>
							<c:if test="${endPage < allPage }">
                   				<a href="card?pg=${endPage+1}">▶</a> <a href="card?pg=${allPage}">▶▶</a>
                   			</c:if>                    			
                   		</c:forEach>
                    </div>
                </div>
                <div class="section1">
                    <p><span>카테고리</span></p>
                    <ul id="category">
                        <li><a href="#">자·모음</a></li>
                        <li><a href="#">동물</a></li>
                        <li><a href="#">식물</a></li>
                        <li><a href="#">사물</a></li>
                        <li><a href="#">음악</a></li>
                        <li><a href="#">공룡</a></li>
                        <li><a href="#">음식</a></li>
                        <li><a href="#">탈 것</a></li>
                        <li><a href="#">케릭터</a></li>
                        <li><a href="#">기타</a></li>
                    </ul>
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