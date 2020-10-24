<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
				전자 결재 시스템<small>문서 수정</small>
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
							<form id="documentModify" name="documentModifyForm" class="form-horizontal"
							action="${pageContext.request.contextPath}/modifyUpdate" method="POST">
								<!-- action="document"
								method="post"   -->
								<p>
									<br>
								</p>
								<div style="text-align: center;">
									<span style="font-size: 22pt; font-weight: 700;">전자 결재</span>
								</div>
								 <input type="hidden" id="docno" name="docno" value="${documentMember.docno}"/>
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
													<input type="date" class="form-control" name="docdate" value="${documentMember.docdate.substring(0,10)}"
														style="border-style: hidden;" readonly="readonly">
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
													<input type="text" class="form-control" id="docname" name="docname" 
														style="border-style: hidden;" value="${documentMember.docname}">
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
												rowspan="1" colspan="2">
												<textarea rows="20" cols="100" style="border-style: hidden;" name="doccon">
												${documentMember.doccon}
												</textarea>
											</td>
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

								<hr>
								<!-- 
								<span style="line-height: 160%;">담당자 사번</span>
								<input type="text" class="form-control" name="mno" value="${document.mno}"
														style="border-style: hidden;" />
								<br> -->
								<!-- 
								<span style="line-height: 160%;">결재</span>
								 -->
								<br>
									<span style="line-height: 160%;" value="${documentMember.docdate}">
										기안일 &nbsp;&nbsp; ${documentMember.docdate.substring(0,10)}
									</span>
								<br>
									<span style="line-height: 160%;" value="${documentMember.doccomp}">
										결재일 
									</span>
								<br>
								<p style="line-height: 160%;">
									<span style="font-size: 10pt;" id="docno" value="${documentMember.docno}">
										문서번호 &nbsp;&nbsp; ${documentMember.docno} 
									</span>
								</p>
								<!-- 버튼 영역 시작 -->
								<div class="form-group">
									<div class="col-md-9" align="right" style="width: 750px;">
									<button type="submit" class="btn btn-sm btn-white"
									style="margin: 1px;">저장</button>
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
		
		$("#updateBtn").click(function() {
			var title=$("docname").val();
			var content=$("doccon").val();
			
			if(title=="") {
				alert("[안내]제목을 반드시 입력해주세요.");
				return;
			}
			
			if(content=="") {
				alert("[안내]내용을 반드시 입력해주세요.");
				return;
			}
			
		});
		
		function cancelCheck() {
			documentModifyForm.method="POST";
			documentModifyForm.action="${pageContext.request.contextPath}/document";
			documentModifyForm.submit();
		} 

/*
		function cancelCheck() {
			documentSelectForm.method="POST";
			documentSelectForm.action="${pageContext.request.contextPath}/documentAdd";
			documentSelectForm.submit();
		} 
		

		function tempSaveCheck() {
			documentAddForm.method="POST";
			documentAddForm.action="${pageContext.request.contextPath}/book/total_docu;
			documentAddForm.submit();
		   } 
		$("#tempSave").click(function(){
			if(confirm("저장하시겠습니까?")) {
				return true;
			} else {
				return false;
			}
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
				return "document/total_docu";
			} else {
				return false;
			}
		});
*/		

	</script>
</body>
</html>
