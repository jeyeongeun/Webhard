<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>관리자 페이지</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery.leanModal.min.js"></script>


<style>

div .logoArea{height:  100px;}
div .mainArea{background-color: #8FCEFF; float:left; width:100%;  height: 400px; padding-top:50px; text-align: center;}
div .mainArea .font1{font-size: 45px; color: #fff; font-weight: bold; width: 100px;}
div .mainArea .font2{font-size: 25px; color: #fff; font-weight: bold; width: 100%;}
div .mainArea .p1{font-size: 15px; color: #fff; font-weight: bold; width: 100%;  text-align: right;}
div .loginArea{background-color: ; height: 300px; width:100%; text-align: center; float: left;}
div .loginArea .inputArea{padding-top: 30px; }
div .loginArea .inputArea .inputBox{ width:420px; margin:0 auto;}
div .loginArea .inputArea .inputBox .lbl{ float:left; font-size:30px; padding-top:5px;  width: 150px; height: 30px; }
div .loginArea .inputArea .inputBox .intBox{ float:left; width:250px; font-size:30px; border-radius: 5px; height: 45px;}
div .btnArea{float: left; width:100%; text-align: center; padding-top:20px; }
div .btnArea .label_chk1{font-size:30px; font-weight: bold;}
div .btnArea .chk1{font-size:1px; font-weight: bold; border: 1px solid #748BFF; width: 30px; height: 20px;}
div .btnArea .btn1{margin-left:40px; background-color:#748BFF; font-size:30px; font-weight: bold; border: 1px solid #748BFF; height: 45px; border-radius: 5px;}
div .btnArea .btn2{margin-left:40px; background-color:#FF3533; font-size:30px; font-weight: bold; border: 1px solid #FF3533; height: 45px; border-radius: 5px;}

#lean_overlay {
    position: fixed;
    z-index:100;
    top: 0px;
    left: 0px;
    height:100%;
    width:100%;
    background: #000;
    display: none;
}

#signup {
    background: none repeat scroll 0 0 #FFFFFF;
    border-radius: 5px 5px 5px 5px;
    box-shadow: 0 0 4px rgba(0, 0, 0, 0.7);
    display: none;
    padding-bottom: 2px;
    width: 600px;
}

#signup-header {
    border-bottom: 1px solid #CCCCCC;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    padding: 18px 18px 14px;
}

#signup-header h2 {
    color: #444444;
    font-size: 1.3em;
    font-weight: 700;
    margin-bottom: 3px;
    text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5);
}

#signup-header p {
    color: #444444;
    font-size: 1.3em;
    margin: 0;
    text-shadow: none;
    padding-left: 25px;
}

#signup .txt-fld {
    border-bottom: 1px solid #EEEEEE;
    padding: 14px 20px;
    position: relative;
    text-align: right;
    width: 500px;
}

#signup .txt-fld label {
    color: #222222;
    display: block;
    float: left;
    font-size: 18px;
    padding-top: 8px;
    text-align: left;
    width: 150px;
}

#signup .txt-fld input.good_input {
    background: url("images/good.png") no-repeat scroll 236px center #DEF5E1;
}

#signup .txt-fld input {
    background: none repeat scroll 0 0 #F7F7F7;
    border-color: #CCCCCC #E7E6E6 #E7E6E6 #CCCCCC;
    border-radius: 4px 4px 4px 4px;
    border-style: solid;
    border-width: 1px;
    color: #222222;
    font-family: "Helvetica Neue";
    font-size: 1.2em;
    outline: medium none;
    padding: 8px;
    width: 300px;
}

#signup .btn-fld {
    overflow: hidden;
    padding: 12px 20px 12px 130px;
    width: 450px;
}

