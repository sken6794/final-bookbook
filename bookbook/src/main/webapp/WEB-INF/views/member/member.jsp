<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!-- 생년월일,입사날짜 datepicker -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/ionRangeSlider/css/ion.rangeSlider.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/ionRangeSlider/css/ion.rangeSlider.skinNice.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/password-indicator/css/password-indicator.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-combobox/css/bootstrap-combobox.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-tag-it/css/jquery.tagit.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<!-- 이메일 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- 파일 업로드 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
 	<!-- 주문조회 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	
	<!-- ================== END BASE CSS STYLE ================== -->
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	
	<!-- ================== BEGIN BASE JS ================== -->
	
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	<style type="text/css">
	table { text-align: center;}
	</style>

	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">인사관리</a></li>
			<li class="active">사원등록</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">인사관리 <small>사원등록</small></h1>
		<!-- end page-header -->
		<br>
		<div class="col-md-12">
            <div class="panel panel-inverse">
              <div class="panel-heading">
                 <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                 </div>
                 <h4 class="panel-title">사원 조회</h4>
              </div>
              <div class="panel-body">
              <form class="form-horizontal"> <!-- 조회 폼 -->
			 	<div class="row">
			 		<div class="col-md-1"></div>
                    <div class="col-md-3">
                         <div class="form-group">
						<label class="control-label col-md-4 col-sm-4">사원번호</label>
						<div class="col-md-6 col-sm-6">
                                    <input type="text" class="form-control" placeholder="사원번호" />
						</div>
						</div>									
                    </div>
                    <div class="col-md-3">
                         <div class="form-group">
						 <label class="control-label col-md-4 col-sm-4">부서</label>
						 <div class="col-md-6 col-sm-6">
                           <select class="form-control">
                              <option>도서 1팀</option>
                              <option>도서 2팀</option>
                              <option>영업팀</option>
                              <option>회계팀</option>
                           </select>
						</div>
						</div>
					</div>									
                    <div class="col-md-3">
                   		<div class="form-group">
                           <label class="control-label col-md-4 col-sm-4">직급</label>
                           <div class="col-md-6 col-sm-6">
                           <select class="form-control">
                              <option>사원</option>
                              <option>주임</option>
                              <option>대리</option>
                              <option>과장</option>
                              <option>차장</option>
                              <option>부장</option>
                              <option>이사</option>
                           </select>
                           </div>
                       </div>
                     </div>
                     <div class="col-md-1"></div>
	            	</div>
                    <br>
	                <div style="text-align: center;">
	                <a href="javascript:;" class="btn btn-sm btn-white">조회</a>
	                </div>			
               </form>
						<hr>
						<p class="text-right m-b-0">
						<a href="#modal-insert" class="btn btn-sm btn-success" data-toggle="modal">추가</a>
						</p>
						<br>
						<!-- 수정 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-update">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">사원정보수정</h4>
									</div>
								<!-- 정보수정 form -->
									<form class="form-horizontal" method="post" enctype="multipart/form-data">
									<div class="modal-body">
										
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">이름 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="이름" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">생년월일 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-default" placeholder="Select Date" value="01/01/2020" />
		                                    </div>
		                                </div>                             
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="message">전화번호 :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="data-phone" data-parsley-type="number" placeholder="(XXX) XXXX XXX" />
											</div>
										</div>
		                                <div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="email">Email :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="email" name="email" data-parsley-type="email" placeholder="email@example.com" data-parsley-required="true" />
											</div>
										</div>										
										<div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">주소 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="주소" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">퇴사날짜 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">퇴사이유 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="퇴사이유" />
		                                    </div>
		                                </div>	
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">사원상태 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control">
		                                            <option>1</option>
		                                            <option>2</option>
		                                            <option>3</option>
		                                        </select>
		                                    </div>
		                                </div>	
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">연차일수 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" />
		                                    </div>
		                                </div>			                                	                                	                                
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">부서 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control">
		                                            <option>도서 1팀</option>
		                                            <option>도서 2팀</option>
		                                            <option>영업팀</option>
		                                            <option>회계팀</option>
		                                        </select>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">직급 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control">
		                                            <option>사원</option>
		                                            <option>주임</option>
		                                            <option>대리</option>
		                                            <option>과장</option>
		                                            <option>차장</option>
		                                            <option>부장</option>
		                                            <option>이사</option>
		                                        </select>
		                                    </div>
		                                </div>		                                	                                
		                                
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="submit" id="insertBtn" class="btn btn-sm btn-success">수정</button>
									</div>
		                            </form>
								</div>
							</div>
						</div>						
						<!-- 추가 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-insert">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">신규사원등록</h4>
									</div>
								<!-- 사원등록 form -->
									<form class="form-horizontal" method="post">
									<div class="modal-body">
<!-- 									<input type="hidden" name="mno" id="i_mno">
										<input type="hidden" name="mquitdate" id="i_mquitdate">
										<input type="hidden" name="mquitreason" id="i_mquitreason">
										<input type="hidden" name="mstate" id="i_mstate">
										<input type="hidden" name="mdayoff" id="i_mdayoff"> -->
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">이름 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="이름"  name="mname" id="i_mname"/>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">비밀번호 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="password" class="form-control" placeholder="비밀번호"  name="mpw" id="i_mpw"/>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">생년월일 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="i_mbirth" placeholder="ex. 940628" name="mbirth" />
<!-- 		                                        <input type="text" class="form-control" id="datepicker-default" placeholder="Select Date" name="mbirth" /> -->
		                                    </div>
		                                </div>                             
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="message">전화번호 :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text"  data-parsley-type="number" placeholder="(-)을 포함하여 적어주세요. ex)010-0000-0000"  name="mphone" id="i_mphone"/>
											</div>
										</div>
		                                <div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="email">Email :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" name="memail" data-parsley-type="email" placeholder="email@example.com" id="i_memail" />
												<!-- <input class="form-control" type="text" name="memail" data-parsley-type="email" placeholder="email@example.com" data-parsley-required="true" /> -->
											</div>
										</div>
										<div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">주소 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="주소" name="maddress" id="i_maddress"/>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">입사날짜 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="i_mjoindate" placeholder="2020/01/01" name="mjoindate" />
