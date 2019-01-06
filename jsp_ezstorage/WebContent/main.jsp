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
	<!-- Include -->
	<jsp:include page="./common/include.jsp"></jsp:include>
	<!-- Include -->
		
    <style type="text/css">
     .form-group { 
 	    margin-bottom: 0; 
 	} 
 	
 	html, body{
 		height: 100%;
 	}
 	
     .panel {
          height: 100%;
      }
   	.fill {
      height: 100%;
	}
  
 	 .panel-body {
      height: 100%;
  }
  
    </style>

</head>

<body>



    <!-- Navigation -->
    <jsp:include page="./common/navi.jsp"></jsp:include>
    <!-- Navigation -->
        
        <div class="fill" id="container">
			<div class="panel panel-default">
			    <div class="panel-heading">
					<div class="row"> 
						<div class="col-sm-12"> 
						<div class="row">
							<div class="col-sm-3 text-center"> 
								<div class="row">
									<img src="<%=request.getContextPath()%>/image/profile.png" alt="profile" class="img-thumbnail" style="width: 100px; height: 100px;"> 
								</div> 
								<div class="row">UserId</div> 
							</div> 
							<div class="col-sm-9"> 
								<div class="row">
									<ul class="list-group">
										<li class="list-group-item">
											<div class="row" >
				  								<div class="col-sm-12" >
													<div class="row" style="vertical-align: middle; ">
														<div class="col-sm-7">
						                                    <div class="form-group text-left " >
							                                    <div class="input-group">
																	<input id="search_tag" name="search_tag" class="form-control" placeholder="태그검색">
																    <span class="input-group-addon">
																		<img src="<%=request.getContextPath()%>/image/search.jpg" alt="profile"  style="width: 20px; height: 20px;"> 
																    </span>
																</div>
							                                </div>
						                                </div>
														<div class="col-sm-5">
						                                    <div class="form-group text-right">
																<img src="<%=request.getContextPath()%>/image/add_folder.png" alt="profile" onclick="addFolder()" style="width: 30px; height: 30px; cursor: pointer;"> 
																<img src="<%=request.getContextPath()%>/image/delete_folder.png" alt="profile" onclick="delFolder()" style="width: 30px; height: 30px; cursor: pointer;"> 
							                                </div>
						                                </div>
													</div>
												</div> 
											</div>
										  </li>
									  <li class="list-group-item">
										<div class="row">
			  								<div class="col-sm-12">
												<div class="row">
													<div class="col-sm-7">
					                                    <div class="form-group text-left">
					                                    	<h4>EZStorage<small> > 강의자료 > 강의자료 > 강의자료</small></h4>
						                                </div>
					                                </div>
													<div class="col-sm-5">
					                                    <div class="form-group text-right">
															<img src="<%=request.getContextPath()%>/image/upload.png" alt="profile" onclick="fileUp()" style="width: 30px; height: 30px; cursor: pointer;"> 
															<img src="<%=request.getContextPath()%>/image/download.png" alt="profile" onclick="fileDown()" style="width: 30px; height: 30px; cursor: pointer;"> 
						                                </div>
					                                </div>
												</div>
											</div> 
										</div>
									  </li>
									</ul>
								
	
								</div>						
							</div>
						</div> 
					</div>
				</div>

			</div>
			<div class="panel-body fill"> 
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/document.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/folder.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/folder.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
				<div class="col-lg-1 col-sm-2 col-xs-3 text-center" style="margin-bottom: 7px;">
					<div class="row">
						<img src="<%=request.getContextPath()%>/image/folder.png" alt="profile" class="img-thumbnail" style="width: 70px; height: 70px;">
					</div>
					<div class="row">
							TEXT
					</div>
				</div>
			</div>
        </div>
    </div>


	
	
	<div class="modal fade" id="modalAddFolder" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" > 폴더</h4>
	            </div>
	            <div class="modal-body">
					<div class="form-group">
						<form class="form-inline text-center">
							<fieldset> 
								<label class="control-label"><strong>폴더명 :</strong></label>
								<input type="text" class="form-control" >
							</fieldset>
						</form>
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
	
	
    <div class="modal fade" id="modalDelFolder" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">폴더</h4>
                </div>
            
                <div class="modal-body">
                    <p>ㅇㅇㅇ 폴더가 삭제됩니다.</p>
                    <p>삭제하시겠습니까?</p>
                    <p class="debug-url"></p>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫 기</button>
                    <a class="btn btn-danger btn-ok">삭 제</a>
                </div>
            </div>
        </div>
     </div>


	
	
	<div class="modal fade" id="modalFileUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" > 파일</h4>
	            </div>
	            <div class="modal-body">
					<div class="form-group">
						<form class="form-inline text-center">
					            <div class="input-group">
					                <span class="input-group-btn ">
					                    <span class="btn btn-primary btn-file btn-sm">
					                        Browse&hellip; <input name="" type="file" multiple>
					                    </span>
					                </span>
					                <input type="text" name="building_photo_text" class="form-control input-sm" readonly>
				            	</div>
						</form>
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
	
	
    <div class="modal fade" id="modalFileDown" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">파일</h4>
                </div>
            
                <div class="modal-body">
                    <p>ㅇㅇㅇ 파일을 다운로드 하시겠습니까?</p>
                    <p class="debug-url"></p>
                </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫 기</button>
                    <button type="button" onclick="" class="btn btn-warning">저 장</button>
                </div>
            </div>
        </div>
     </div>





<script type="text/javascript">


$(document).ready( function() {
    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        
        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label;
        
        if( input.length ) {
            input.val(log);
        } else {
            if( log ) alert(log);
        }
        
    });
    
});



function addFolder(){
	$('#modalAddFolder').modal('show');
}

function delFolder(){
	$('#modalDelFolder').modal('show');
}


function fileDown(){
	$('#modalFileDown').modal('show');
}

function fileUp(){
	$('#modalFileUp').modal('show');
}


</script>


</body>

</html>
