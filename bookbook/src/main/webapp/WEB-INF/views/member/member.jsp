<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- 생년월일,입사날짜 datepicker -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
	<!-- 이메일 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- 파일 업로드 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet" />
 	<!-- 주문조회 테이블 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />   
	
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	<style type="text/css">
	table { text-align: center;}
	</style>

	<div id="content" class="content">
		<!-- begin breadcrumb -->
		<ol class="breadcrumb pull-right">
			<li><a href="javascript:;">인사관리</a></li>
			<li class="active">사원등록</li>
		</ol>
		<!-- end breadcrumb -->
		<!-- begin page-header -->
		<h1 class="page-header">인사관리 <small>사원등록</small></h1>
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
                 <h4 class="panel-title">사원 조회</h4>
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
						<a href="#modal-dialog1" class="btn btn-sm btn-success" data-toggle="modal">수정</a>
		                </div>			
                   </form>
						<hr>
						<p class="text-right m-b-0">
							<a href="#modal-dialog2" class="btn btn-sm btn-success" data-toggle="modal">추가</a>
						</p>
						<br>
						<!-- 수정 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-dialog1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">사원정보수정</h4>
									</div>
								<!-- 정보수정 form -->
									<form class="form-horizontal" method="post" enctype="multipart/form-data">
									<div class="modal-body">
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">이름 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="이름" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="email">Email :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="email" name="email" data-parsley-type="email" placeholder="email@example.com" data-parsley-required="true" />
											</div>
										</div>
										<div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">주소 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="주소" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">생년월일 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-default" placeholder="Select Date" value="01/01/2020" />
		                                    </div>
		                                </div>                             
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="message">전화번호 :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="data-phone" data-parsley-type="number" placeholder="(XXX) XXXX XXX" />
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
		                                    <label class="control-label col-md-4 col-sm-4">퇴사날짜 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">퇴사이유 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="퇴사이유" />
		                                    </div>
		                                </div>		                                
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">연차일수 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" />
		                                    </div>
		                                </div>		                                
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">사원상태 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <select class="form-control">
		                                            <option>1</option>
		                                            <option>2</option>
		                                            <option>3</option>
		                                        </select>
		                                    </div>
		                                </div>		                                
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="submit" id="insertBtn" class="btn btn-sm btn-success">수정</button>
									</div>
		                            </form>
								</div>
							</div>
						</div>						
						<!-- 추가 버튼 클릭 시 입력폼 팝업 -->
						<div class="modal fade" id="modal-dialog2">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">신규사원등록</h4>
									</div>
								<!-- 사원등록 form -->
									<form class="form-horizontal" method="post" enctype="multipart/form-data">
									<div class="modal-body">
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">사원번호 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="사원번호" style="float: left;">
		                                    </div>
		                                    	<span><a href="javascript:;" class="btn btn-sm btn-primary">중복검사</a></span>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">입사날짜 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-autoClose" placeholder="01/01/2020" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">이름 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="이름" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="email">Email :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="email" name="email" data-parsley-type="email" placeholder="email@example.com" data-parsley-required="true" />
											</div>
										</div>
										<div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">주소 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" placeholder="주소" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label class="control-label col-md-4 col-sm-4">생년월일 :</label>
		                                    <div class="col-md-6 col-sm-6">
		                                        <input type="text" class="form-control" id="datepicker-default" placeholder="Select Date" value="01/01/2020" />
		                                    </div>
		                                </div>                             
										<div class="form-group">
											<label class="control-label col-md-4 col-sm-4" for="message">전화번호 :</label>
											<div class="col-md-6 col-sm-6">
												<input class="form-control" type="text" id="data-phone" data-parsley-type="number" placeholder="(XXX) XXXX XXX" />
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
									</div>
									<div class="modal-footer">
										<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
										<button type="submit" id="insertBtn" class="btn btn-sm btn-success">등록</button>
									</div>
		                            </form>
								</div>
							</div>
						</div>
                    
                        <table id="member-table" class="table table-striped table-bordered nowrap" width="100%">
                            <thead>
                              <tr>
                                  <th><input type="checkbox"></th>
                                  <th>사원번호</th>
                                  <th>사원이름</th>
                                  <th>부서</th>
                                  <th>직급</th>
                                  <th>생년월일</th>
                                  <th>입사일자</th>
                                  <th>이메일</th>
                                  <th>전화번호</th>
                                  <th>관리</th>
                              </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="member" items="${memberList }">
                              <tr>
                                  <td><input type="checkbox"></td>
                                  <td>${member.mno }</td>
                                  <td>${member.mname }</td>
                                  <td>${member.department.dname }</td>
                                  <td>${member.position.pname }</td>
                                  <td>${member.mbirth }</td>
                                  <td>${member.mjoindate.substring(0,10) }</td>
                                  <td>${member.memail }</td>
                                  <td>${member.mphone }</td>
                                  <td><button onclick="deleteMember(${member.mno});" class="btn btn-sm btn-white">삭제</button></td>
                              </tr>
                            </c:forEach>
                            </tbody>
                        </table>                     
                 </div>
			</div>
		</div>
	</div>
	

 	<!-- ================== BEGIN BASE JS ================== -->
	<!-- 인사관리 추가 버튼 -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/ui-modal-notification.demo.min.js"></script>
	<!-- 이메일 input -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/parsley/dist/parsley.js"></script>

    <!-- 주문조회 테이블 -->
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-multiple-upload.demo.min.js"></script>
	<script>
		$(document).ready(function() {
			App.init();
		});

	 /* 생년월일, 입사날짜 */ 

		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});

	 /* 파일업로드 */ 

		$(document).ready(function() {
			App.init();
			FormMultipleUpload.init();
		});
	 
	/* 주문조회 테이블 */
		$(document).ready(function() {
			App.init();
			TableManageTableSelect.init();
		});
		 
		function deleteMember(mno) {
			if(confirm("정말로 삭제하시겠습니까?")) {
				//QueryString 이용하여 값 전달
				//location.href="file_delete?num="+num;
				
				//URL 주소를 이용하여 값 전달
				location.href="member_delete/"+mno;
			}
		}
	</script>
<!-- 어디에 쓰이는 것인가? - 아 행클릭하면 지정해놓은 사이트로 이동
	<script>
	$(document).ready(function($) {
    $('*[data-href]').on('click', function() {
        window.location = $(this).data("href");
   	});
});
	</script> -->
