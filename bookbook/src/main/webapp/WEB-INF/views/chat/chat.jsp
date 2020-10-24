<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
   
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

<!-- 
<div class="popover editable-container editable-popup fade top in"
	role="tooltip" id="popover953924"
	style="top: 172.6px; left: 349.588px; display: none;" id="pwModal">
	<div class="arrow" style="left: 50%;"></div>
	<h3 class="popover-title">Enter Username</h3>
	<div class="popover-content">
		<div>
			<div class="editableform-loading" style="display: none;"></div>
			<form class="form-inline editableform" style="">
				<div class="control-group form-group">
					<div>
						<div class="editable-input" style="position: relative;">
							<input type="text" class="form-control input-sm"
								style="padding-right: 24px;"> <span
								class="editable-clear-x"></span>
						</div>
						<div class="editable-buttons">
							<button type="submit"
								class="btn btn-primary btn-sm editable-submit">
								<i class="glyphicon glyphicon-ok"></i>
							</button>
							<button type="button"
								class="btn btn-default btn-sm editable-cancel">
								<i class="glyphicon glyphicon-remove"></i>
							</button>
						</div>
					</div>
					<div class="editable-error-block help-block" style="display: none;"></div>
				</div>
			</form>
		</div>
	</div>
</div>
 -->
