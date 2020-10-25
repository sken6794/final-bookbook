<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ================== BEGIN BASE JS ================== -->
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
<body>

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">Home</a></li>
				<li><a href="javascript:;">Form Stuff</a></li>
				<li class="active">Form Elements</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">
				전자 결재 시스템<small>문서 양식</small>
			</h1>
			<!-- end page-header -->

			<!-- begin row -->
			<div class="row">
				<!-- begin col-6 -->
				<div class="col-md-6">
					<!-- begin panel -->
					<div class="panel panel-inverse" data-sortable-id="form-stuff-1"
						style="width: 800px;">
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-success"
									data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-warning"
									data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
									href="javascript:;"
									class="btn btn-xs btn-icon btn-circle btn-danger"
									data-click="panel-remove"><i class="fa fa-times"></i></a>
							</div>
							<h4 class="panel-title">전자 결재</h4>
						</div>
						<div class="panel-body">
							<form id="documentAdd" name="documentAddForm" class="form-horizontal">
								<!-- action="document"
								method="post"   -->
								<p>
									<br>
								</p>
								<div style="text-align: center;">
									<span style="font-size: 22pt; font-weight: 700;">전자 결재</span>
								</div>
								<table border="1" cellspacing="0" cellpadding="0" class=""
									style="border-width: 0px; width: 600px; border-collapse: collapse; height: 576px; font-size: 10pt; background-image: none; background-repeat: repeat; background-position: 0% 0%;">
									<tbody>
										<tr>
											<td
												style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
												colspan="1" rowspan="1" >
												<p>&nbsp;&nbsp;시행일자</p>
											</td>
											<td
												style="border-width: 2px 2px 2px 1px; border-style: solid;">
												<div class="col-md-9">
													<input type="date" class="form-control" name="docdate" value="${document.docdate}"
														style="border-style: hidden;" placeholder="시행일자를 입력해주세요." />
												</div>
											</td>
										</tr>
										<tr>
											<td
												style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
												colspan="1" rowspan="1">
												<p>&nbsp;&nbsp;제목</p>
											</td>
											<td
												style="border-width: 2px 2px 2px 1px; border-style: solid;">
												<div class="col-md-9">
													<input type="text" class="form-control" name="docname" value="${document.docname}"
														style="border-style: hidden;" placeholder="제목을 입력해주세요." />
												</div>
											</td>
										</tr>
										<tr>
											<td
												style="border-width: 2px 0px; border-style: solid; width: 684px; height: 16px;"
												colspan="2">
												<p>
													<br>
												</p>
											</td>
										</tr>
										<tr>
											<td align="center"
												style="border-width: 2px; border-style: solid; width: 682px; height: 435px;"
												rowspan="1" colspan="2"><textarea rows="20" cols="100"
													style="border-style: hidden; width: 750px; font-size: 20px;" name="doccon" value="${document.doccon}"
													placeholder="내용을 입력해 주세요."></textarea></td>
										</tr> 
									</tbody>
								</table>
								<p>
									<br>
								</p>
								<div style="text-align: center;">
									<span style="font-size: 22pt; font-weight: 700;">
										(주)북북도서판매협회
									</span>
								</div>
								<div style="text-align: center;">
									<br>
								</div>
								<input type="hidden" id="mno" name="mno" value="${loginMember.mno }"/>  
								<hr>
								<span style="line-height: 160%;" >담당자</span>
								<br>
								<span style="line-height: 160%;" value="${docdate}">기안일</span>
								<br>
								<span style="line-height: 160%;" value="${doccomp}">결재일</span>
								<br>
								<p style="line-height: 160%;">
									<span style="font-size: 10pt;" value="${docno}">문서번호 </span>
								</p>
								<!-- 버튼 영역 시작 -->
								<div class="form-group">
									<div class="col-md-9" align="right" style="width: 750px;">
									<button type="button" class="btn btn-sm btn-white"
									onclick="tempSaveCheck();" style="margin: 1px;">임시저장</button>
										<button type="button" class="btn btn-sm btn-warning" 
										style="margin: 1px;" onclick="cancelCheck();">취소</button>
									</div>
								</div>
								<!-- 버튼 영역 끝 -->
							</form>
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
			<a href="javascript:;" data-click="theme-panel-expand"
				class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
			<div class="theme-panel-content">
				<h5 class="m-t-0">Color Theme</h5>
				<ul class="theme-list clearfix">
					<li class="active"><a href="javascript:;" class="bg-green"
						data-theme="default" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Default">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-red" data-theme="red"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-purple"
						data-theme="purple" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Purple">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-orange"
						data-theme="orange" data-click="theme-selector"
						data-toggle="tooltip" data-trigger="hover" data-container="body"
						data-title="Orange">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-black" data-theme="black"
						data-click="theme-selector" data-toggle="tooltip"
						data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
				</ul>
				<div class="divider"></div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Header
						Styling</div>
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
					<div class="col-md-5 control-label double-line">Sidebar
						Styling</div>
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
					<div class="col-md-5 control-label double-line">Sidebar
						Gradient</div>
					<div class="col-md-7">
						<select name="content-gradient" class="form-control input-sm">
							<option value="1">disabled</option>
							<option value="2">enabled</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-5 control-label double-line">Content
						Styling</div>
					<div class="col-md-7">
						<select name="content-styling" class="form-control input-sm">
							<option value="1">default</option>
							<option value="2">black</option>
						</select>
					</div>
				</div>
				<div class="row m-t-10">
					<div class="col-md-12">
						<a href="#" class="btn btn-inverse btn-block btn-sm"
							data-click="reset-local-storage"><i
							class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end theme-panel -->
	<!-- end page container -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/vendor/tmpl.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/vendor/load-image.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
		});

		function tempSaveCheck() {
			documentAddForm.method="POST";
			documentAddForm.action="${pageContext.request.contextPath}/documentAdd";
			documentAddForm.submit();
		}

		function cancelCheck() {
			documentAddForm.method="POST";
			documentAddForm.action="${pageContext.request.contextPath}/document";
			documentAddForm.submit();
		} 
		
	

	</script>
</body>
</html>
