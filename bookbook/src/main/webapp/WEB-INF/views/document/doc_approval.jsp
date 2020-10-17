<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"  rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />

<!-- ================== END BASE CSS STYLE ================== -->

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
				품의서<small>header small text goes here...</small>
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
							<h4 class="panel-title">품의서</h4>
						</div>
						<div class="panel-body">
							<form id="docApproval" name="docApproval" action="document"
								method="post" class="form-horizontal">
								<p>
									<br>
								</p>
								<div style="text-align: center;">
									<span style="font-size: 22pt; font-weight: 700;">품의서</span>
								</div>
								<table border="1" cellspacing="0" cellpadding="0" class=""
									style="border-width: 0px; width: 600px; border-collapse: collapse; height: 576px; font-size: 10pt; background-image: none; background-repeat: repeat; background-position: 0% 0%;">
									<tbody>
										<tr>
											<td
												style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
												colspan="1" rowspan="1">
												<p>시행일자</p>
											</td>
											<td
												style="border-width: 2px 2px 2px 1px; border-style: solid;">
												<div class="col-md-9">
													<input type="date" class="form-control"
														style="border-style: hidden;" placeholder="시행일자를 입력해주세요." />
												</div>
											</td>
										</tr>
										<tr>
											<td
												style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
												colspan="1" rowspan="1">
												<p>수신자</p>
											</td>
											<td
												style="border-width: 2px 2px 2px 1px; border-style: solid;">
												<div class="col-md-9">
													<input type="text" class="form-control" id="rcv" list="rcv_list"
														style="border-style: hidden;" placeholder="수신자를 입력해주세요." />
														<datalist id="rcv_list">
															<option>도서1팀</option>
															<option>도서2팀</option>
															<option>영업팀</option>
															<option>회계팀</option>
														</datalist>
												</div>
											</td>
										</tr>
										<tr>
											<td
												style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
												colspan="1" rowspan="1">
												<p>제목</p>
											</td>
											<td
												style="border-width: 2px 2px 2px 1px; border-style: solid;">
												<div class="col-md-9">
													<input type="text" class="form-control"
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
											<td
												style="border-width: 2px; border-style: solid; width: 682px; height: 435px;"
												rowspan="1" colspan="2"><textarea rows="20" cols="100"
													style="border-style: hidden;">내용을 입력해 주세요.</textarea></td>
										</tr>
									</tbody>
								</table>
								<p>
									<br>
								</p>
								<div style="text-align: center;">
									<span style="font-size: 22pt; font-weight: 700;">
										(주)북북도서판매협회 <img src="${pageContext.request.contextPath}/resources/assets/img/seal.png">
									</span>
								</div>
								<div style="text-align: center;">
									<br>
								</div>

								<hr>
								<p style="line-height: 160%;">담당 </p>
								<!-- ${member.mname} -->
								<p style="line-height: 160%;">결재</p>
								<p style="line-height: 160%;">전결</p>
								<p style="line-height: 160%;">기안일</p>
								<p style="line-height: 160%;">결제일</p>
								<p style="line-height: 160%;">
									<span style="font-size: 10pt;">문서번호</span>
								</p>
								<div class="form-group">
									<div class="col-md-9" align="right">
										<button type="submit" id="tempSave"
											class="btn btn-sm btn-white" style="margin: 1px;">임시저장</button>
										<button type="submit" id="save" class="btn btn-sm btn-success"
											style="margin: 1px;">상신</button>
										<button type="submit" id="cancel"
											class="btn btn-sm btn-warning" style="margin: 1px;">취소</button>
									</div>
								</div>
							</form>
							<form id="fileupload" method="post" enctype="multipart/form-data">
							<div class="row fileupload-buttonbar">
	                            <div class="col-md-7">
	                                <span class="btn btn-success fileinput-button">
	                                    <i class="fa fa-plus"></i>
	                                    <span>파일 추가</span>
	                                    <input type="file" name="files[]" multiple>
	                                </span>
	                                <button type="submit" class="btn btn-primary start">
	                                    <i class="fa fa-upload"></i>
	                                    <span>파일 업로드</span>
	                                </button>
	                                <br>
	                                <button type="reset" class="btn btn-warning cancel">
	                                    <i class="fa fa-ban"></i>
	                                    <span>업로드 취소</span>
	                                </button>
	                                <button type="button" class="btn btn-danger delete">
	                                    <i class="glyphicon glyphicon-trash"></i>
	                                    <span>파일 삭제</span>
	                                </button>
	                                <!-- The global file processing state -->
	                                <span class="fileupload-process"></span>
	                            </div>
	                            <!-- The global progress state -->
	                            <div class="col-md-5 fileupload-progress fade">
	                                <!-- The global progress bar -->
	                                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
	                                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
	                                </div>
	                                <!-- The extended global progress state -->
	                                <div class="progress-extended">&nbsp;</div>
	                            </div>
	                        </div>
	                        <!-- The table listing the files available for upload/download -->
	                        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
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

		<!-- begin scroll to top btn -->
		<a href="javascript:;"
			class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
			data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	    <!-- The template to display files available for upload -->
    <script id="template-upload" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-upload fade">
                <td class="col-md-1">
                    <span class="preview"></span>
                </td>
                <td>
                    <p class="name">{%=file.name%}</p>
                    <strong class="error text-danger"></strong>
                </td>
                <td>
                    <p class="size">Processing...</p>
                    <div class="progress progress-striped active"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
                </td>
                <td>
                    {% if (!i && !o.options.autoUpload) { %}
                        <button class="btn btn-primary btn-sm start" disabled>
                            <i class="fa fa-upload"></i>
                            <span>Start</span>
                        </button>
                    {% } %}
                    {% if (!i) { %}
                        <button class="btn btn-white btn-sm cancel">
                            <i class="fa fa-ban"></i>
                            <span>Cancel</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
    </script>
    <!-- The template to display files available for download -->
    <script id="template-download" type="text/x-tmpl">
        {% for (var i=0, file; file=o.files[i]; i++) { %}
            <tr class="template-download fade">
                <td>
                    <span class="preview">
                        {% if (file.thumbnailUrl) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                        {% } %}
                    </span>
                </td>
                <td>
                    <p class="name">
                        {% if (file.url) { %}
                            <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                        {% } else { %}
                            <span>{%=file.name%}</span>
                        {% } %}
                    </p>
                    {% if (file.error) { %}
                        <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                    {% } %}
                </td>
                <td>
                    <span class="size">{%=o.formatFileSize(file.size)%}</span>
                </td>
                <td>
                    {% if (file.deleteUrl) { %}
                        <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                            <i class="glyphicon glyphicon-trash"></i>
                            <span>Delete</span>
                        </button>
                        <input type="checkbox" name="delete" value="1" class="toggle">
                    {% } else { %}
                        <button class="btn btn-warning cancel">
                            <i class="glyphicon glyphicon-ban-circle"></i>
                            <span>Cancel</span>
                        </button>
                    {% } %}
                </td>
            </tr>
        {% } %}
    </script>
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->

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
		
		
		$("#tempSave").click(function(){
			if(confirm("임시저장하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
			//$("#docApproval").attr("action","../template_content_html/draft_docu");
			//$("#docApproval").submit();
		});
		
		$("#save").click(function(){
			if(confirm("상신하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
		});
		$("#cancel").click(function(){
			if(confirm("취소하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
		});

	</script>
</body>
</html>
