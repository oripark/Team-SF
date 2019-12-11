<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>고객센터</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <style>
        	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
            body{
            	font-family: 'Hanna', sans-serif;
                margin:0;
            }
            textarea{
            	font-family: 'Hanna', sans-serif;
            }
            div#wrap{
                margin:0; 
                width:100%;
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
            div.article div.section1 table#category{
                width:100%;
                margin:auto;
                border-collapse: collapse;
                margin-bottom:20px;
            }
            div.section1{
				margin-bottom:20px;
				padding-left:40px;
            }
            div.article div.section1 table#category td{
                width:540px;
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
            #no{
                width:100px;
            }
            #title{
                width:700px;
            }
            div.section{
				
            }
			div.article div.section table{
                width:100%;
                margin:auto;
                border-collapse: collapse;
            }
            div.article div.section table td#title{
                height:45px;
                font-size:28px;
                padding:10px 40px;
                background-color:#F8F8F8;
                border-top:1px solid #20d2b8;
            }
            div.article div.section table td#info{
                width:1080px;
                height:40px;
                font-size:18px;
                padding:10px 20px;
                text-align: right;
                border-top:1px solid #20d2b8;
                border-bottom:1px solid #20d2b8;
            }
            div.article div.section table td#contents{
                height:300px;
                font-size:18px;
                padding:10px 40px;
            }
            div.article div.section table td#button{
                height:45px;
                font-size:18px;
                float:right;
                margin-bottom:20px;
            }
            div.article div.section table td#button button{
				font-family: 'Hanna', sans-serif;
            	font-size:16px;                
                width:100px;
                height:40px;
                background-color:#20d2b8;
                outline:0;
                border:0;
                color:white;
                cursor:pointer;
                border-radius:5px;
            }
            div.article div.section table td#reple_title{
                height:35px;
                background-color:#F8F8F8;
                padding:10px 40px;
                border-top:1px solid #20d2b8;
                border-bottom:1px solid #20d2b8;
            }
            div.article div.section table td#reple_contents{
                padding:10px 40px;
                padding-bottom:30px;
                border-bottom:1px solid #20d2b8;
            }
            div.article div.section table td#reple_contents span{
                color:gray;
                font-size:15px;
            }
            div.article div.section table td#reple_txt{
                padding-top:50px;
                float:right;
            }
            div.article div.section table td#reple_txt textarea{                
                width:1060px;
                height:100px;
                resize:none;
                padding:40px;
            }
            div.article div.section table td#reple_button input{
            	font-family: 'Hanna', sans-serif;
            	font-size:16px;                
                width:100px;
                height:40px;
                float:right;
                margin-bottom:20px;
                background-color:#20d2b8;
                outline:0;
                border:0;
                color:white;
                cursor:pointer;
                border-radius:5px;
            }
            button#x{
            	float:right;
            	font-family: 'Hanna', sans-serif;
            	border:0;
            	outline:0;
            	cursor:pointer;
            	background-color:white;
            	color:gray;
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
        <script type="text/javascript">
        	function reple_check(){
        		var form = document.repleForm;
        		if(!form.reple_txt.value){
        			alert('내용을 입력해 주세요.')
					form.reple_txt.focus();
					return;
        		}
        		form.submit();
        	}
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
                            <td>
                                <span id="no1">1:1 Q&A</span><br>
                                <span id="no2">질문 전 챗봇(자주 묻는 질문)을 먼저 확인해주세요.</span>
                            </td>
                        </tr>
                    </table>
                </div>
             	<div class="section">
                    <table>
                        <tr>
                            <td id="title">${board_view.title}</td>
                        </tr>
                        <tr>
                        	<c:set var="TextValue" value="${board_view.board_date}"/>
                            <td id="info"><img src="/mdk/resources/imgs/person.png">${board_view.member_name} <img src="/mdk/resources/imgs/clock.png"> ${fn:substring(TextValue,0,16)}</td>
                        </tr>
                        <tr>
                            <td id="contents">${board_view.contents}</td>
                        </tr>
                        <tr>
                            <td id="button"><button onclick="if(confirm('삭제 하시겠습니까?')){location.href='board_delete?idx=${no}'}">삭제</button> <button onclick="if(confirm('수정 하시겠습니까?')){location.href='modify?idx=${no}'}">수정</button> <button onclick="location.href='cs'">목록</button></td>
                        </tr>
                        <tr>
                            <td id="reple_title">댓글</td>
                        </tr>
                        <c:forEach items="${reple_view}" var="dto">
                        <tr>
                            <td id="reple_contents">
                            	<c:set var="TextValue" value="${dto.reple_date}"/>
                                <p><img src="/mdk/resources/imgs/person.png"> ${dto.member_name} <span><img src="/mdk/resources/imgs/clock.png"> ${fn:substring(TextValue,0,16)}</span> <c:if test="${member_name == '관리자' || member_name == dto.member_name}"><button id="x" onclick="if(confirm('삭제 하시겠습니까?')){location.href='reple_delete?idx=${no}&no=${dto.no}'}">X</button></c:if></p>
                                <span>${dto.reple_txt}</span>
                            </td>
                        </tr>
                        </c:forEach>
                        <form name="repleForm" method="post" action="reple_ok">
                            <tr>
                                <td id="reple_txt">
                                    <textarea name="reple_txt"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td id="reple_button">
                                	<input style="display:none;" type="text" name="idx" value="${no}">
                                    <input type="button" value="등록" onclick="reple_check()">
                                </td>
                            </tr>
                        </form>
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