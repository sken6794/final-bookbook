<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
	<style type="text/css">

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
				                                    <label class="col-md-2 control-label">채팅방 이름 : </label>
				                                    <div class="col-md-8">
				                                        <input type="text" class="form-control" placeholder="검색할 방 이름을 입력하세요.">
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" class="btn btn-inverse m-r-5 m-b-5">검색</button>
				                                    </div>
				                                </div>
				                                
				                                <div class="form-group">
				                                		<div class="table-responsive">
															<table class="table">
																<thead>
																	<tr>
																		<th>방번호</th>
																		<th>방이름</th>
																		<th>개설자</th>
																		<th>직급</th>
																		<th>채팅방소개</th>
																		<th>인원</th>
																		<th>비밀방</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach begin="1" step="1" end="10">
																	<tr>
																		<td>1</td>
																		<td>금융 관리 프로그램 제작팀</td>
																		<td>박정호</td>
																		<td>사원</td>
																		<td>1차 긴급 회의</td>
																		<td>3/8</td>
																		<td>Lock</td>
																	</tr>
																	</c:forEach>
																	
																</tbody>
															</table>
														</div>
				                                </div>
				                                <div class="form-group">
				                                    <div class="col-md-8">
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" class="btn btn-inverse m-r-5 m-b-5">새로고침</button>
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" class="btn btn-inverse m-r-5 m-b-5">방입장</button>
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
															<form class="form-horizontal form-bordered" data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	 <label class="col-md-3 control-label">채팅방 이름 </label>
									                                    <div class="col-md-8">
									                                        <input type="text" class="form-control" placeholder="생성할 방 이름을 입력하세요.">
									                                    </div>
																</div>
																<div class="form-group">
																	 <label class="col-md-3 control-label">개설자 </label>
									                                    <div class="col-md-8">
									                                        <input type="text" class="form-control">
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
																<div class="form-group">
																	 <label class="col-md-3 control-label">참여인원 </label>
									                                    <div class="col-md-8">
									                                        <input id="spinner" name="value" > 명
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
										                                     <input type="text" id="secretInput" class="form-control"  style="display: none;">
										                                </div>
									                                    </div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-3" for="message">방설명</label>
																	<div class="col-md-8">
																		<textarea class="form-control" id="message" name="message" rows="10" data-parsley-range="[20,200]" placeholder="최소 20 - 최대 200 글자" data-parsley-id="3913"></textarea><ul class="parsley-errors-list" id="parsley-id-3913"></ul>
																	</div>
																</div>
																<div class="form-group">
																	<div class="row">
									                                    <div class="col-md-6">
									                                    </div>
									                                    <div class="col-md-3">
									                                    </div>
									                                    <div class="col-md-3">
									                                    		<button type="button" class="btn btn-inverse m-r-5 m-b-5" style="margin-top: 5px">방생성</button>
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
			//TableManageTableSelect.init();
			
			$(function(){
				var spinner = $( "#spinner" ).spinner({
				 	  min: 1,
					  max: 10,
				      step: 1,
				      start: 1,
				      numberFormat: "명"
			 	});
			});
			
		});
		
		$("#secretCheck").change(function(){
			 if($("#secretCheck").is(":checked")){
				$("#secretInput").show();
			 }else{
				$("#secretInput").hide();
			 }

		})
		

	</script>
