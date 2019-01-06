<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.leanModal.min.js"></script>
<style>
body { font-family:"맑은 고딕";}
.wrap { float:left; width:100% }
li {list-style: none;}
a {text-decoration:none; color: #FFFFFF; }
.topArea{height:50px;  width:1000px; margin:0 auto; background-color: #8FCEFF; font-weight: bold; color: #FFFFFF; font-size: 30px; }
.topArea .logo{float:left; width:100px; height:50px; font-size: 30px; padding-left: 20px; } 
.topArea .status{float:left;  width:880px; height:50px; }
.topArea .status .picture {float:left; width:50px; height:30px; padding-left: 700px; margin-top: 10px; margin-bottom: 10px;}
.topArea .status .name {float:left; width:60px; font-size: 20px; text-align: center; line-height: 50px;}
.topArea .status .info {float:left; width:50px; height:50px; font-size: 20px; text-align: center; line-height: 50px; }
.topArea .status .info ul{float:left; height:50px; margin-top:-3px; margin-left:-25px; line-height: 50px; }
.topArea .status .info li:hover ul{display:block;   /* 마우스 커서 올리면 서브메뉴 보이게 하기 */}
.topArea .status .info li ul{background-color: #8FCEFF; display:none; width:130px; height:auto; padding:0px; margin-left:-75px; border:0px; position:absolute; z-index:200;}

.middleArea{ height:190px; width:1000px; margin:0 auto; font-weight: bold; }
.middleArea .picture{float:left; width:150px; height:170px; border-bottom: 1px solid black; border-right: 1px solid black; padding-top:20px; color:black; font-weight: bold; font-size: 20px; text-align: center; vertical-align: middle;}
.middleArea .info{float:left; height:190px; width:849px; border-bottom: 1px solid black; font-weight: bold; font-size: 30px; }
.middleArea .info .div1{float:left; width:849px; height:95px; border-bottom: 1px solid black; font-weight: bold; font-size: 20px; }
.middleArea .info .div1 .input1{width: 700px; height: 40px; margin-top:27.5px; margin-left:15px; margin-bottom:27.5px; border-radius: 5px; vertical-align: middle; font-size: 20px; }
.middleArea .info .div1 .img{margin-top:32.5px; margin-bottom:32.5px; vertical-align: middle;}
.middleArea .info .div2{float:left; width:834px; height:40px; font-weight: bold; font-size: 30px; margin-top:27.5px; margin-left:15px; margin-bottom:27.5px;}
.middleArea .info .div2 .span1{float:left; width:700px; }
.middleArea .info .div2 .span2{float:left; width:100px; padding-left: 20px;}

.mainArea{ width:1000px; margin:0 auto; font-weight: bold; font-size: 20px; }
.mainArea .div1 {text-align: center; display:none; padding: 30px; }
.mainArea .div1 .div {float:left; width: 889px; height: 100px; margin-top:10px; line-height:150px;}
.mainArea .div1 .img1{float:left; width: 150px; height: 150px; padding-left:200px;}
.mainArea .div1 .span{float:left; display:inline-block; width: 400px; height: 100px; font-size: 40px; }
.mainArea ul li{float:left; width:100px; height:130px; margin: 10px 20px 20px 10px;}
.mainArea ul li a{float:left; width:100px; color: #000000; text-align: center; line-height:30px;}

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
    position: relative;
    width: 570px;
    height: 100px;
    padding-top: 30px;
    padding-left: 30px;
}

#signup .txt-fld img {
    color: #222222;
    display: block;
    float: left;
    font-size: 18px;
    text-align: left;
    width: 100px;
    margin-top: -15px;
}

#signup .txt-fld input.good_input {
    background: url("images/good.png") no-repeat scroll 236px center #DEF5E1;
}

#signup .txt-fld input {
	float:left;
    background: none repeat scroll 0 0 #F7F7F7;
    border-color: #CCCCCC #E7E6E6 #E7E6E6 #CCCCCC;
    border-radius: 4px 4px 4px 4px;
    border-style: solid;
    border-width: 1px;
    color: #222222;
    font-family: "Helvetica Neue";
    font-size: 1.2em;
    outline: medium none;
    padding: 20px;
    margin-left:20px;
    width: 380px;
}

