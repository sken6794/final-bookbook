<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script
	src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->
</head>
<body>

	<!-- begin #content -->
	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">전자결재</a></li>
			<li class="active">임시저장 문서</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">
			전자 결재 시스템<small>임시저장 문서</small>
		</h1>
		<!-- end page-header -->

		<!-- begin row -->
		<div class="row">
			<!-- begin col-12 -->
			<div class="col-md-12">
				<!-- begin panel -->
				<div class="panel panel-inverse">
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
						<h4 class="panel-title">상신 문서</h4>
					</div>
					<div class="panel-body">
					 <div class="form-group">
					 <div class="text-right m-b-0" style="margin-right: 5px;">
								 
							</div>
					 <br>
						<table id="data-table" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>문서번호</th>
									<th>문서제목</th>
									<th>작성자</th>
									<th>등록날짜</th>
									<th>문서상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="document" items="${documentSaveList }">
										<c:if test="${document.docstate==0 || document.docstate==3}">
										<tr>
											<td>${document.docno}</td>
											<td>
											<a href="${pageContext.request.contextPath }/documentSelect/${document.docno }" class="document">
											${document.docname}
											</a>
											</td>
											<td>${document.member.mname }</td>
											<td>${fn:substring(document.docdate,0,10)  }</td>
											<td><c:choose>
														<c:when test="${document.docstate==0 }">
															<p>임시저장</p>
														</c:when>
														<c:when test="${document.docstate==3 }">
															<p>반려</p>
														</c:when>
													</c:choose>
												</td>
										</tr>
										</c:if>
									</c:forEach>
							</tbody>
						</table>
						</div>
					</div>
				</div>
				<!-- end panel -->
			</div>
			<!-- end col-12 -->
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


	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/table-manage-default.demo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
		
		$("#delete").click(function() {
			var $check = $("#check");
			
			if ($check.size()==0) {
				$("#displayDiv").text("당신은 좋아하는 계절이 없습니다.");
				return;
			}
			
		});
	</script>
</body>
</html>
