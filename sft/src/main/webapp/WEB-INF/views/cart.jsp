<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>장바구니</title>
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
            div.article div.section1 table#category td span#no2 button{
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
            div.article div.section1 table#category td span#no3 button{
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
			div.article div.section1 table#category td span#no4 button{
            	font-family: 'Hanna', sans-serif;
            	font-size:17px;
                width:100px;
                height:40px;
                background-color:white;
                border:1px solid lightgray;
                cursor:pointer;
                outline:none;
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
            div.article div.section2 table#board{
                width:1080px;
                margin:auto;
                border-collapse: collapse;
                margin-bottom:50px;
            }
            div.article div.section2 table#board tr#h{
                border:1px solid #20d2b8;
            }
            div.article div.section2 table#board th{
                font-size: 22px;
                font-weight:normal;
                height:50px;
            }
            #no{
                width:100px;
            }
            #title{
                width:400px;
            }
            #state{
            	width:150px;
            }
            #price{
            	width:150px;
            }
            div.article div.section2 table#board td{
                text-align:center;
                height:50px;
            }
            div.article div.section2 table#board td#title{
                text-align:left;
                padding-left:200px;
            }
            div.article div.section2 table#board tr#d{
                border-bottom:1px solid #20d2b8;
            }
            div.article div.section2 table#board tr#d td a{
                color:black;
                text-decoration: none;
            }
            div.article div.section2 table#board td#b{
                text-align: right;
                padding-right:10px;
            }
            div.article div.section2 table#board td#b button{
                width:100px;
                height:40px;
                cursor:pointer;
                border-radius: 5px;
                background-color:#20d2b8;
            }
            div.article div.section2 table#board tr#d:hover{
                background-color:#F4F4F4;
            }
            button#order{
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
            }
            div.footer{
				position:absolute;
				bottom:-265px;
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
        <script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    	<script>
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
                    <table id="board">
                        <tr id="h">    
                            <th id="no">번호</th>
                            <th id="title">상품명</th>
                            <th id="price">판매가</th>
                            <th id="no">수량</th>
                            <th id="state">관리</th>
                        </tr>
                        <c:choose>
							<c:when test="${count == 0}">
		                        <tr id="d">
		                        	<td colspan="5" style="height:100px; color:gray;">장바구니에 담긴 상품이 없습니다.</td>
		                        </tr>
	                        </c:when>
                        <c:otherwise>
	                        <% int i = 1; %>
	                        <c:forEach items="${cart_view}" var="dto">
	                        	<tr id="d">    
		                            <td><%= i++ %></td>
		                            <td id="title"><a href="product?idx=${dto.cart_no}"><img src="${dto.image_path}" width="70" height="70" style="vertical-align:middle;"> ${dto.card_name}</a></td>
		                            <td>${dto.card_price}원</td>
		                            <td>${dto.amount}개</td>
		                            <td><button id="del" onclick="if(confirm('삭제 하시겠습니까?')){location.href='cart_del?no=${dto.no}'}">삭제하기</button></td>
		                        </tr>
	                        </c:forEach>
                        </c:otherwise>
                        </c:choose>
                        <tr>
                        	<td colspan="5"><button id="order" onclick="location.href='order_cart'">주문서 작성</button>
                        </tr>
                    </table>
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
