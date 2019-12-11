<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>비밀번호 찾기</title>
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
            div.article table input#id_search{
                width:198px;
                height:45px;
                margin-top:10px;
                margin-bottom:10px;
                color:black;
                background-color:lightgray;
                border:1px solid lightgray;
                font-size:15px;
                cursor:pointer;
                outline:none;
                opacity:0.5;
            }
            div.article table input#pw_search{
                width:198px;
                height:45px;
                margin-top:10px;
                margin-bottom:10px;
                color:black;
                background-color:white;
                border:1px solid lightgray;
                font-size:15px;
                cursor:pointer;
                outline:none;
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
                margin-top:10px;
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
    </head>
    <body>
        <div id="wrap">
            <div class="header">
                <a href="main"><img src="/mdk/resources/imgs/logo.png"></a>
            </div>
            <div class="article">
                <form>
                    <table>
                        <tr>
                            <td><input id="id_search" type="button" value="아이디 찾기" onclick="location.href='id_search'"><input id="pw_search" type="button" value="비밀번호 찾기" onclick="location.href='pw_search'"></td>
                        </tr>
                        <tr>
                            <td><input id="input" type="text" name="id" placeholder="아이디"></td>
                        </tr>
                        <tr>
                            <td><input id="input" type="text" name="name" placeholder="이름"></td>
                        </tr>
                        <tr>
                            <td><input id="input" type="text" name="phone" placeholder="휴대전화 번호 ( ' - ' 생략 )"></td>
                        </tr>
                        <tr>
                            <td><input id="login" type="button" value="비밀번호 찾기"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>