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
    
    <!-- jquery-ui CSS (sortable 관련) -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	
	<!-- dataTables 관련 JS -->
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


	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	
	<!-- jquery-ui JavaScript (sortable 관련) -->   
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- ==================== END PAGE LEVEL JS =================== -->

	<!-- ================== END BASE JS ================== -->
	

	
	
	
	<style type="text/css">
	
			#sortable0, #sortable1, #sortable2, #sortable3,
			#sortable4, #sortable5, #sortable6, #sortable7, #sortable8{ 
          
	          /* border: 2px solid black;*/
	          width: 100%;
	          padding: 5px 0 0 0;
	          float: left;
	          margin-right: 10px;
	         
	        }
			
          .ui-draggable { 
	          margin: 5px;
	          font-size: 1.0em;
	          width: 148px;
	          float: left;
        	}
        	
        	
        	#mask{  
		      position:absolute;  
		      z-index:9000;  
		      background-color:#000;  
		      display:none;  
		      left:0;
		      top:0;
			  opacity: 1.0;
		    }
		    
		#mask_content{
			background-color: white !important;
			height: 800px;
		    z-index:10000;
			opacity: 2.0 !important;
		}
		
		#book_image {
			display: flex;
			
			justify-content: center;
			align-items: center;
		}
		
		#book_image  img{
			width: 400px;
			height: 500px;
		}
		
		#book_info{
			margin-top: 100px;
			margin-left:20px;
			height: 600px;
			background-color: black;
		}
		
		#book_info form{
			border: 1px solid white;
		}
		
	
	</style>
