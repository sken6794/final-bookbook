<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
		
	<!-- 생년월일,입사날짜 datepicker -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<!-- 이메일 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- 파일 업로드 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
    <!-- 발주조회 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />	
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">발주관리</a></li>
			<li class="active">발주현황</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">발주관리 <small>발주현황</small></h1>
		<!-- end page-header -->
		<br>
		
		<div class="row">
			   <div class="col-md-12">
                   <div class="panel panel-inverse">
                       <div class="panel-heading">
                           <div class="panel-heading-btn">
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                               <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                           </div>
                           <h4 class="panel-title">발주현황 조회</h4>
                       </div>
                       <div class="panel-body">
                       <form class="form-horizontal">
                       		<div class="panel-body panel-form" style="margin-top: 50px;">
                       			<div class="col-md-1"></div>
	                            <div class="col-md-5">
	                            	<div class="form-group">
										<label class="control-label col-md-4 col-sm-4">도서코드</label>
										<div class="col-md-6 col-sm-6">
                                        <input type="text" class="form-control" placeholder="도서코드" />
										</div>
									</div>
	                            	<div class="form-group">
										<label class="control-label col-md-4 col-sm-4">담당자</label>
										<div class="col-md-6 col-sm-6">
                                        <input type="text" class="form-control" placeholder="담당자 사원번호" />
										</div>
									</div>
	                                <div class="form-group">
	                                    <label class="control-label col-md-4 col-sm-4">진행상태</label>
	                                    <div class="col-md-6 col-sm-6">
	                                        <select class="form-control">
	                                            <option>1</option>
	                                            <option>2</option>
	                                            <option>3</option>
	                                        </select>
	                                    </div>
	                                </div>									
	                            </div>
	                            <div class="col-md-5">
		                           	<div class="form-group">
	                                    <label class="control-label col-md-4 col-sm-4">발주일자</label>
	                                    <div class="col-md-6 col-sm-6">
	                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" />
	                                    </div>
	                                </div>
	                                <div class="form-group">
	                                    <label class="control-label col-md-4 col-sm-4">출판사명</label>
	                                    <div class="col-md-6 col-sm-6">
	                                        <select class="form-control">
	                                            <option>영진닷컴</option>
	                                            <option>수능닷컴</option>
	                                            <option>이기적</option>
	                                            <option>문학동네</option>
	                                        </select>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-1"></div>
                       		</div>
                       		<br>
                       		<br>
                       		<div style="text-align: center;">
                       		<a href="javascript:;" class="btn btn-sm btn-white">조회</a>
							<a href="#modal-dialog" class="btn btn-sm btn-success" data-toggle="modal">수정</a>
                       		</div>
                       		<p class="text-right" style="margin-right: 10px;">* 진행상태 : 1(발주요청) , 2(진행중) , 3(입고완료)</p>
                       	</form>
                        <!-- 수정 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-dialog">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">발주 내역 수정</h4>
									</div>
								<!-- 발주내역 수정 form -->
									<form class="form-horizontal" method="post">
									<div class="modal-body">                         
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">발주담당자 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="담당자 사원번호" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">발주수량 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="수량" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">진행상태 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control">
		                                            <option>1</option>
		                                            <option>2</option>
		                                            <option>3</option>
		                                        </select>
		                                    </div>
		                                </div>
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4">도서코드 :</label>
											<div class="col-md-6 col-sm-6">
												<select class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
													<option>7</option>
													<option>8</option>
													<option>9</option>
													<option>10</option>
												</select>
											</div>
										</div>		                                                	                                                   
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="submit" id="requestUpdate" class="btn btn-sm btn-success">수정</button>
									</div>
		                        </form>
								</div>
							</div>		
						</div>   <!-- modal 끝 -->                         	
                       	<hr>
                        <p class="text-right m-b-0">
                        	<a href="javascript:;" class="btn btn-sm btn-white" style="margin-right: 13px;">삭제</a>
                        </p>
                            <table id="data-table" class="table table-striped table-bordered nowrap" width="100%">
                                <thead>
                                    <tr>
                                    	<th>선택</th>
                                        <th>발주번호</th>
                                        <th>도서코드</th>
                                        <th>도서명</th>
                                        <th>출판사명</th>
                                        <th>발주일자</th>
                                        <th>담당자[사원번호]</th>
                                        <th>발주수량</th>
                                        <th>발주금액</th>
                                        <th>진행상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="request" items="${requestList }">
                                	<tr>
                               			 <td><input type="checkbox"></td>
                               			 <td>${request.rno }</td>
                               			 <td>${request.book.bno }</td>
                               			 <td>${request.book.bname }</td>
                               			 <td>${request.book.bpublisher }</td>
                               			 <td>${request.rdate }</td>
                               			 <td>${request.rstaff }</td>
                               			 <td>${request.rqty }</td>
                               			 <td>${request.rprice }</td>
                               			 <td>${request.rstate }</td>
                               		</tr>
                               	</c:forEach>
                                <!-- 	<c:forEach var="request" items="${requestList }">
                                    <tr>
                                    	<td><input type="checkbox"></td>
                                        <td>${request.rno }</td>
                                        <td>${request.book.bno }</td>
                                        <td>${request.book.bname }</td>
                                        <td>${request.book.bpublisher }</td>
                                        <td>${request.rdate }</td>
                                        <td>${request.rstaff }</td>
                                        <td>${request.rqty }</td>
                                        <td>${request.rprice }</td>
                                        <td>${request.rstate }</td>
                                    </tr>
                                    </c:forEach>
                                    --> 
                                </tbody>
                            </table>                		                        
                    </div> <!-- panel body 끝 -->
                 </div><!-- panel inverse 끝 -->
            </div>
        </div>
    </div>         
 	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- 인사관리 추가 버튼 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>
	<!-- 이메일 input -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/parsley/dist/parsley.js"></script>
	<!-- 생년월일,입사날짜,전화번호 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/ionRangeSlider/js/ion-rangeSlider/ion.rangeSlider.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/masked-input/masked-input.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/password-indicator/js/password-indicator.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-combobox/js/bootstrap-combobox.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput-typeahead.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-tag-it/js/tag-it.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-daterangepicker/moment.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/select2/dist/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-eonasdan-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-plugins.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- 이미지 파일 업로드 -->
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
    <!--[if (gte IE 8)&(lt IE 10)]>
        <script src="assets/plugins/jquery-file-upload/js/cors/jquery.xdr-transport.js"></script>
    <![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	<!-- 발주조회 테이블 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<script>
		$(document).ready(function() {
			App.init();
		});

	 /* 생년월일, 입사날짜, 전화번호 */ 
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});

	 /* 파일업로드 */ 
		$(document).ready(function() {
			App.init();
			FormMultipleUpload.init();
		});

	 /* 발주조회 테이블 */
		$(document).ready(function() {
			App.init();
			TableManageTableSelect.init();
		});	
	</script>
</body>
</html>