#signup .btn-fld {
    overflow: hidden;
    padding: 12px 20px 12px 130px;
    width: 450px;
}

.button1{
	float:left;
    background: none repeat scroll 0 0 #648CFF;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    color: #FFFFFF;
    font-family: "Helvetica Neue","Helvetica","Arial",sans-serif;
    font-weight: bold;
    overflow: visible;
    padding: 7px 10px;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
    width: auto;
    margin-left: 320px;
}
.button2{
	float:left;
    background: none repeat scroll 0 0 #32B8FF;
    border: medium none;
    border-radius: 4px 4px 4px 4px;
    color: #FFFFFF;
    font-family: "Helvetica Neue","Helvetica","Arial",sans-serif;
    font-weight: bold;
    overflow: visible;
    padding: 7px 10px;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
    width: auto;
    margin-left: 10px;
}
</style>
<div class="wrap">
	<div class="topArea">
		<div class="logo">
		EZStorage
		</div>
		<div class="status">
			<span class="picture"><img src="${pageContext.request.contextPath}/image/default_pro.png" width="30" height="30" alt="이미지" /></span>
			<span class="name">
				홍길동
			</span>
			<div class="info">
				 <ul>
			      <li><a href="#" id="" >▼</a>
			         <ul>
			           <li><a href="#">로그아웃</a></li>
			         </ul>
			      </li>
			   </ul>
               
            </div>
		</div>
	</div>
	
	<div class="middleArea">
		<div class="picture">
			<a id="go" rel="leanModal" href="#signup"><img src="${pageContext.request.contextPath}/image/슬픈표정.png" width="100" height="100" alt="이미지" /></a>
			<div>홍길동</div>
			<div>(ID)</div>
		</div>
		<div class="info">
			<div class="div1">
				<input class="input1" type="text">
				<a id="btn1" href="javascript:search();"><img class="img" alt="검색" src="${pageContext.request.contextPath}/image/검색.jpg" width="30px;" height="30px"></a>
				<a id="btn2" href="#"><img class="img" alt="폴더추가" src="${pageContext.request.contextPath}/image/폴더추가.png" width="30px;" height="30px"></a>
				<a id="btn3" href="#"><img class="img" alt="폴더삭제" src="${pageContext.request.contextPath}/image/폴더 삭제.png" width="30px;" height="30px"></a>
			</div>
			<div class="div2">
				<span class="span1">EZStorage - > 자료</span>
				<span class="span2">
					<a id="btn4" href="#"><img class="img1" alt="업로드" src="${pageContext.request.contextPath}/image/업로드.png" width="30px;" height="30px"></a>
					<a id="btn5" href="#"><img class="img2" alt="다운로드" src="${pageContext.request.contextPath}/image/다운로드.png" width="30px;" height="30px"></a>
				</span>
			</div>
		</div>
	</div>
	
	<div class="mainArea">
		<ul id="searchUl">
			
		</ul>
		<div id="noSearchDiv" class="div1">
			<div class="div"><img class="img1" src="${pageContext.request.contextPath}/image/슬픈표정.png" width="100" height="100" alt="이미지" />
			<span class="span">찾는 정보가 없네요.</span></div>
		</div>
	</div>
</div>

<div id="signup" style="display: none;">
    <div id="signup-ct">
        <div id="signup-header">
            <h2>프로필 사진 변경</h2>
        </div>
        <form action="">
            <div class="txt-fld">
            	<img src="${pageContext.request.contextPath}/image/슬픈표정.png" width="100" height="100" alt="이미지" />
                <input type="file" name="id" id="id"/>
            </div>
            <div class="btn-fld">
                <button class="button1" id="" name="">사진변경</button>
                <button class="button2" id="" name="">취소</button>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$("a[rel*=leanModal]").leanModal({ top : 200, overlay : 0.4, closeButton: ".button2" });	 
		 
	});	
	
	function search(){
		$("#noSearchDiv").show();
		$("#searchUl").hide();
		
	}
</script>