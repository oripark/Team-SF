<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>로그인</title>
        <style>
            body{
                margin:0;
            }
            div#wrap{
                margin:0;
                width:100%;
                text-align:center;
            }
            div.header{
                margin:20px 0 30px 0;
            }
            div.article{

            }
            div.article table{
                margin:auto;
            }
            div.article table input#input{
                width:385px;
                height:45px;
                margin-bottom:5px;
                padding-left:10px;
                border:1px solid lightgray;
            }
            div.article table input#login{
                width:400px;
                height:60px;
                margin-bottom:10px;
                color:white;
                background-color:#20d2b8;
                border:0;
                font-size:18px;
                font-weight: bold;
                cursor:pointer;
                outline:none;
            }
            div.article table a{
                text-decoration:none;
                color:gray;
            }
            div.article table a:hover{
                font-weight: bold;
            }
        </style>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script>
        	function loginCheck(){
        		var form = document.loginForm;
        		if(!form.id.value){
					document.getElementById("guide").innerHTML="아아디를 입력해주세요.";
					form.id.focus();
					return;
        		}
        		if(!form.pw.value){
					document.getElementById("guide").innerHTML="비밀번호 입력해주세요.";
					form.pw.focus();
					return;
        		}
        		return form.submit();
        	}
        	$(document).keydown(function(event) {
				if (event.keyCode == '13') {
					loginCheck();
				}
			});
        </script>
    </head>
    <body>
        <div id="wrap">
            <div class="header">
                <a href="main"><img src="/mdk/resources/imgs/logo.png"></a>
            </div>
            <div class="article">
                <form name="loginForm" method="post" action="login_ok">
                    <table>
                        <tr>
                            <td><input id="input" type="text" name="id" placeholder="아이디를 입력해 주세요." autofocus></td>
                        </tr>
                        <tr>
                            <td><input id="input" type="password" name="pw" placeholder="비밀번호를 입력해 주세요."></td>
                        </tr>
                        <tr>
                        	<td>
                        		<span id="guide" style="color:red;">
									<c:if test="${msg == 'fail'}">
										아이디 또는 비밀번호가 틀렸습니다.
                					</c:if>
                        		</span><br>
                        	</td>
                        </tr>
                        <tr>
                            <td><input id="login" type="button" value="로그인" onclick="loginCheck()"></td>
                        </tr>
                        <tr>
                            <td>
                                <a href="signUp">회원 가입</a> │
                                <a href="id_search">아이디 찾기</a> │
                                <a href="pw_search">비밀번호 찾기</a>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>