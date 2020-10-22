<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table { text-align: center;}
</style>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
		
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<!-- 발주조회 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/ColReorder/css/colReorder.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />

	<!--  date picker -->
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
                                        <input type="text" class="form-control" placeholder="도서코드" name="bcode" id="s_bcode"/>
										</div>
									</div>
	                            	<div class="form-group">
										<label class="control-label col-md-4 col-sm-4">담당자</label>
										<div class="col-md-6 col-sm-6">
                                        <input type="text" class="form-control" placeholder="담당자 사원번호" name="rstaff" id="s_rstaff"/>
										</div>
									</div>									
	                            </div>
	                            <div class="col-md-5">
		                           	<div class="form-group">
	                                    <label class="control-label col-md-4 col-sm-4">발주일자</label>
	                                    <div class="col-md-6 col-sm-6">
	                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" name="rdate" />
	                                    </div>
	                                </div>
	                                <div class="form-group">
	                                    <label class="control-label col-md-4 col-sm-4">진행상태</label>
	                                    <div class="col-md-6 col-sm-6">
	                                        <select class="form-control" name="rstate" id="s_rstate">
	                                            <option value="1">발주요청</option>
	                                            <option value="2">진행중</option>
	                                            <option value="3">입고완료</option>
	                                        </select>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-md-1"></div>
                       		</div>
                       		<br>
                       		<br>
                       		<div style="text-align: center;">
                       		<button type="button" onclick="selectRequest();" class="btn btn-sm btn-white">조회</button>
                       		<button type="button" onclick="initBtn();" class="btn btn-sm btn-default">초기화</button>
                       		</div>
                       		<p class="text-right" style="margin-right: 10px;">* 진행상태 : 1(발주요청) , 2(진행중) , 3(입고완료)</p>
                       	</form>
                        <!-- 수정 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-modify">
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
									<input name="rno" id="m_rno" type="hidden">
									<div class="modal-body">                         
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">발주담당자 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="담당자 사원번호" name="rstaff" id="m_rstaff" disabled="disabled"/>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">발주수량 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="수량" name="rqty" id="m_rqty"/>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">진행상태 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control" name="rstate" id="m_rstate">
		                                            <option value="1">발주요청</option>
		                                            <option value="2">진행중</option>
		                                            <option value="3">입고완료</option>
		                                        </select>
		                                    </div>
		                                </div>
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4">도서코드 :</label>
											<div class="col-md-6 col-sm-6">
												<select class="form-control" name="bcode" id="m_bcode">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</select>
											</div>
										</div>		                                                	                                                   
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="button" onclick="modifyRequest();" class="btn btn-sm btn-success">수정</button>
									</div>
		                        </form>
								</div>
							</div>		
						</div>   <!-- modal 끝 -->                         	
                       	<hr>
                            <table id="data-table" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>발주번호</th>
                                        <th>도서코드</th>
                                        <th width="120" style="text-align: center;">도서명</th>
                                        <th>출판사명</th>
                                        <th width="80" style="text-align: center;">발주일자</th>
                                        <th>담당자[사원번호]</th>
                                        <th>발주수량</th>
                                        <th>발주금액</th>
                                        <th>진행상태</th>
                                        <th width="100" style="text-align: center;">관리</th>
                                    </tr>
                                </thead>
                                <tbody id="requestTablePlace">
                                
                                </tbody>
                            </table>                		                        
                    </div> <!-- panel body 끝 -->
                 </div><!-- panel inverse 끝 -->
            </div>
        </div>
    </div>         
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	
	<!-- 추가 버튼 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>

	<!-- 발주조회 테이블 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-colreorder.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>

	<!-- 발주일자 date picker -->
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
	<script>
	
		$(document).ready(function() {
			App.init();
			TableManageColReorder.init();
			FormPlugins.init();
		});


	 /* 발주 내역 리스트 */
		function displayRequest() {
			$.ajax({
				type: "GET",
				url: "request_list",
				dataType: "json",
				success: function(json) {
					if(json.length==0) {
						var html="<tr><td class='center' colspan='10'>등록된 발주내역이 존재하지 않습니다.</td></tr>";
						$("#requestTablePlace").html(html);
						return;
					}
					
					var html="";
					$(json).each(function() {
						var state="";
						if(this.rstate=="1") state="발주요청";
						if(this.rstate=="2") state="진행중";
						if(this.rstate=="3") state="입고완료";				
						
						html+="<tr>";
						html+="<td>"+this.rno+"</td>";
						html+="<td width='10px;'>"+this.book.bcode+"</td>";
						html+="<td>"+this.book.bname+"</td>";
						html+="<td>"+this.book.bpublisher+"</td>";
						html+="<td>"+this.rdate+"</td>";
						html+="<td>"+this.rstaff+"</td>";
						html+="<td>"+this.rqty+"</td>";
						html+="<td>"+this.rprice+"</td>";
						html+="<td>"+state+"</td>";
						html+="<td><button onclick='deleteRequest("+this.rno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button href='#modal-modify' class='btn btn-sm btn-success' data-toggle='modal' id='modify_link' data-id="+this.rno+">수정</button></td>";
						html+="</tr>";
						
					});
					$("#requestTablePlace").html(html);
					
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		displayRequest();
		
	 
		function deleteRequest(rno) {
			if(confirm("정말로 삭제하시겠습니까?")) {
				location.href="request_delete/"+rno;
			}
		}
		
	/* 테이블에 있는 수정 클릭 시 입력했던 값 가져오기  */
 		
 		$(document).on("click", "#modify_link", function() {
 				var rno=$(this).data("id");
 				$("#m_rno").val(rno); 
 				
 				$.ajax({
 					type: "GET",
 					url: "request_view/"+rno,
 					dataType: "json",
 					success: function(json) {
 						$("#m_rstaff").val(json.rstaff);
 						$("#m_rqty").val(json.rqty);
 						$("#m_rstate").val(json.rstate);
 						$("#m_bcode").val(json.bcode);
 					},
 					error: function(xhr) {
 						alert("에러코드 = "+xhr.status);
 					}
 				});
 			});
			
 	/* 발주 수정 데이터 보내기 */
 		
 		function modifyRequest() {
 			var rno=$("#m_rno").val();
 			var rstaff=$("#m_rstaff").val();
 			var rqty=$("#m_rqty").val();
 			var rstate=$("#m_rstate").val();
 			var bcode=$("#m_bcode").val();
 			
 			$.ajax({
 				type: "PUT",
 				url: "request_modify",
 				headers: {"content-type":"application/json", "X-HTTP-Method-override":"PUT"},
 				data: JSON.stringify({ 
 					"rno":rno,
 					"rstaff":rstaff,
 					"rqty":rqty,
 					"rstate":rstate, 
 					"bcode":bcode,		
 				}),
 				dataType: "text",
 				success: function(text) {
 					if(text=="success") {					
 						location.reload();
 					}
 				},
 				error: function(xhr) {
 					alert("에러 발생 코드 "+xhr.status);				
 				}
 			});	
 		} 		
 	
 	/* 검색 내역 리스트 */
 		
 		function selectRequest() {
 		var bcode=$("#s_bcode").val();
 		var rstaff=$("#s_rstaff").val();
 		var rdate=$("#datepicker-autoClose").val();
 		var rstate=$("s_rstate").val();
 		
 		$.ajax({
 			type: "POST",
 			url: "request_search",
 			headers: {"content-type":"application/json"},
 			data: JSON.stringify({
 				"bcode":bcode,
 				"rstaff":rstaff,
 				"rdate":rdate,
 				"rstate":rstate
 				}),
 				dataType: "json",
 				success: function(json) {
 					if(json.length==0) {
 						var html="<tr><td class='center' colspan='10'>검색된 발주내용이 없습니다.</td></tr>";
 						$("#requestTablePlace").html(html);
 						return;
 					}
 					
 					var html="";
 					$(json).each(function() {
 						var state="";
	 					if(this.rstate=="1") state="발주요청";
						if(this.rstate=="2") state="진행중";
						if(this.rstate=="3") state="입고완료";
						
						html+="<tr>";
						html+="<td>"+this.rno+"</td>";
						html+="<td width='10px;'>"+this.book.bcode+"</td>";
						html+="<td>"+this.book.bname+"</td>";
						html+="<td>"+this.book.bpublisher+"</td>";
						html+="<td>"+this.rdate.substring(0,10)+"</td>";
						html+="<td>"+this.rstaff+"</td>";
						html+="<td>"+this.rqty+"</td>";
						html+="<td>"+this.rprice+"</td>";
						html+="<td>"+state+"</td>";
						if(state==1) {
						html+="<td><button onclick='deleteRequest("+this.rno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button href='#modal-modify' class='btn btn-sm btn-success' data-toggle='modal' id='modify_link' data-id="+this.rno+">수정</button></td>";
						} else {
							html+="-";
						}
						html+="</tr>";
 					});
 					$("requestTablePlace").html(html);
 				},
 				error: function(xhr) {
 					alert("에러 발생 = "+xhr.status);
 				}
 		});
 	}
 	 
 	
 	
	</script>
</body>
</html>