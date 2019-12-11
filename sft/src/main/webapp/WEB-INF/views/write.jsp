<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>고객센터</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <style>
        	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
        	input{
        		font-family: 'Hanna', sans-serif;
        	}
        	textarea{
        		font-family: 'Hanna', sans-serif;
        	}
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
				padding-left:40px;
            }
            div.article div.section table{
                width:1080px;
                border-collapse: collapse;
            }
            div.article div.section table tr{
                
            }
            div.article div.section table td{
                padding-bottom:15px;
            }
            div.article div.section table tr td#title{
                font-size:28px;
                width:150px;
            }
            div.article div.section table tr td input#title{
                width:700px;
                height:30px;
                padding-left:10px;
            }
            div.article div.section table tr td#contents{
                font-size:28px;
                width:150px;
                vertical-align: top;
            }
            div.article div.section table tr td textarea#contents{
                width:693px;
                height:400px;
                resize:none;
                padding:10px;
            }
            div.article div.section table tr td#button{
                text-align: right;
                padding-right:210px;
            }
            div.article div.section table tr td#button input{
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
            div.footer{
            	position:absolute;
				bottom:-20px;
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
        	function write_check(){
        		var form = document.writeForm;
        		if(!form.title.value){
        			document.getElementById("titlec").innerHTML="제목을 입력해주세요.";
					document.getElementById("titlec").style.color = 'red';
					document.getElementById("titlec").style.display = 'block';
					form.title.focus();
					return;
        		}
        		else{
					document.getElementById("titlec").innerHTML="";
					document.getElementById("titlec").style.display = 'none';
				}
        		if(!form.contents.value){
        			document.getElementById("contentsc").innerHTML="내용을 입력해주세요.";
					document.getElementById("contentsc").style.color = 'red';
					document.getElementById("contentsc").style.display = 'block';
					form.contents.focus();
					return;
        		}
        		else{
					document.getElementById("contentsc").innerHTML="";
					document.getElementById("contentsc").style.display = 'none';
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
                    <form name="writeForm" method="post" action="write_ok">
                        <table>
                            <tr>
                                <td id="title">제목</td>
                                <td><input id="title" type="text" name="title"><br><span id="titlec" style="color:red;display:none"></span></td>
                            </tr>
                            <tr>
                                <td id="contents">내용</td>
                                <td><textarea id="contents" name="contents"></textarea><br><span id="contentsc" style="color:red;display:none"></td>
                            </tr>
                            <tr>
                                <td id="button" colspan="2">
                                    <input type="button" value="확인" onclick="write_check()"> 
                                    <input type="button" value="취소" onclick="javascript:history.back(-1)">
                                </td>
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