.button1{
    background: none repeat scroll 0 0 #648CFF;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    color: #FFFFFF;
    float: right;
    font-family: "Helvetica Neue","Helvetica","Arial",sans-serif;
    font-weight: bold;
    overflow: visible;
    padding: 7px 10px;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
    width: auto;
    margin-left: 10px;
}
.button2{
    background: none repeat scroll 0 0 #32B8FF;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    color: #FFFFFF;
    float: right;
    font-family: "Helvetica Neue","Helvetica","Arial",sans-serif;
    font-weight: bold;
    overflow: visible;
    padding: 7px 10px;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
    width: auto;
    margin-left: -10px;
}
</style>
</head>
<body>
	<div id="login-wrap">
		<div class="logoArea">
			<a href="http://khu.ac.kr" target="new"><img src="${pageContext.request.contextPath}/경희대학교로고.png" alt="경희대학교 로고" style="height: 100px;"/></a>
		</div>
		<div class="mainArea">
			<font class="font1">EZStorage</font><br/>
			<font class="font2">With Tags</font><br/><br/>
			<font class="font2">태그와 함께, 쉽고 빠르게</font><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			<!-- <p class="p1">Copyringht @ 2015 All rights reserved by 경희대학교 인터넷 프로토콜 및  프로그래밍 팀&nbsp;&nbsp;</p> -->
		</div>
		<div class="loginArea">
			<form name="form1" id="loginForm" method="post" action="">
				<div class="inputArea">
					<div class="inputBox">
						<label for="Ls_Uid" class="lbl">사용자 ID</label> <input value="testtest" type="text" name="j_username" id="id" class="intBox" onkeydown="if(event.keyCode==13) Sendit();" /> <br/><br/><br/>
						<label for="Ls_Pwd" class="lbl">비밀 번호</label> <input value="111111" type="password" name="j_password" id="pw" class="intBox" onkeydown="if(event.keyCode==13) Sendit();" />
					</div>
				</div>
				<p class="btnArea">
					<input class="chk1" name="" type="checkbox" id="check_Login"	onclick="" /><label for="check_Login" class="label_chk1">로그인유지</label>
					<input class="btn1" name="btnLogin" type="button" id="Btn_Login" onclick="Sendit()" value="로그인" />
					<a id="go" rel="leanModal" name="signup" href="#signup"><input class="btn2"  type="button"  name=""id="" onclick="" value="회원가입" /></a>
				</p>
				<br/>
			</form>
		</div>
	</div>

	<div id="signup" style="display: none;">
	    <div id="signup-ct">
	        <div id="signup-header">
	            <h2>EZ Storage에 오신 것을 환영합니다.</h2>
	            <p>태그 기반 파일 관리 시스템, EZ Storage입니다.</p>
	            <a href="#"></a>
	        </div>
	        <form action="">
	            <div class="txt-fld">
	                <label for="id">사용자 ID</label>
	                <input type="text" name="id" id="id"/>
	            </div>
	            <div class="txt-fld">
	                <label for="pw">비밀번호</label>
	                <input type="text" name="pw" id="pw"/>
	            </div>
	            <div class="txt-fld">
	                <label for="pw_check">비밀번호 확인</label>
	                <input type="text" name="pw_check" id="pw_check"/>
	            </div>
	            <div class="txt-fld">
	                <label for="lastName">성</label>
	                <input type="text" name="lastName" id="lastName"/>
	            </div>
	            <div class="txt-fld">
	                <label for="firstName">이름</label>
	                <input type="text" name="firstName" id="firstName"/>
	            </div>
	            <div class="btn-fld">
	                <button type="submit" class="button1">취소</button>
	                <button class="button2">가입하기</button>
	            </div>
	        </form>
	    </div>
	</div>
	<script type="text/javascript" language="javascript">
	$(document).ready(function() {

		$("a[rel*=leanModal]").leanModal({ top : 200, overlay : 0.4, closeButton: ".button1" });	 
			 
		});

		//	로그인
		function Sendit() {
			var id = $("#id");
			var pw = $("#pw");

			if (!id.val().length > 0) {
				alert("아이디를 입력하세요.");
				id.focus();
			}
			else {
				location.href='${pageContext.request.contextPath}/main.jsp' 
			}
		}

		
	</script>
</body>
</html>