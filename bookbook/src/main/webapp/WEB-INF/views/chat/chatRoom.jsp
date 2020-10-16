<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	
	<style>
		#chatRoom{
			border:  1px solid gray;
			padding: 30px;
		}
		
		#chatRoom {
	        height: 500px !important;
	        border: 1px solid gray ; 
	        overflow-y: scroll;
	        position: static;
        }
		
	</style>

    <div id="content" class="content">
				<!-- begin row -->
					<div class="row">
						<div class="col-md-5">
								<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">채팅 인원</h4>
							                    </div>
												<div class="panel-body panel-form">
												<div class="row form-horizontal form-bordered">
													<div class="form-group">
															 	<label class="col-md-3 control-label">채팅방 이름</label>
															 	 <div class="col-md-8">
										                                        <input type="text" class="form-control"  readonly="readonly">
										                         </div>
													</div>
													<div class="form-group">
															 	<label class="col-md-3 control-label">개설자</label>
															 	 <div class="col-md-8">
										                                        <input type="text" class="form-control" readonly="readonly">
										                         </div>
													</div>
													<div class="form-group">
																	<label class="control-label col-md-3" for="message">방설명</label>
																	<div class="col-md-8">
																		<textarea class="form-control" id="message" name="message" rows="5" data-parsley-range="[20,200]"  readonly="readonly" data-parsley-id="3913"></textarea><ul class="parsley-errors-list" id="parsley-id-3913"></ul>
																	</div>
													</div>
												</div>
												<div class="form-group">
				                                		<div class="table-responsive">
															<table class="table">
																<thead>
																	<tr>
																		<th>아이디</th>
																		<th>이름</th>
																		<th>부서</th>
																		<th>직급</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach begin="1" step="1" end="7">
																	<tr>
																		<td>skyrius</td>
																		<td>박정호</td>
																		<th>연구개발본부</th>
																		<td>사원</td>
																	</tr>
																	</c:forEach>
																	
																</tbody>
															</table>
														</div>
				                                </div>
												</div>
									</div>
						</div>
					
						<div class="col-md-7">
								<div class="panel panel-inverse" data-sortable-id="form-stuff-1">
				                        <div class="panel-heading">
				                            <div class="panel-heading-btn">
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
				                            </div>
				                            <h4 class="panel-title">채팅방</h4>
				                        </div>
				                        <div class="panel-body">
				                        	<div class="form-group">
				                            <ul class="chats" id="chatRoom">
				                                    <li class="left">
				                                        <span class="date-time">yesterday 11:23pm</span>
				                                        <a href="javascript:;" class="name">Sowse Bawdy</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-12.jpg"></a>
				                                        <div class="message">
				                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit volutpat. Praesent mattis interdum arcu eu feugiat.
				                                        </div>
				                                    </li>
				                                    <li class="right">
				                                        <span class="date-time">08:12am</span>
				                                        <a href="#" class="name"><span class="label label-primary">ADMIN</span> Me</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg"></a>
				                                        <div class="message">
				                                            Nullam posuere, nisl a varius rhoncus, risus tellus hendrerit neque.
				                                        </div>
				                                    </li>
				                                    <li class="left">
				                                        <span class="date-time">09:20am</span>
				                                        <a href="#" class="name">Neck Jolly</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-10.jpg"></a>
				                                        <div class="message">
				                                            Euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
				                                        </div>
				                                    </li>
				                                    <li class="left">
				                                        <span class="date-time">11:15am</span>
				                                        <a href="#" class="name">Shag Strap</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-14.jpg"></a>
				                                        <div class="message">
				                                            Nullam iaculis pharetra pharetra. Proin sodales tristique sapien mattis placerat.
				                                        </div>
				                                    </li>
				                                    <li class="right">
				                                        <span class="date-time">08:12am</span>
				                                        <a href="#" class="name"><span class="label label-primary">ADMIN</span> Me</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg"></a>
				                                        <div class="message">
				                                            Nullam posuere, nisl a varius rhoncus, risus tellus hendrerit neque.
				                                        </div>
				                                    </li>
				                                    <li class="left">
				                                        <span class="date-time">09:20am</span>
				                                        <a href="#" class="name">Neck Jolly</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-10.jpg"></a>
				                                        <div class="message">
				                                            Euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
				                                        </div>
				                                    </li>
				                                    <li class="right">
				                                        <span class="date-time">08:12am</span>
				                                        <a href="#" class="name"><span class="label label-primary">ADMIN</span> Me</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg"></a>
				                                        <div class="message">
				                                            Nullam posuere, nisl a varius rhoncus, risus tellus hendrerit neque.
				                                        </div>
				                                    </li>
				                                    <li class="left">
				                                        <span class="date-time">09:20am</span>
				                                        <a href="#" class="name">Neck Jolly</a>
				                                        <a href="javascript:;" class="image"><img alt="" src="${pageContext.request.contextPath}/resources/assets/img/user-10.jpg"></a>
				                                        <div class="message">
				                                            Euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
				                                        </div>
				                                    </li>
				                           </ul>
				                           </div>
				                           <div class="form-group">
				                           			<div class="col-md-1">
				                           			</div>
				                                    <div class="col-md-9">
				                                        <input type="text" class="form-control" placeholder="채팅을 입력해 주세요.">
				                                    </div>
				                                    <div class="col-md-2">
				                                    		<button type="button" class="btn btn-inverse m-r-5 m-b-5">전송</button>
				                                    </div>
				                            </div>
				                    </div>
				             </div>
						</div>
						
					</div>
		<!-- end #content -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	
	<script>
		$(document).ready(function() {
			App.init();
		});
	

	</script>
	