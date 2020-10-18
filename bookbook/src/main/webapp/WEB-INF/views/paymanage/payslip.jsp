<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#modal-dialog th, td {
	text-align: center;
}
</style>
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

	<!-- 급여명세 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/ColReorder/css/colReorder.bootstrap.min.css" rel="stylesheet" />
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
			<li><a href="javascript:;">급여관리</a></li>
			<li class="active">급여명세</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">급여관리 <small>급여명세</small></h1>
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
                 <h4 class="panel-title">급여 명세</h4>
              </div>
              <div class="panel-body">
              <form class="form-horizontal">
			 	<div class="row">
			 		<div class="col-md-4"></div>
                    <div class="col-md-2">
                        <div class="form-group">
						<div class="col-md-6 col-sm-6">
                            <select class="form-control" style="width: 70px; margin: 0px;">
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
                                <option>11</option>
                                <option>12</option>
                            </select>
						</div>								
							<label class="control-label">월</label>
                        </div>
                     </div>								
                     <div class="col-md-3">
                        <div class="form-group">
							<label class="control-label col-md-4 col-sm-4">사원번호</label>
							<div class="col-md-6 col-sm-6">
	                           <input type="text" class="form-control" placeholder="사원번호" />
							</div>
						</div>	
                     </div>
                     <div class="col-md-3"></div>
	            </div>
	            <br>
	                <div style="text-align: center;">
	                <a href="javascript:;" class="btn btn-sm btn-white">조회</a>
					<a href="#modal-dialog" class="btn btn-sm btn-success" data-toggle="modal">급여명세서</a>
	                </div>
	           </form>
	           <br>
	           <br>
	           	<!-- 급여명세서 클릭 시 팝업창 -->
					<div class="modal fade" id="modal-dialog">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<br>
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" style="text-align: center; font-weight: bold;">2020년 9월 명세서</h4>
								</div>
								<div class="modal-body">
									<div class="row">
										<table class="table" style="text-align: center;">
	                              		<thead>
	                                    	<tr>
	                                        	<th>사원명</th>
	                                        	<th>지급일</th>
	                                  		  </tr>
	                                    	<tr>
	                                        	<td>김딸기</td>
	                                        	<td>2020.07.30</td>
	                                  		  </tr>
	                                    	<tr>
	                                        	<th>부서</th>
	                                        	<th>직책</th>
	                                  		</tr>
	                                    	<tr>
	                                        	<td>도서1팀</td>
	                                        	<td>사원</td>
	                                  		</tr>
	                                  	</thead>
                                 		</table>
                                	 </div>                	
			                         <br>
                         			<div class="row">
                            		<div class="col-md-6">
                                 		<table class="table table-striped" style="text-align: center;">
                                 		<thead>
	                              			<tr>
	                                     		<th>지급항목</th>
	                                       		<th>지급액</th>
	                                    	</tr>
                                		</thead>
                                		<tbody>
	                                    <tr>
	                                        <td>기본급</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>식대</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>야근수당</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>휴일수당</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>성과급</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>기타수당</td>
	                                        <td>000</td>
	                                    </tr>
	                                    <tr>
	                                        <td>합산 지급액</td>
	                                        <td>000</td>
	                                    </tr>
                                		</tbody>
                            	</table>
                            	</div>
                           
                           		<div class="col-md-6">
	                            <table class="table table-striped" style="text-align: center;">
	                               <thead>
	                            		<tr>
	                                     	<th>공제항목</th>
	                                       	<th>공제액</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td>국민연금</td>
	                                        <td>4.5%</td>
	                                    </tr>
	                                    <tr>
	                                        <td>건강보험</td>
	                                        <td>3.335%</td>
	                                    </tr>
	                                    <tr>
	                                        <td>장기요양</td>
	                                        <td>건강보험의 10.25%</td>
	                                    </tr>
	                                    <tr>
	                                        <td>고용보험</td>
	                                        <td>0.8%</td>
	                                    </tr>
	                                    <tr>
	                                        <td>근로소득세</td>
	                                        <td>10%</td>
	                                    </tr>
	                                    <tr>
	                                        <td>합산 공제액</td>
	                                        <td></td>
	                                    </tr>
	                                </tbody>
	                            </table>
                           		</div>
                         	</div>
                         	<div class="row">
                         		<table class="table" style="text-align: center;">
	                            <thead>
	                               <tr>
	                                  <th>실 수령액</th>
	                               </tr>
	                               <tr>
	                     		      <td>000</td>
	                               </tr>
	                             </thead>
	                             </table>
                         	</div>
                         	</div> 
								<div class="modal-footer">
									<input type="button" value="인쇄" onclick="window.print()" class="btn btn-sm btn-white">
									<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
								</div>
							</div>
						</div>
					</div>
          			
          			<table id="data-table" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>선택</th>
								<th>지급일자</th>
								<th>사원번호</th>
								<th>이름</th>
								<th>부서</th>
								<th>직급</th>
							</tr>
						</thead>
						<tbody>
							<tr class="odd gradeX">
								<td style="text-align: center;"><input type="checkbox"></td>
								<td>1</td>
								<td>김딸기</td>
								<td>도서1팀</td>
								<td>사원</td>
								<td>20/09/30</td>
							</tr>
						</tbody>
					</table>
					
	           
           
	           
	           <!-- 내용 끝 -->
	           </div>
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
	
	<!-- 급여명세 테이블 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-colreorder.demo.min.js"></script> <!-- 검색창이랑 페이지 숫자 담당 -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	
		
	<script>
		$(document).ready(function() {
			App.init();
		});
		
		/* 테이블 */
		$(document).ready(function() {
			App.init();
			TableManageColReorder.init();
		});
	</script>          	 	
</body>
</html>