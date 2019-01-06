<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 페이지</title>
	<!-- Navigation -->
	<jsp:include page="./common/include.jsp"></jsp:include>
	<!-- Navigation -->
    
    <style type="text/css">
/*      .form-group {  */
/*  	    margin-bottom: 0;  */
/*  	}  */
    </style>

</head>

<body>

<div id="container">
	<div class="panel panel-default">
	    <div class="panel-body">
			<div class="row"> 
				<div class="col-xs-12 text-left"> 
					<img src="<%=request.getContextPath()%>/image/khynghee_logo.png" alt="profile"  style="width: 175px; height: 40px;"> 
				</div> 
				<div class="col-xs-12">
					<a href="#" class="thumbnail">
					<img src="<%=request.getContextPath()%>/image/khynghee_logo.png" alt="profile"> 
					</a>
				</div>
		
<!-- 				<div class="panel-body">bs -->
<!-- 				</div> -->
			</div>
			
			<div class="row ">
				<div class="form-group">
					<form class="form-inline text-center">
						<fieldset> 
							<label class="control-label"><strong>사용자 ID :</strong></label>
							<input type="text" class="form-control" >
						</fieldset>
					</form>
				</div> 
			</div> 
			
			<div class="row ">
				<div class="form-group">
					<form class="form-inline text-center">
						<fieldset> 
							<label class="control-label"><strong>비밀번호 : </strong></label>
							<input type="text" class="form-control" >
						</fieldset>
					</form>
				</div> 
			</div> 
			<div class="row ">
				<div class="form-group">
					<form class="form-inline text-center">
						<fieldset> 
							 <div class="checkbox"> 
								<label>
									<input type="checkbox"> 로그인 유지
								</label>
							</div>
							<button type="button" class="btn btn-primary" onclick="login()">로 그 인</button>
							<button type="button" class="btn btn-warning" onclick="addUser()">회원가입</button>
						</fieldset>
					</form>
				</div> 
			</div> 
			
		</div>
	</div>
</div>




<div class="modal fade" id="modalAddUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" >EZ Storage 에 오신것을 환영합니다</h4>
                <small>태그 기반 파일관리 시스템, EZ Storage 입니다.</small>
            </div>
            <div class="modal-body">
                <div class="row">
		            <div class="col-sm-6 col-xs-8">
		                <div class="form-group">
		                    <label>아이디</label>
		                    <input  class="form-control" placeholder="아이디">
		                    <p class="help-block">아이디를 입력하세요.</p>
		                </div>
	                </div>
				</div>
                <div class="row">
		            <div class="col-sm-5 col-xs-6">
		                <div class="form-group">
		                    <label>비밀번호</label>
		                    <input  class="form-control" placeholder="비밀번호">
		                </div>
	                </div>
		            <div class="col-sm-5 col-xs-6">
		                <div class="form-group">
		                    <label>비밀번호 확인</label>
		                    <input  class="form-control" placeholder="비밀번호 확인">
		                </div>
	                </div>
                </div>
                <div class="row">
		            <div class="col-sm-5 col-xs-6">
		                <div class="form-group">
		                    <label>성</label>
		                    <input class="form-control" placeholder="성">
		                </div>
	                </div>
                </div>
                <div class="row">
		            <div class="col-sm-5 col-xs-6">
		                <div class="form-group">
		                    <label>이름</label>
		                    <input  class="form-control" placeholder="이름">
		                </div>
	                </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫 기</button>
                <button type="button" onclick="" class="btn btn-primary">저 장</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>







<script type="text/javascript">

function addUser(){
	$('#modalAddUser').modal('show');
}

function login(){
	location.href="main.jsp"		
}

</script>


</body>

</html>
