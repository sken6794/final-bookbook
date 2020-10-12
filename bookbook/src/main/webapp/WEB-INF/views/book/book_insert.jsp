<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Dashboard</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	

	<!-- ==================DatePicker ============================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	 <!-- ================================================================ -->
	 
	 
	 
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span> BookBook Admin</a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form full-width">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>
					<li class="dropdown">
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label">5</span>
						</a>
						<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">Notifications (5)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Server Error Reports</h6>
                                        <div class="text-muted f-s-11">3 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="${pageContext.request.contextPath}/resources/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">John Smith</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">25 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="${pageContext.request.contextPath}/resources/assets/img/user-4.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Olivia</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">35 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New User Registered</h6>
                                        <div class="text-muted f-s-11">1 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New Email From John</h6>
                                        <div class="text-muted f-s-11">2 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">View more</a>
                            </li>
						</ul>
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg" alt="" /> 
							<span class="hidden-xs">Adam Schwartz</span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="javascript:;">Edit Profile</a></li>
							<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
							<li><a href="javascript:;">Calendar</a></li>
							<li><a href="javascript:;">Setting</a></li>
							<li class="divider"></li>
							<li><a href="javascript:;">Log Out</a></li>
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end #header -->
		
		<!-- 사이드바 -->
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<div class="image">
							<a href="javascript:;"><img src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg" alt="" /></a>
						</div>
						<div class="info">
							박정호 님 
							<small>Full Stack Developer</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">북북 ERP</li>
					<li class="has-sub active">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>인사관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">사원 등록</a></li>
						    <li><a href="index.html">사원 수정</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>도서관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">도서 위치</a></li>
						    <li><a href="index.html">도서 등록</a></li>
						    <li><a href="index.html">도서 수정</a></li>
						    <li><a href="index.html">도서 검색</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>주문관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">주문 등록</a></li>
						    <li><a href="index.html">주문 검색</a></li>
						    <li><a href="index.html">주문 수정</a></li>
						    <li><a href="index.html">주문 삭제</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>발주관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">발주 등록</a></li>
						    <li><a href="index.html">발주 검색</a></li>
						    <li><a href="index.html">발주 수정</a></li>
						    <li><a href="index.html">발주 삭제</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>입고관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">입고 등록</a></li>
						    <li><a href="index.html">입고 검색</a></li>
						    <li><a href="index.html">입고 수정</a></li>
						    <li><a href="index.html">입고 삭제</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>출고관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">출고 등록</a></li>
						    <li><a href="index.html">출고 검색</a></li>
						    <li><a href="index.html">출고 수정</a></li>
						    <li><a href="index.html">출고 삭제</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>재고관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">재고 등록</a></li>
						    <li><a href="index.html">재고 검색</a></li>
						    <li><a href="index.html">재고 수정</a></li>
						    <li><a href="index.html">재고 삭제</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>통계관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">통계 보기</a></li>
						</ul>
					</li>
					<li class="nav-header">북북 그룹웨어</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>근태관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">근태 현황</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>급여관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">급여 목록</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>전자결재</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">전자결재 양식</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>일정관리</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">일정표</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>공지사항</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">공지 게시판</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>회의실</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="index.html">채팅방 목록</a></li>
						</ul>
					</li>
			        <!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
			        <!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
			<div class="rwo">
					<div class="col-md-1"></div>
					<div class="col-md-10">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">도서 등록</h4>
							                        </div>
	
														<div class="panel-body panel-form">
															<form class="form-horizontal form-bordered" data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 이름 </label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="도서 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판사 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="출판사 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">작가 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="작가 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">카테고리</label>
																	<div class="col-md-6 col-sm-6">
																		<label class="radio-inline"><input type="radio" name="si" value="si" checked="checked"> 시</label>
																		<label class="radio-inline"><input type="radio" name="jabji" value="jabji" > 잡지</label>
																		<label class="radio-inline"><input type="radio" name="yeocksa" value="yeocksa" > 역사</label>
																		<label class="radio-inline"><input type="radio" name="cheolhak" value="cheolhak" > 철학</label>
																		<label class="radio-inline"><input type="radio" name="soseol" value="soseol" >  소설</label>
																		<label class="radio-inline"><input type="radio" name="gyoyuk" value="gyoyuk" > 교육</label>
																		<label class="radio-inline"><input type="radio" name="yesul" value="yesul" > 예술</label>
																		<label class="radio-inline"><input type="radio" name="essay" value="essay" > 에세이</label>
																		<label class="radio-inline"><input type="radio" name="jagigaebal" value="jagigaebal" > 자기개발</label>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">재고 수량</label>
																	<div class="col-md-6 col-sm-6">
																		<input id="spinner" name="value" > 권
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판 날짜</label>
																	<div class="col-md-6 col-sm-6">
																		<div class="input-group date" id="date1">
								                                            <input type="text" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">입고 날짜</label>
																	<div class="col-md-6 col-sm-6">
																		<div class="input-group date" id="date2">
								                                            <input type="text" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 위치</label>
																	<div class="col-md-6 col-sm-6">
																		<select class="form-control">
								                                            <option>A구역</option>
								                                            <option>B구역</option>
								                                            <option>C구역</option>
								                                            <option>D구역</option>
								                                            <option>E구역</option>
								                                            <option>F구역</option>
								                                            <option>G구역</option>
								                                            <option>H구역</option>
								                                            <option>I구역</option>
								                                        </select>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">판매 가격</label>
																	<div class="col-md-6 col-sm-6">
																		<p>
																		  <label for="amount">판매 가격을</label>
																		  <input type="text" id="amount" size="4" readonly style="border:0; color:#242A30; font-weight:bold;" >원으로 설정합니다.
																		</p>
																		<div id="slider"></div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4"></label>
																	<div class="row">
																		<div class="col-md-9"></div>
																		<div class="col-md-3 col-sm-6">
																			<button type="button" class="btn btn-inverse m-r-5 m-b-5">도서정보 저장</button>
																		</div>
																	</div>
																</div>
															</form>
														</div>
						</div>
					
					</div>
					<div class="col-md-1"></div>
			</div>	
			
			
			
		</div>
		<!-- end #content -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	

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
			//Dashboard.init();
			FormPlugins.init();
			
			$(function(){

			
				$.fn.datepicker.dates['kr'] = {
						days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
						daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
						daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
						months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
						monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
				};


		        $('#date1').datepicker({
		            calendarWeeks: false,
		            todayHighlight: true,
		            autoclose: true,
		            format: "yyyy/mm/dd",
		            language: "kr"
		       	 });
		      
		    });
			
			
			  $('#date2').datepicker({
		            calendarWeeks: false,
		            todayHighlight: true,
		            autoclose: true,
		            format: "yyyy/mm/dd",
		            language: "kr"
		       	 });


			
			 $( function() {
				 	var spinner = $( "#spinner" ).spinner({
					 	  min: 0,
						  max: 2500,
					      step: 1,
					      start: 0,
					      numberFormat: "권"
				 	});
				 
				    $( "#slider" ).slider({
				      value:100,
				      min: 0,
				      max: 50000,
				      step: 500,
				      slide: function( event, ui ) {
				        $( "#amount" ).val( ui.value );
				      }
				    });
				    
				    $( "#amount" ).val( $( "#slider" ).slider( "value" ));
					 // 스피너 값 가져오기
				     // alert( spinner.spinner( "value" ) );
			} );
			 
			
			
		});
	</script>
</body>
</html>