<!-- begin #content -->
		<div id="content" class="content">
				<!-- begin row -->
					<div class="row">
						<div class="col-md-8">
								<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
				                        <div class="panel-heading">
				                            <div class="panel-heading-btn">
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
				                            </div>
				                            <h4 class="panel-title">채팅방 목록</h4>
				                        </div>
				                        <div class="panel-body">
				                            <form class="form-horizontal">
				                                <div class="form-group">
				                                    <label class="col-md-3 control-label">채팅방 이름 : </label>
				                                    <div class="col-md-6">
				                                        <input type="text" id="roomname" class="form-control" placeholder="검색할 방 이름을 입력하세요.">
				                                    </div>
				                                    <div class="col-md-1">
				                                    		<button type="button" id="roomSelectBtn" class="btn btn-inverse m-r-5 m-b-5">검색</button>
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" id="refresh" class="btn btn-inverse m-r-5 m-b-5">새로고침</button>
				                                    </div>
				                                </div>
				                                <div class="row">
													<div class="col-sm-12">
																<table id="chat_table" class="table table-striped table-bordered nowrap" width="100%">
																		<thead>
																			<tr role="row">
																				<th class="sorting_asc" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending"
																					style="width: 70px;">방번호</th>
																				<th class="sorting_asc" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending"
																					style="width: 150px;">방이름</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-label="Browser: activate to sort column ascending"
																					style="width: 70px;">개설자</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-label="Platform(s): activate to sort column ascending"
																					style="width: 80px;">직급</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending"
																					style="width: 200px;">채팅방 소개</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending"
																					style="width: 50px;">인원</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="data-table" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending"
																					style="width: 60px;">비밀방</th>		
		
																			</tr>
																		</thead>
																		<tbody id="tbody">
																			<c:forEach var="chatPerson" items="${chatList }">
																			<tr class="gradeA odd" role="row">
																				<td>${chatPerson.chat.cno}</td>
																				<td>${chatPerson.chat.croomname}</td>
																				<td>${chatPerson.member.mname}</td>
																				<td>${chatPerson.member.position.pname}</td>
																				<td>${chatPerson.chat.cinfo}</td>
																				<td>${chatPerson.chat.cperson}명</td>
																				<td>
																					<c:if test="${chatPerson.chat.csecret eq 1}">
																							비밀방
																					</c:if>
																					<c:if test="${chatPerson.chat.csecret eq 0}">
																							공개방
																					</c:if>
																				</td>
																				
																			</tr>
																			</c:forEach>
																			
																		</tbody>
																</table>
					                                </div>
				                                </div>
				                                <div class="form-group">
				                                    <div class="col-md-8"></div>
				                                    <div class="col-md-2">
				                                    		<button type="button" id="deleteBtn" class="btn btn-inverse m-r-5 m-b-5">방삭제</button>
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" id="enterBtn" class="btn btn-inverse m-r-5 m-b-5">방입장</button>
				                                    </div>
				                                </div>
				                            </form>
				                        </div>
				                    </div>
						</div>
						<div class="col-md-4">
								<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">채팅방 생성</h4>
							                    </div>
												<div class="panel-body panel-form">
															<form class="form-horizontal form-bordered" id="chatForm"data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	 <label class="col-md-3 control-label">채팅방 이름 </label>
									                                    <div class="col-md-8">
									                                        <input type="text" class="form-control" name="croomname" placeholder="생성할 방 이름을 입력하세요.">
									                                    </div>
																</div>
																<!-- 
																<div class="form-group">
																	 <label class="col-md-3 control-label">개설자 </label>
									                                    <div class="col-md-8">
									                                        <input type="text" class="form-control" name="ccreator">
									                                    </div>
																</div>
																<div class="form-group">
																	 <label class="col-md-3 control-label">직급 </label>
									                                    <div class="col-md-8">
									                                        <select class="form-control">
								                                            <option>사원</option>
								                                            <option>대리</option>
								                                            <option>과장</option>
								                                            <option>차장</option>
								                                            <option>부장</option>
								                                            <option>전무</option>
								                                            <option>이사</option>
								                                            <option>사장</option>
								                                        </select>
									                                    </div>
																</div>
																 -->
																<div class="form-group">
																	 <label class="col-md-3 control-label">참여인원 </label>
									                                    <div class="col-md-8">
									                                        <input id="spinner" name="cperson" > 명
									                                    </div>
																</div>
																<div class="form-group">
																	 <label class="col-md-3 control-label">비밀유무 </label>
									                                    <div class="col-md-8">
									                                     <div class="checkbox">
										                                     <label id="secret">
										                                     <input type="checkbox" id="secretCheck" name="mincheck[]" data-parsley-mincheck="2" value="foo" required="" data-parsley-multiple="mincheck" data-parsley-id="9357"> 
										                                    	 비밀방
										                                     </label>
										                                     <input type="text"  name="cpw" id="secretInput" class="form-control"  style="display: none;">
										                                </div>
									                                    </div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-3" for="message">방설명</label>
																	<div class="col-md-8">
																		<textarea class="form-control" id="message" name="cinfo" rows="10" data-parsley-range="[20,200]" placeholder="최소 20 - 최대 200 글자" data-parsley-id="3913"></textarea><ul class="parsley-errors-list" id="parsley-id-3913"></ul>
																	</div>
																</div>
																<div class="form-group">
																	<div class="row">
									                                    <div class="col-md-6">
									                                    </div>
									                                    <div class="col-md-3">
									                                    </div>
									                                    <div class="col-md-3">
									                                    		<button type="button" id="insertBtn" class="btn btn-inverse m-r-5 m-b-5" style="margin-top: 5px">방생성</button>
									                                    </div>
									                                </div>
								                                </div>
																
															</form>
												</div>
									</div>
						</div>
					</div>
		<!-- end #content -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	
	
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageTableSelect.init();
			tableClickIdx=-1;
			pwCheck;
			mno = ${loginMember.mno};
			$("#pwModal").hide();
			
			$(function(){
				var spinner = $( "#spinner" ).spinner({
				 	  min: 1,
					  max: 10,
				      step: 1,
				      start: 1,
				      numberFormat: "명"
			 	});
			});
			
			$("#deleteBtn").click(function(){
				 //alert(tableClickIdx);
				 if(tableClickIdx == -1 ){
 		    		 alert("삭제하실 방을 클릭 해주세요");
 		    		 return;
 		    	 }
				 $.ajax({
						type: "GET",
		        	  	url: "deleteChat",
		        	  	data : {"cno" : tableClickIdx,
		        	  				 "mno" : mno},
			      		success: function(data) {
			      				if(data=="fail"){
			      					alert("채팅방 개설자만 지울 수 있습니다.");
			      				}
			      		}
				 })
				
			});
			
			$("#refresh").click(function(){
				location.href="chat";
			});
			
			$("#insertBtn").click(function(){
				 
				 var formData = $("#chatForm").serialize() ;
				 
				 $.ajax({
						type: "POST",
		        	  	url: "insertChat",
		        	  	data : formData,
			      		success: function(data) {
			      				//alert(json);
			      				//location.href="chat";
			      				location.href="enterRoom?cno="+data.cno;
			      		}
				 })
			});
			
			$("#roomSelectBtn").click(function(){
				var rname = $("#roomname").val();
				//alert(rname);
				if(rname==''){
					alert("검색 키워드를 입력해 주세요.");
					return;
				}else{
					$("#tbody").html("");
					
					 $.ajax({
				     	  	type: "get",
				     	  	url: "searchRoom?rname="+rname,
					      	dataType: "json",
					      	success: function(json) {
						
					      		$(json).each(function(){
					      			var cno = this.chat.cno;
					      			var crname = this.chat.croomname;
					      			var mname = this.member.mname;
					      			var pname = this.member.position.pname;
					      			var cinfo = this.chat.cinfo;
					      			var cperson = this.chat.cperson;
					      			var csecret = this.chat.csecret;
					      			
					      			var html = "<tr><td>"+cno+"</td><td>"+crname+"</td><td>"
					      			+mname+"</td><td>"+pname+"</td><td>"+cinfo+"</td><td>"
					      			+cperson+"</td><td>"+csecret+"</td></tr>"
					      			
					      			$("#tbody").append(html);
						        })
					      		
					      	}
					});
					
				}
			});
			
			$("#secretCheck").change(function(){
				 if($("#secretCheck").is(":checked")){
					$("#secretInput").show();
				 }else{
					$("#secretInput").hide();
				 }
				
			});
			
			
			 
			 var table = $('#chat_table').dataTable({
		            pageLength: 15,
		            bPaginate: true,
		            bLengthChange: true,
		            bAutoWidth: false,
		            processing: false,
		            ordering: true,
		            serverSide: false,
		            searching: false,
		            columnDefs: [{
		            orderable: false,
		            className: 'select-checkbox',
		            targets: 0
		            
		            }],
		            
		            select:{
			               style:'single'
			         },
		           
		           
		        });
			
			
 			$('#chat_table tbody').on( 'click', 'tr', function () {
				 
				 var chatInfo = $('#chat_table').DataTable().row(this).data();
				 //alert(chat);
				 if($(this).hasClass('selected')){
	        		 tableClickIdx = chatInfo[0];
	        		 pwCheck = bookInfo[6];
	        	 }else{
	        		 tableClickIdx = -1;
	        	 }
				 //alert(tableClickIdx);
			 });
 			
 		     $("#enterBtn").click(function(){
 		    	 // 로그인시 고쳐야할 부분..(임시)
 		    	 if(tableClickIdx == -1 ){
 		    		 alert("입장하실 방을 클릭 해주세요");
 		    	 }else{
	 		    	 if(pwCheck == "비밀방"){
	  		    		//$("#pwModal").show();
	  		    	 }else{
	 	 		    	 location.href="enterRoom?cno="+tableClickIdx;
	  		    	 }
 		    	 }
 		    	 //////////////////////////////////////
 		    	
 		    	 
 		    	 
 		    	//location.href="enterRoom?cno="+data.cno+"&mno="+data.ccreator;
 		     });
 			
			 
		});
		
		

		
		

	</script>