</head>
<body>
	<!-- 도서 정보 창-->
	<div id="mask">
			<div style="height: 100px;"></div>
			<div class="row">
			<div class="col-md-12" id="mask_content" >
							<div class="row">
							<div style="height: 150px;"></div>
										<div class="col-md-5" id="book_image">
												<img src="${pageContext.request.contextPath}/resources/assets/img/secrete.jpg">
										</div>
										<div class="col-md-5 text-column">
											<h1>The Secrete : 비밀을 찾아서</h1>
											<h2>생각연구소</h2>
											<h5>작가이름 : 애덤 그랜트</h5>
											<h5>출판날짜 : 2013년</h5>
											<h5>카테고리 : 자기개발</h5>
											<h5>도서위치 : A구역 32번</h5>
											<h5>판매가격 : 16000원</h5>
											<h5>재고수량 : 12개</h5>
											<p>
											위대한 성공의 비밀을 소개한 책, 『시크릿』으로 단번에 유명해진 론다 번은 호주의 TV PD이자 방송 작가이다. 
											위대한 성공의 비밀을 전 세계 사람들과 공유하겠다는 마음을 먹고 미국으로 건너갔다. 
											뛰어난 저술가, 과학자, 철학자들과의 공동작업으로 『시크릿』의 DVD와 책이 제작되었고, 
											이는 미국에서 '시크릿 신드롬'으로 이어졌다. 
											오프라 윈프리 쇼와 래리 킹 라이브 등 미국 최고의 프로에서 집중적으로 조명을 받았다. 
											그녀의 『시크릿』은 한국에도 선풍적인 인기를 끌며 수 주간 베스트셀러에 오르기도 했다.
											</p>
										</div>
										<div class="col-md-2"></div>
							</div>
						
			</div>
			</div>

	</div>

	<div class="window"> </div>
	
	
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
				<!-- begin row -->
					<div class="row">
					<div class="col-md-8">
					</div>
					<div class="col-md-4">
									<div style="padding-right:50px; margin-bottom: 5px">
										<button type="button" class="btn btn-white"><i class="fa fa-file"></i> 도서위치 저장</button>
									</div>
					</div>
					</div>
					<div class="row">
						<!-- begin col-9 -->
						<div class="col-md-8 col-sm-6">
							
							<div class="row">
								<div class=col-md-4 ">
										<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">A Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable0" class="connectedSortable" >
																
								                        </div>
							                    </div>
						                  </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">B Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable1" class="connectedSortable" >
		
								                        </div>
							                    </div>
						             </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">C Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable2" class="connectedSortable" >
		
								                        </div>
							                    </div>
						                  </div>
								</div>
							</div>
							<div class="row">
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">D Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable3" class="connectedSortable" >
															
								                        </div>
							                    </div>
						                  </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">E Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable4" class="connectedSortable" >
																
								                        </div>
							                    </div>
						                  </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">F Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable5" class="connectedSortable" >
		
								                        </div>
							                    </div>
						                  </div>
								</div>
							</div>				
							<div class="row">
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">G Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable6" class="connectedSortable" >
		
								                        </div>
							                    </div>
						                  </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">H Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable7" class="connectedSortable" >
		
								                        </div>
							                    </div>
						                  </div>
								</div>
								<div class=col-md-4 ">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">I Site</h4>
						                        </div>
							                    <div class="panel-body">
														<div id="sortable8" class="connectedSortable" >
		
								                        </div>
							                    </div>
						                  </div>
								</div>
							</div>									
						</div>
						<!-- end col-9 -->
						

						<!-- begin col-3 -->
						<div class="col-md-4 col-sm-6">

								<!-- begin panel -->
								<div class="panel panel-inverse">
									<div class="panel-heading">
										<div class="panel-heading-btn">
											<a href="javascript:;"
												class="btn btn-xs btn-icon btn-circle btn-default"
												data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
												href="javascript:;"
												class="btn btn-xs btn-icon btn-circle btn-success"
												data-click="panel-reload" data-original-title="" title=""><i
												class="fa fa-repeat"></i></a> <a href="javascript:;"
												class="btn btn-xs btn-icon btn-circle btn-warning"
												data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
												href="javascript:;"
												class="btn btn-xs btn-icon btn-circle btn-danger"
												data-click="panel-remove"><i class="fa fa-times"></i></a>
										</div>
										<h4 class="panel-title">도서 검색</h4>
									</div>
									<div class="panel-body">
											 <div id="data-table_wrapper"
											class="dataTables_wrapper form-inline dt-bootstrap no-footer">
											
											<div class="row">
												<div class="col-sm-12">
													 <table id="book_table" class="table table-striped table-bordered nowrap" width="100%">
														<thead>
															<tr role="row">
																<th class="sorting_asc" tabindex="0"
																	aria-controls="data-table" rowspan="1" colspan="1"
																	aria-sort="ascending"
																	aria-label="Rendering engine: activate to sort column descending"
																	style="width: 133px;">도서코드</th>
																<th class="sorting_asc" tabindex="0"
																	aria-controls="data-table" rowspan="1" colspan="1"
																	aria-sort="ascending"
																	aria-label="Rendering engine: activate to sort column descending"
																	style="width: 300px;">도서이름</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table" rowspan="1" colspan="1"
																	aria-label="Browser: activate to sort column ascending"
																	style="width: 130px;">카테고리</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table" rowspan="1" colspan="1"
																	aria-label="Platform(s): activate to sort column ascending"
																	style="width: 80px;">위치</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table" rowspan="1" colspan="1"
																	aria-label="Engine version: activate to sort column ascending"
																	style="width: 80px;">번호</th>
															</tr>
														</thead>
														<tbody>
														<tr class="gradeA odd" role="row">
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
														<!-- 
																<tr class="gradeA odd" role="row">
																	<td class="sorting_1">시크릿 : 비밀을 찾아서</td>
																	<td>인문</td>
																	<td>A구역</td>
																	<td>20</td>
																</tr>
														 -->		
														</tbody>		
													</table>
												</div>
											</div>
															
											
											
										</div>
									</div>
								</div>
					</div>
					<!-- end panel -->
		
				</div>
				<!-- end col-3 -->
						
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
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<!-- dataTables 관련 라이브러리  -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			//Dashboard.init();
			TableManageTableSelect.init();

			// sortable 기능
		    $( "#sortable0, #sortable1, #sortable2, #sortable3, #sortable4, #sortable5, #sortable6, #sortable7, #sortable8" ).sortable({
		        connectWith: ".connectedSortable"
		    }).disableSelection();
    
		});
		
		 // 도서 데이터 가져와 ul li만들기
	      function createBook(data){ // data는 서버에서 넘어온 값(도서번호)
	         // 임시) 나중에 데이터값 가져와 for문으로 작성
	          /*
	          	<div class="external-event bg-red ui-draggable" data-title="Video Shooting" style="position: relative; z-index: auto; left: 0px; top: 0px;">
	 				<h5 style="color: black;"><i class="fa fa-book fa-lg fa-fw"></i>[A20] 시크릿 : 비밀을 찾아서</h5>
				</div>
	          */
	          var site = "[A20] ";
	          var category = "인문</br>";
	          var title = "시크릿  : 비밀을 찾아서";
	          var temp = "<div style='color: black;'><i class='fa fa-book fa-lg fa-fw'></i>"+site+category+title+"</div>";
	          var temp2 = "<div style='color: black;' value='132'><i class='fa fa-book fa-lg fa-fw'></i>"+site+category+title+"</div>";
	          
	          var danger = "<div class='external-event bg-danger ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var warning = "<div class='external-event bg-warning ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var success = "<div class='external-event bg-success ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var info = "<div class='external-event bg-info ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var primary = "<div class='external-event bg-primary ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var orange = "<div class='external-event bg-orange ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var purple = "<div class='external-event bg-purple ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var red = "<div class='external-event bg-red ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var yellow = "<div class='external-event bg-yellow ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
	          var yellow2 = "<div class='external-event bg-yellow ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp2+"</div>";
	          
	          
	      
	       
	         $("#sortable0").append(danger);
	         $("#sortable0").append(danger);
	         $("#sortable0").append(danger);

	         $("#sortable1").append(warning);
	         $("#sortable1").append(warning);
	         $("#sortable1").append(warning);
	         $("#sortable1").append(warning);
	         
	         $("#sortable2").append(success);
	         $("#sortable2").append(success);
	         $("#sortable2").append(success);
	         $("#sortable2").append(success);
	         $("#sortable2").append(success);
	         
	         $("#sortable3").append(info);
	         $("#sortable3").append(info);
	         $("#sortable3").append(info);
	         $("#sortable3").append(info);
	         
	         $("#sortable4").append(primary);
	         $("#sortable4").append(primary);
	         
	         $("#sortable5").append(orange);
	         $("#sortable5").append(orange);
	         $("#sortable5").append(orange);
	         
	         $("#sortable6").append(purple);
	         $("#sortable6").append(purple);
	         $("#sortable6").append(purple);
	         
	         $("#sortable7").append(red);
	         $("#sortable7").append(red);
	         $("#sortable7").append(red);
	         $("#sortable7").append(red);
	         
	         $("#sortable8").append(yellow2);
	         $("#sortable8").append(yellow);
	         $("#sortable8").append(yellow);
	         $("#sortable8").append(yellow);
	        
	         
	      }
	      
	      createBook();
	      
	    
	      // Korean
	      var lang_kor = {
	          "decimal" : "",
	          "emptyTable" : "데이터가 없습니다.",
	          "info" : "_START_ - _END_ (총 _TOTAL_ 권)",
	          "infoEmpty" : "0권",
	          "infoFiltered" : "(전체 _MAX_ 권 중 검색결과)",
	          "infoPostFix" : "",
	          "thousands" : ",",
	          "lengthMenu" : "_MENU_ 개씩 보기",
	          "loadingRecords" : "로딩중...",
	          "processing" : "처리중...",
	          "search" : "검색 : ",
	          "zeroRecords" : "검색된 데이터가 없습니다.",
	          "selected" : "선택",
	          "paginate" : {
	              "first" : "첫 페이지",
	              "last" : "마지막 페이지",
	              "next" : "다음",
	              "previous" : "이전"
	          },
	          "aria" : {
	              "sortAscending" : " :  오름차순 정렬",
	              "sortDescending" : " :  내림차순 정렬"
	          }
	      };
	      
	      var dataSet = new Array(100);
	         for (var i=0; i<dataSet.length; i++) {
	           dataSet[i] = ["132","시크릿 : 비밀을 찾아서","인문","A구역","20"]
	        }

	      var table = $('#book_table').dataTable({
	            data : dataSet,
	            pageLength: 15,
	            bPaginate: true,
	            bLengthChange: true,
	            lengthMenu : [ [ 7, 10, 15, -1 ], [ 7, 10, 15, "전체" ] ],
	            bAutoWidth: false,
	            processing: true,
	            ordering: true,
	            serverSide: false,
	            searching: true,
	            language : lang_kor,
	            columnDefs: [{
	            orderable: false,
	            className: 'select-checkbox',
	            targets: 0
	            
	            }],
	            
	            select:{
		               style:'single'
		         },
	           
	            //dom: 'Bfrtip','lrtip',
	            //dom: '<"top"trB>rt<"top"flp><"clear">',
	            dom:'Blfrtip',
	            buttons: [{
	                extend: 'selectAll',
	                text: '전체 선택'
	                
	               },{
	               extend: 'selectNone',
	               text: '전체 해제'
	               }
	            ]
	        });
	      
	   		// 클릭한 행 토글 사용하여 selected 변경
	        $('#book_table tbody').on( 'click', 'tr', function () {
	        	 //클릭한 행 모든 값 가져오기
	        	 var bookInfo = $('#book_table').DataTable().row(this).data();
	        	 
	        	 $(".ui-draggable div").each(function(){
	        		if($(this).attr('value')==bookInfo[0]){
		        				//$(this).scrollIntoView();
		        				$(this).parent().attr("tabindex",-1);
		        				//$(this).parent().attr("style" , "border : 2px solid red");
		        				$(this).parent().focus().css("outline-color","red");
					}
		        });
	       });
	   
	   		/*
	   		$(".ui-draggable").click(function(){
	   		
	   		});
	   		*/
	   		
	   	 	function wrapWindowByMask(){
	   	        //화면의 높이와 너비를 구한다.
	   	        var maskHeight = $(document).height();  
	   	        var maskWidth = $(window).width();  

	   	        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
	   	        $('#mask').css({'width':maskWidth,'height':maskHeight});  

	   	        //애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
	   	        //$('#mask').fadeIn(500);      
	   	        //$('#mask').fadeTo("fast",0.8);    
	   	        //스크롤 상단으로
	   	        $('html').scrollTop(0);
	   	      
	   	        $('#mask').show();
	   	    }
	   		
	   		$('.ui-draggable').on('click', function(e) {
	   			// 클릭한 북코드
	   			var bookcode = $(this).children().attr("value");
	   		 
	   			wrapWindowByMask();
	   		
	   		});
	   		
	   		$("#mask").click(function(){
		   		$(this).hide();
	   		});
	   		
		
	   		//$('#mask, .window').hide();  
	        
	        	 
	  
		
	</script>
</body>
</html>