<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <style>
            body{
                margin:0;
            }
            div#wrap{
                margin:0;
                width:100%;
            }
            div.header{
                margin:20px 0 30px 0;
                text-align:center;
            }
            div.article{

            }
            div.article table{
                margin:auto;
            }
            div.article table input#id, div.article table input#pw, div.article table input#name, div.article table input#postcode, div.article table input#roadAddress, div.article table input#jibunAddress, div.article table input#extraAddress, div.article table input#detailAddress, div.article table input#phone, div.article table input#email{
                width:385px;
                height:45px;
                margin-top:5px;
                margin-bottom:5px;
                padding-left:10px;
                border:1px solid lightgray;
            }
            div.article table input#check{
                width:80px;
                height:45px;
                margin-left:-80px;
                background-color:#20d2b8;
                border:1px solid #20d2b8;
                outline:1px solid #20d2b8;
                cursor:pointer;
                outline:none;
                padding-bottom:4px;
                color:white;
            }
            div.article table input#postsearch{
				border:1px solid #20d2b8;
                outline:1px solid #20d2b8;
                width:100px;
                height:45px;
                margin-left:-106px;
                background-color:#20d2b8;
                border:none;
                cursor:pointer;
                outline:none;
                padding-bottom:4px;
                color:white;
            }
            div.article table input#phone{
                width:108px;
            }
            div.article table select{
                width:129px;
                height:45px;
                margin-top:5px;
            }
            div.article table input#signup{
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
        </style>
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
       	<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script type="text/javascript">
			var cc = false;
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
			function signUp_check(){
				var form = document.signUpForm;
				if(!form.id.value){
					document.getElementById("idc").innerHTML="아아디를 입력해주세요.";
					document.getElementById("idc").style.color = 'red';
					document.getElementById("idc").style.display = 'block';
					form.id.focus();
					return;
				}
				else{
					document.getElementById("idc").innerHTML="";
					document.getElementById("idc").style.display = 'none';
				}
				var idRule = /^[A-Za-z0-9]{4,18}$/;
				if(!(idRule.test(form.id.value))){
					document.getElementById("idc").innerHTML="아이디는 영문/숫자 4~18자리 입니다.";
					document.getElementById("idc").style.color = 'red';
					document.getElementById("idc").style.display = 'block';
					form.id.focus();
					return;
				}
				else{
					document.getElementById("idc").innerHTML="";
					document.getElementById("idc").style.display = 'none';
				}
				if(!form.pw_1.value){
					document.getElementById("pw_1c").innerHTML="비밀번호를 입력해주세요.";
					document.getElementById("pw_1c").style.display = 'block';
					form.pw_1.focus();
					return;
				}
				else{
					document.getElementById("pw_1c").innerHTML="";
					document.getElementById("pw_1c").style.display = 'none';
				}
				var passwordRule = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
				if(!(passwordRule.test(form.pw_1.value))){
					document.getElementById("pw_1c").innerHTML="비밀번호는 영문/숫자/특수문자 8~16자리 입니다.";
					document.getElementById("pw_1c").style.display = 'block';
					form.pw_1.focus();
					return;
				}
				else{
					document.getElementById("pw_1c").innerHTML="";
					document.getElementById("pw_1c").style.display = 'none';
				}
				if(!form.pw_2.value || (form.pw_1.value != form.pw_2.value)){
					document.getElementById("pw_2c").innerHTML="비밀번호를 확인해주세요.";
					document.getElementById("pw_2c").style.display = 'block';
					form.pw_2.focus();
					return;
				}
				else{
					document.getElementById("pw_2c").innerHTML="";
					document.getElementById("pw_2c").style.display = 'none';
				}
				if(!form.name.value){
					document.getElementById("namec").innerHTML="이름을 입력해주세요.";
					document.getElementById("namec").style.display = 'block';
					form.name.focus();
					return;
				}
				else{
					document.getElementById("namec").innerHTML="";
					document.getElementById("namec").style.display = 'none';
				}
				if(!(form.birth_year.value) || !(form.birth_month.value) || !(form.birth_day.value)){
					document.getElementById("birthc").innerHTML="생년월일을 확인해주세요.";
					document.getElementById("birthc").style.display = 'block';
					return;
				}
				else{
					document.getElementById("birthc").innerHTML="";
					document.getElementById("birthc").style.display = 'none';
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
				if(!form.phone_1.value || !form.phone_2.value || !form.phone_3.value){
					document.getElementById("phonec").innerHTML="휴대전화를 입력해주세요.";
					document.getElementById("phonec").style.display = 'block';
					form.phone_1.focus();
					return;
				}
				else{
					document.getElementById("phonec").innerHTML="";
					document.getElementById("phonec").style.display = 'none';
				}
				var phoneRule = /^[0-9]+$/;
				if(!(phoneRule.test(form.phone_1.value)) || !(phoneRule.test(form.phone_2.value)) || !(phoneRule.test(form.phone_3.value))){
					document.getElementById("phonec").innerHTML="휴대전화를 확인해주세요.";
					document.getElementById("phonec").style.display = 'block';
					form.phone_1.focus();
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
				if(!cc){
					document.getElementById("idc").innerHTML="아아디를 중복확인해주세요.";
					document.getElementById("idc").style.color = 'red';
					document.getElementById("idc").style.display = 'block';
					form.id.focus();
					return;
				}
				else{
					document.getElementById("idc").innerHTML="";
					document.getElementById("idc").style.display = 'none';
				}
				form.submit();
			}
			$(function(){
				$("#check").click(function(){
					var query = {"id" : $('#id').val()};
					$.ajax({
						url : "idCheck",
						type : "post",
						data : query,
						success : function(respone) {
							if(respone == 1) {
								$("#idc").text("중복된 아이디 입니다.");
								$("#idc").attr("style", "display:block");
								$("#idc").attr("style", "color:red");
							} else {
								$("#idc").text("사용가능한 아이디 입니다.");
				    			$("#idc").attr("style", "display:block");
				    			$("#idc").attr("style", "color:blue");
				    			cc = true;
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
        <div id="wrap">
            <div class="header">
                <a href="main"><img src="/mdk/resources/imgs/logo.png"></a>
            </div>
            <div class="article">
                <form name="signUpForm" method="post" action="signUp">
                    <table>
                        <tr>
                            <td>
                                아이디<br>
                                <input type="text" id="id" name="id" placeholder="영문/숫자 4~18자리 " autofocus><input id="check" type="button" value="중복확인"><br>
                                <span id="idc" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                비밀번호<br>
                                <input type="password" id="pw" name="pw_1" placeholder="영문/숫자/특수문자 8~16자리"><br>
                                <span id="pw_1c" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                비밀번호 확인<br>
                                <input type="password" id="pw" name="pw_2"><br>
                                <span id="pw_2c" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                이름<br>
                                <input type="text" id="name" name="name"><br>
                                <span id="namec" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                생년월일<br>
                    <select name="birth_year">
						<option value="">-- 년도 --</option>
						<%
							for(int i=1930; i<=2019; i++){
						%>
						<option value=<%=i %>><%=i %></option>
						<%
							}
						%>
					</select>
					<select name="birth_month">
						<option value="">-- 월 --</option>
						<%
							for(int i=1; i<=12; i++){
						%>
						<option value=<%=i %>><%=i %></option>
						<%
							}
						%>
					</select>
					<select name="birth_day">
						<option value="">-- 일 --</option>
						<%
							for(int i=1; i<=31; i++){
						%>
						<option value=<%=i %>><%=i %></option>
						<%
							}
						%>
					</select><br>
					<span id="birthc" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>	
                                주소<br>
                                <input type="text" id="postcode" name="postcode" placeholder="우편번호" readonly>
                                <input type="button" id="postsearch" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                                <input type="text" id="roadAddress" name="roadAddress" placeholder="도로명주소" readonly><br>
                                <input type="text" id="jibunAddress" name="jibunAddress" placeholder="지번주소" readonly ><br>
                                <span id="guide" style="color:#999;display:none"></span><br>
                                <input type="text" id="extraAddress" name="extraAddress" placeholder="참고항목" readonly ><br>
                                <input type="text" id="detailAddress" name="detailAddress" placeholder="상세주소"><br>
                                <span id="addressc" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                휴대전화<br>
                                <input type="text" id="phone" name="phone_1"> - <input type="text" id="phone" name="phone_2"> - <input type="text" id="phone" name="phone_3"><br>
                                <span id="phonec" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                이메일<br>
                                <input type="email" id="email" name="email"><br>
                                <span id="emailc" style="color:red;display:none"></span>
                            </td>
                        </tr>
                        <tr>
                            <td><input id="signup" type="button" value="회원가입" onclick="signUp_check()"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>