<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

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
	
			#A, #B, #C, #D,
			#E, #F, #G, #H, #I{ 
          
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
	
	
		
		<!-- begin #content -->
		<div id="content" class="content">
				<!-- begin row -->
					<div class="row">
					<div class="col-md-8">
					</div>
					<div class="col-md-4">
									<div style="padding-right:50px; margin-bottom: 5px">
										<button type="button" class="btn btn-white" id="updateLocBtn"><i class="fa fa-file"></i> 도서위치 저장</button>
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
														<div id="A" class="connectedSortable" >
																
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
														<div id="B" class="connectedSortable" >
		
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
														<div id="C" class="connectedSortable" >
		
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
														<div id="D" class="connectedSortable" >
															
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
														<div id="E" class="connectedSortable" >
																
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
														<div id="F" class="connectedSortable" >
		
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
														<div id="G" class="connectedSortable" >
		
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
														<div id="H" class="connectedSortable" >
		
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
														<div id="I" class="connectedSortable" >
		
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
														<!--
														<tr class="gradeA odd" role="row">
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td></td>
														</tr>
														-->
														<c:forEach var="book"  items="${bookList}">
														<tr class="gradeA odd" role="row">
																	<td class="sorting_1">${book.bcode }</td>
																	<td>${book.bname }</td>
																	<td>${book.bcategory }</td>
																	<td>${book.bloc }</td>
																	<td>${book.bcode }</td>
														</tr>
														</c:forEach>
															
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
		    $( "#A, #B, #C, #D, #E, #F, #G, #H, #I" ).sortable({
		        connectWith: ".connectedSortable"
		    }).disableSelection();
    
		    createBook();	
			
		});
		
		//updateLocBtn (도서 정보 저장 버튼)
		$("#updateLocBtn").click(function(){
			
			 
			var param = [];
			$('.connectedSortable div div').each(function (index, item) { 
				// 북코드
				var bcode = $(this).attr("value");
				
				//alert(bookcode);
				//alert($(this).parent().parent().attr("id"));
				//위치	
				var bloc = $(this).parent().parent().attr("id");
				var dataSet = {
							"bloc" : bloc,
							"bcode" : bcode
				};
				param.push(dataSet);
				
			});
				
			 var jsonData = JSON.stringify(param);
			 //alert(jsonData);
			//alert("??")
			 
			 $.ajax({
					type: "GET",
	        	  	url: "bookUpdateLoc",
	        	  	traditional : true,
	        	  	data: {"jsonData" : jsonData},
		      		success : function(result){
		      			if(result=="success"){
		      				 var contextPath= getContextPath();
		      				 location.href=contextPath+"/book";
		      			}else{
		      				//alert("실패");
		      			}
		      		}
			  });

		});
		
		//ContextPath 값 리턴
		function getContextPath() {
		    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
		}

		 // 도서 데이터 가져와 ul li만들기
	      function createBook(data){ // data는 서버에서 넘어온 값(도서번호)
	          $.ajax({
	        	  	type: "GET",
	        	  	url: "allBookList",
		      		dataType: "json",
		      		success: function(json) {
		      		
			      		$(json).each(function() {
			      			   site = "["+this.bloc+this.bcode+"] ";
				   	           category = this.bcategory+"</br>";
				   	           title = this.bname;
				   	           temp = "<div style='color: black;' value="+this.bcode+
				   	           "><i class='fa fa-book fa-lg fa-fw'></i>"+site+category+title+"</div>";
				   	           
				   	           if(this.bloc=='A'){
				   	        	  	danger = "<div class='external-event bg-danger ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	 	 $("#A").append(danger);
				   	           }else if(this.bloc=='B'){
				   	        		warning = "<div class='external-event bg-warning ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#B").append(warning);
				   	           }else if(this.bloc=='C'){
				   	        		success = "<div class='external-event bg-success ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#C").append(success);
				   	           }else if(this.bloc=='D'){
				   	        		info = "<div class='external-event bg-info ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#D").append(info);
				   	           }else if(this.bloc=='E'){
				   	        		primary = "<div class='external-event bg-primary ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#E").append(primary);
				   	           }else if(this.bloc=='F'){
				   	        		orange = "<div class='external-event bg-orange ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#F").append(orange);
				   	           }else if(this.bloc=='G'){
				   	        		purple = "<div class='external-event bg-purple ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	 	 $("#G").append(purple);
				   	           }else if(this.bloc=='H'){
				   	        	  	red = "<div class='external-event bg-red ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
				   	        	  	$("#H").append(red);
				   	           }else if(this.bloc=='I'){
					   	        	  yellow = "<div class='external-event bg-yellow ui-draggable' style='position: relative; z-index: auto; left: 0px; top: 0px;'>"+temp+"</div>";
					   	        	  $("#I").append(yellow);
				   	           }
			      		});
		      		},
		      		
		      		error: function(xhr) {
		      			
		      		}
	          });

	      }
	      
	     
	      
	    
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
	      
	    

	      var table = $('#book_table').dataTable({
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
	   		
	   		$('.connectedSortable').on('click', 'div',function(e) {
	   			// 클릭한 북코드
	   			var bookcode = $(this).children().attr("value");
	   			wrapWindowByMask();
	   		
	   		});
	   		
	   		$("#mask").click(function(){
		   		$(this).hide();
	   		});
	   		
		
	   		//$('#mask, .window').hide();  
	</script>
