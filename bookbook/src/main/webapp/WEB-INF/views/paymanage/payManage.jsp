<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<!-- ================== BEGIN BASE CSS STYLE ================== -->

	<!-- 생년월일,입사날짜 datepicker -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<!-- 이메일 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- 파일 업로드 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
	<!-- 급여조회 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/ColReorder/css/colReorder.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />    
	<!-- ================== END BASE CSS STYLE ================== -->

</head>
<body>
	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">급여관리</a></li>
			<li class="active">급여조회</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">급여관리 <small>급여조회</small></h1>
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
                 <h4 class="panel-title">급여 조회</h4>
              </div>
              <div class="panel-body">
              <form class="form-horizontal">
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
                                   	  <option>전체</option>
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
                                  	 <option>전체</option>
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
                    <!-- </div> -->
                    <br>
		                <div style="text-align: center;">
		                <a href="javascript:;" class="btn btn-sm btn-white">조회</a>
						<a href="javascript:;" class="btn btn-sm btn-success" data-toggle="modal">수정</a>
		                </div>			
                   </form>
                <hr>   		
					<p class="text-right m-b-0" style="margin-right: 13px;">
						<a href="#modal-dialog1" class="btn btn-sm btn-white" data-toggle="modal">추가</a>
						<a href="javascript:;" class="btn btn-sm btn-white">삭제</a>
						<a href="#modal-dialog2" class="btn btn-sm btn-success" data-toggle="modal">급여명세서</a>
					</p>
					<br>
					<!-- 추가 클릭 시 급여데이터 추가팝업창 -->
					<div class="modal fade" id="modal-dialog1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">급여내역 데이터 등록</h4>
									</div>
									<!-- 급여 내역 추가 form -->
									<div class="modal-body">
										<form class="form-horizontal">
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">사원번호 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <input type="text" class="form-control" placeholder="사원번호" style="float: left;">
			                                    </div>
			                                </div>
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">이름 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <input type="text" class="form-control" placeholder="이름" style="float: left;">
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
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">지급일자 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" />
		                                    </div>
		                                </div>                                
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기본급여 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기본급여" />
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">식대 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="식대" />
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">야근수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="야근수당" />
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">휴일근무수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="휴일근무수당" />
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">성과급 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="성과급" />
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기타수당:</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기타수당" />
				                                    </div>
				                            </div>
		                            	</form>
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<a href="javascript:;" class="btn btn-sm btn-primary">등록</a>
									</div>
									</div>
								</div>
						</div>
	           	<!-- 급여명세서 클릭 시 팝업창 -->
					<div class="modal fade" id="modal-dialog2">
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
	                                        	<td>20</td>
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
										<th>No.</th>
										<th>사원번호</th>
										<th>이름</th>
										<th width="70">부서</th>
										<th>직급</th>
										<th>지급일자</th>
										<th>기본급여</th>
										<th>식대</th>
										<th>야근수당</th>
										<th>휴일수당</th>
										<th>성과급</th>
										<th>기타수당</th>
										<th width="95">관리</th>
									</tr>
								</thead>
								<tbody id="payTablePlace">

								</tbody>
							</table>
					</div>												
					</div>
				</div>
			</div>
 	<!-- ================== BEGIN BASE JS ================== -->
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->

	<!-- 추가 버튼 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>

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
	<!-- 급여조회 테이블 -->
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
	
	 /* 생년월일, 입사날짜, 전화번호 */ 
	
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});
	
	 /* 파일업로드  */
	
		$(document).ready(function() {
			App.init();
			FormMultipleUpload.init();
		});
	
	/*  급여조회 */ 
	
		$(document).ready(function() {
			App.init();
			TableManageColReorder.init();
		});
		
		/* 급여 조회 리스트*/
		function displayPay() {
			$.ajax({
				type: "GET",
				url: "pay_list",
				dataType: "json",
				success: function(json) {
					if(json.length==0) {
						var html="<tr><td class='center' colspan='12'>등록된 급여내역이 존재하지 않습니다.</td></tr>";
						$("#payTablePlace").html(html);
						return;
					}
					
					var html="";
					$(json).each(function() {				
						
						html+="<tr>";
						html+="<td>"+this.pmno+"</td>";
						html+="<td>"+this.member.mno+"</td>";
						html+="<td>"+this.member.mname+"</td>";
						html+="<td>"+this.department.dname+"</td>";
						html+="<td>"+this.position.pname+"</td>";
						html+="<td>"+this.pdate.substring(0,10)+"</td>";
						html+="<td>"+this.pbasic+"</td>";
						html+="<td>"+this.pmeal+"</td>";
						html+="<td>"+this.povertime+"</td>";
						html+="<td>"+this.pholiday+"</td>";
						html+="<td>"+this.pbonus+"</td>";
						html+="<td>"+this.petc+"</td>";
						html+="<td><button onclick='deletePay("+this.pmno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button href='#modal-dialog1' class='btn btn-sm btn-success' data-toggle='modal'>수정</button></td>";
						html+="</tr>";
						
					});			
					
 					$("#data-table").dataTable().fnDestroy();
					$("#payTablePlace").html(html);
					$("#data-table").dataTable(); 
					 
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		displayPay();
	
		/* 급여 삭제 */
		
		function deletePay(pmno) {
			if(confirm("급여내역을 삭제하시겠습니까?")) {
				location.href="pay_delete/"+pmno;
			}
		}	
		
		
		
	</script>	
	
	
<!-- /* 	
	var $ = jQuery;
	$(function(){
	$(".hidecontent").hide();
	$(".showcontent").on("click", function(){
	$(".hidecontent").toggle();
	});
	}); */ -->
</body>
</html>