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
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
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
		<!-- 여기다 콘텐츠 넣으면 되는데 그 bootstrap 그리드 사용법 알려줄게 
		일정 간격으로 배치할 수 있게 근데 언제 알려주지? 만나야 알려주던가 할텐데 ㅋㅋ-->
		
		<div id="content" class="content">
			
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
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/dashboard.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			Dashboard.init();
		});
	</script>
</body>
</html>