<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>공지수정</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

</head>
<body>
	<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">Home</a></li>
		</ol>
		<!-- end breadcrumb -->			
		<!-- begin row -->
		<div class="row">
               <!-- begin col-12 -->
		    <div class="col-md-12">
		        <!-- begin panel -->
                   <div class="panel panel-inverse">
                       <div class="panel-heading">
                           <div class="panel-heading-btn">
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                           </div>
						<h4 class="panel-title">공지수정</h4>
                       </div>
                       <div class="panel-body">
                           <form class="form-horizontal" action="${pageContext.request.contextPath}/noticeUpdate" name="wysihtml5" method="POST">
							<div class="form-group">
								<label class="col-md-2 control-label">분류</label>
                                   <div class="col-md-3">
									<select class="form-control" id="ncategory" name="ncategory">
										<option>협력</option>
                                           <option>발주/재고</option>
                                           <option>인사</option>
                                           <option>회의</option>
                                           <option selected="selected">기타</option>
                                       </select>
                                   </div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">공지 제목</label>
								<div class="col-md-9">
									<input type="text" class="form-control" id="ntitle" name="ntitle" value="${notice.ntitle }"/>                                        
								</div>
							</div>
							
							<input type="hidden" id="nwriter" name="nwriter" value="${notice.nwriter }"/>  
                            <input type="hidden" id="mno" name="mno" value="${notice.mno }"/>     
                            <input type="hidden" id="nno" name="nno" value="${notice.nno }"/>
							
							<div class="form-group">
								<label class="col-md-2 control-label">공개여부</label>
								<div class="col-md-9">
									<label class="checkbox-inline">
										<input type="checkbox" id="nstate" name="nstate" value="${notice.nstate }" />비공개로 전환
									</label>
								</div>
							</div>
						
							<div class="form-group">
							<!-- begin panel -->
							<label class="col-md-2 control-label">공지내용</label>
							<div class="panel panel-inverse" data-sortable-id="form-wysiwyg-1" style="border: #b6c2c9;">											
								<div class="col-md-9" >
									<textarea class="ckeditor" id="ncontent" name="ncontent" rows="100">
									${notice.ncontent}
									</textarea>
									<br><br>
									<button type="submit" class="col-md-3 btn btn-inverse" style="float: right;">작성완료</button>
								</div>
							</div>
							<!-- end panel -->
						</div>
                           </form>
                           <br>
                       </div>
                   </div>
                   <!-- end panel -->
               </div>
               <!-- end col-6 -->
           </div>
           <!-- end row -->
	</div>
	<!-- end #content -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/respond.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wizard/js/bwizard.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-wizards.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-wysiwyg.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			FormWizard.init();
			FormWysihtml5.init();
		});
	</script>
</body>
</html>