<!-- 		                                    <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" name="mdate" id="i_mdate"/> -->
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">부서 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control" name="dno" id="i_dno">
		                                            <option value="10">도서 1팀</option>
		                                            <option value="20">도서 2팀</option>
		                                            <option value="30">영업팀</option>
		                                            <option value="40">회계팀</option>
		                                        </select>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">직급 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control" name="pno" id="i_pno">
		                                            <option value="1">사원</option>
		                                            <option value="2">주임</option>
		                                            <option value="3">대리</option>
		                                            <option value="4">과장</option>
		                                            <option value="5">차장</option>
		                                            <option value="6">부장</option>
		                                            <option value="7">이사</option>
		                                        </select>
		                                    </div>
		                                </div>
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="button" class="btn btn-sm btn-success" onclick="insertMember();">등록</button>
									</div>
		                            </form>
								</div>
							</div>
						</div>
                    
                        <table id="data-table" class="table table-striped table-bordered" width="100%">
                            <thead>
                              <tr>
                                  <th><input type="checkbox"></th>
                                  <th>사원번호</th>
                                  <th>사원이름</th>
                                  <th>부서</th>
                                  <th>직급</th>
                                  <th>생년월일</th>
                                  <th>입사일자</th>
                                  <th>이메일</th>
                                  <th>전화번호</th>
                                  <th width="120">관리</th>
                              </tr>
                            </thead>
                            <tbody id="memberTablePlace">

                            </tbody>
                        </table>                     
                 </div>
			</div>
		</div>
	</div>
	

 	<!-- ================== BEGIN BASE JS ================== -->
	<!-- 인사관리 추가 버튼 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>
	<!-- 이메일 input -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/parsley/dist/parsley.js"></script>

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
	<!-- 테이블 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- 날짜선택 -->
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
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
	$(document).ready(function() {
		App.init();
		TableManageColReorder.init();
		FormPlugins.init();
	});
	
		
	/* 사원 리스트*/
		function displayMember() {
			$.ajax({
				type: "GET",
				url: "member_list",
				dataType: "json",
				success: function(json) {
					if(json.length==0) {
						var html="<tr><td class='center' colspan='10'>등록된 사원내역이 존재하지 않습니다.</td></tr>";
						$("#memberTablePlace").html(html);
						return;
					}
					
					var html="";
					$(json).each(function() {				
						
						html+="<tr>";
						html+="<td><input type='checkbox'></td>";
						html+="<td>"+this.mno+"</td>";
						html+="<td>"+this.mname+"</td>";
						html+="<td>"+this.department.dname+"</td>";
						html+="<td>"+this.position.pname+"</td>";
						html+="<td>"+this.mbirth+"</td>";
						html+="<td>"+this.mjoindate+"</td>";
						html+="<td>"+this.memail+"</td>";
						html+="<td>"+this.mphone+"</td>";
						html+="<td><button onclick='deleteMember("+this.mno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button href='#modal-update' class='btn btn-sm btn-success' data-toggle='modal'>수정</button></td>";
						html+="</tr>";				
						
						});
				
					
					$("#data-table").dataTable().fnDestroy();
					$("#memberTablePlace").html(html);
					$("#data-table").dataTable(); 
					
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		
		displayMember();
		
	/* 사원 삭제 */
	
		function deleteMember(mno) {
			if(confirm("정말로 삭제하시겠습니까?")) {
				location.href="member_delete/"+mno;
			}
		}
		
	/* 사원 추가 */
		
 		function insertMember() {
			var mno=$("#i_mno").val();
			var mname=$("#i_mname").val();
			var mpw=$("#i_mpw").val();
			var mbirth=$("#i_mbirth").val();
			var mphone=$("#i_mphone").val();
			var memail=$("#i_memail").val();
			var maddress=$("#i_maddress").val();
			var mjoindate=$("#i_mjoindate").val();
			var mquitdate=$("#i_mquitdate").val();
			var mquitreason=$("#i_mquitreason").val();
			var mstate=$("#i_mstate").val();
			var dno=$("#i_dno").val();
			var pno=$("#i_pno").val();
			
			$.ajax({
				type: "POST",
				url: "member_insert",
				headers: {"content-type":"application/json"},
				data: JSON.stringify({
					"mno":mno,
					"mname":mname,
					"mpw":mpw,
					"mbirth":mbirth,
					"mphone":mphone,
					"memail":memail,
					"maddress":maddress,
					"mjoindate":mjoindate,
					"mquitdate":mquitdate,
					"mquitreason":mquitreason,
					"mstate":mstate,
					"dno":dno,
					"pno":pno
				}),
				
				dataType: "text",
				success: function(text) {	
					location.reload();	
				}
			});
		}  
		
		
	
	
	</script>
<!-- 어디에 쓰이는 것인가? - 아 행클릭하면 지정해놓은 사이트로 이동
	<script>
	$(document).ready(function($) {
    $('*[data-href]').on('click', function() {
        window.location = $(this).data("href");
   	});
});
	</script> -->
