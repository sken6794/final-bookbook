<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>공지작성</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
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
						<h4 class="panel-title">공지작성</h4>
                       </div>
                       <div class="panel-body">
                           <form class="form-horizontal">
							<div class="form-group">
								<label class="col-md-2 control-label">분류</label>
								<div class="col-md-3">
									<select class="form-control">
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
                                <div class="col-md-6">
                                    <input type="text" class="form-control" placeholder="제목을 입력하세요."/>
                                    
                                </div>
                            </div>
							<div class="form-group">
								<label class="col-md-2 control-label">공개여부</label>
								<div class="col-md-9">
									<label class="checkbox-inline">
										<input type="checkbox" value="0" />비공개로 전환
									</label>
								</div>
							</div>
		
							<div class="form-group">
								<label class="col-md-2 control-label">첨부파일</label>
								<div class="col-md-6">
									<input type="file" />
								</div>
							</div>
							
							<div class="form-group">
							<!-- begin panel -->
							<label class="col-md-2 control-label">공지내용</label>
							<div class="panel panel-inverse" data-sortable-id="form-wysiwyg-1" style="border: #b6c2c9;">											
								<div class="col-md-9" >
									<div class="panel-body panel-form" >
										<form class="form-horizontal" action="/" name="wysihtml5" method="POST">
											<textarea class="ckeditor" id="editor1" name="editor1" rows="100" placeholder="사내 규정에 맞게 입력하세요."></textarea>
											<br>
											<button type="submit" class="col-md-3 btn btn-inverse" style="float: right;">작성완료</button>
										</form>
									</div>
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
	
	
	
       <!-- begin theme-panel -->
       <div class="theme-panel">
           <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
           <div class="theme-panel-content">
               <h5 class="m-t-0">Color Theme</h5>
               <ul class="theme-list clearfix">
                   <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                   <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                   <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                   <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                   <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                   <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
               </ul>
               <div class="divider"></div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label double-line">Header Styling</div>
                   <div class="col-md-7">
                       <select name="header-styling" class="form-control input-sm">
                           <option value="1">default</option>
                           <option value="2">inverse</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label">Header</div>
                   <div class="col-md-7">
                       <select name="header-fixed" class="form-control input-sm">
                           <option value="1">fixed</option>
                           <option value="2">default</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                   <div class="col-md-7">
                       <select name="sidebar-styling" class="form-control input-sm">
                           <option value="1">default</option>
                           <option value="2">grid</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label">Sidebar</div>
                   <div class="col-md-7">
                       <select name="sidebar-fixed" class="form-control input-sm">
                           <option value="1">fixed</option>
                           <option value="2">default</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                   <div class="col-md-7">
                       <select name="content-gradient" class="form-control input-sm">
                           <option value="1">disabled</option>
                           <option value="2">enabled</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-5 control-label double-line">Content Styling</div>
                   <div class="col-md-7">
                       <select name="content-styling" class="form-control input-sm">
                           <option value="1">default</option>
                           <option value="2">black</option>
                       </select>
                   </div>
               </div>
               <div class="row m-t-10">
                   <div class="col-md-12">
                       <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                   </div>
               </div>
           </div>
       </div>
       <!-- end theme-panel -->
		
	
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
