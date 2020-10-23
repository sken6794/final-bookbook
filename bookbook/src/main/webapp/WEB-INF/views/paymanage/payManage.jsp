<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#modal-dialog th, td {
	text-align: center;
}
table { text-align: center;}
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
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
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
                                     <input type="text" class="form-control" placeholder="사원번호" name="mno" id="s_mno"/>
							</div>
							</div>									
                          </div>
                          <div class="col-md-3">
                          	<div class="form-group">
							<label class="control-label col-md-4 col-sm-4">부서</label>
							<div class="col-md-6 col-sm-6">
                                   <select class="form-control" name="dno" id="s_dno">
                                      <option value="0">-</option>
                                      <option value="10">도서 1팀</option>
                                      <option value="20">도서 2팀</option>
                                      <option value="30">영업팀</option>
                                      <option value="40">회계팀</option>
                                   </select>
							</div>
						</div>
					</div>									
                          <div class="col-md-3">
                          	<div class="form-group">
                                  <label class="control-label col-md-4 col-sm-4">직급</label>
                                  <div class="col-md-6 col-sm-6">
                                  <select class="form-control" name="pno" id="s_pno">
                                     <option value="0">-</option>
                                     <option value="1">사원</option>
                                     <option value="2">주임</option>
                                     <option value="3">대리</option>
                                     <option value="4">과장</option>
                                     <option value="5">차장</option>
                                     <option value="6">부장</option>
                                     <option value="7">이사</option>
                                  </select>
                                  </div>
                              </div>
                          </div>
                          <div class="col-md-1"></div>
	            		</div>
                    <!-- </div> -->
                    <br>
		                <div style="text-align: center;">
		                <button type="button" onclick="selectPay();" class="btn btn-sm btn-white">조회</button>
		                <button type="button" onclick="initBtn();" class="btn btn-sm btn-default">초기화</button>
		                </div>			
                   </form>
                <hr>   		
					<p class="text-right m-b-0" style="margin-right: 13px;">
						<span style="display: none;"><a id="aTag" href="#modal-dialog2" class="btn btn-sm btn-success" data-toggle="modal">급여명세서</a></span>
						<c:if test="${loginMember.pno >= 3 }"> 
						<a href="#modal-dialog1" class="btn btn-sm btn-success" data-toggle="modal">추가</a>
						</c:if>
					</p>
					<p class="text-left">* 원하는 사원 클릭 시 급여명세서 출력</p>
					<p class="text-left">* 급여 내역 등록은 [직급 : 3 (대리) 이상]부터 가능합니다. << 현재 직급 : ${loginMember.pno } >></p>
					<br>
					<!-- 추가 클릭 시 급여데이터 추가팝업창 -->
					<div class="modal fade" id="modal-dialog1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">급여내역 등록</h4>
									</div>
									<!-- 급여 내역 추가 form -->
									<div class="modal-body">
										<form class="form-horizontal" method="post">
											<!-- <input type="hidden" name="pmno" id="i_pmno"> -->
											<div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">지급일자 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <input type="text" class="form-control" id="i_pdate" placeholder="20/01/01" name="pdate" />
			                                    </div>
		                                	</div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기본급여 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기본급여"  name="pbasic" id="i_pbasic"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">식대 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="식대" name="pmeal" id="i_pmeal"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">야근수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="야근수당" name="povertime" id="i_povertime"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">휴일수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="휴일근무수당" name="pholiday" id="i_pholiday"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">성과급 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="성과급" name="pbonus" id="i_pbonus"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기타수당:</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기타수당" name="petc" id="i_petc"/>
				                                    </div>
				                            </div>		                                	
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">사원번호:</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="사원번호" name="mno" id="i_mno"/>
				                                    </div>
				                            </div>	
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">부서 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <select class="form-control" id="i_dno" name="dno">
			                                            <option value="10">도서 1팀</option>
			                                            <option value="20">도서 2팀</option>
			                                            <option value="30">영업팀</option>
			                                            <option value="40">회계팀</option>
			                                        </select>
			                                    </div>
			                                </div>				                            	 
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">직급 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <select class="form-control" id="i_pno" name="pno">
			                                            <option value="1">사원</option>
			                                            <option value="2">주임</option>
			                                            <option value="3">대리</option>
			                                            <option value="4">과장</option>
			                                            <option value="5">차장</option>
			                                            <option value="6">부장</option>
			                                            <option value="7">이사</option>
			                                        </select>
			                                    </div>
			                                </div>                             	
											<div class="modal-footer">
												<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
												<button type="button" onclick="insertPay();" class="btn btn-sm btn-primary">등록</button>
											</div>
		                            		</form>
										</div>
									</div>
								</div>
						</div>
	           		<!-- ★ 급여명세서 클릭 시 팝업창 -->
					<div class="modal fade" id="modal-dialog2">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<br>
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" style="text-align: center; font-weight: bold;">2020년 9월 명세서</h4>
								</div>
								
								<div class="modal-body">
								<div id="print">
									<div class="row">
										<table class="table" style="text-align: center;">
	                              		<thead>
	                                    	<tr>
	                                        	<th style="text-align: center;">사원명</th>
	                                        	<th style="text-align: center;">지급일</th>
	                                  		  </tr>
	                                    	<tr>
	                                        	<td id="pay_name"></td>
	                                        	<td id="pay_day"></td>
	                                  		  </tr>
	                                    	<tr>
	                                        	<th style="text-align: center;">부서</th>
	                                        	<th style="text-align: center;">직책</th>
	                                  		</tr>
	                                    	<tr>
	                                        	<td id="pay_department"></td>
	                                        	<td id="pay_position"></td>
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
                                     		<th style="text-align: center;">지급항목</th>
                                       		<th style="text-align: center;">지급액</th>
                                    	</tr>
                               		</thead>
                               		<tbody>
                                    <tr>
                                        <td>기본급</td>
                                        <td id="pay_basic"></td>
                                    </tr>
                                    <tr>
                                        <td>식대</td>
                                        <td id="pay_meal"></td>
                                    </tr>
                                    <tr>
                                        <td>야근수당</td>
                                        <td id="pay_overtime"></td>
                                    </tr>
                                    <tr>
                                        <td>휴일수당</td>
                                        <td id="pay_holiday"></td>
                                    </tr>
                                    <tr>
                                        <td>성과급</td>
                                        <td id="pay_bonus"></td>
                                    </tr>
                                    <tr>
                                        <td>기타수당</td>
                                        <td id="pay_etc"></td>
                                    </tr>
                                    <tr>
                                        <td style="font-weight: bold;">합산 지급액</td>
                                        <td id="totalPay" style="font-weight: bold;"></td>
                                    </tr>
                               		</tbody>
                           			</table>
                           			</div>
                          
	                           		<div class="col-md-6">
		                            <table class="table table-striped" style="text-align: center;">
		                               <thead>
		                            		<tr>
		                                     	<th style="text-align: center;">공제항목</th>
		                                       	<th style="text-align: center;">공제액</th>
		                                    </tr>
		                                </thead>
		                                <tbody>
		                                    <tr>
		                                        <td>국민연금</td>
		                                        <td id="tax1"></td>
		                                    </tr>
		                                    <tr>
		                                        <td>건강보험</td>
		                                        <td id="tax2"></td>
		                                    </tr>
		                                    <tr>
		                                        <td>장기요양</td>
		                                        <td id="tax3"></td>
		                                    </tr>
		                                    <tr>
		                                        <td>고용보험</td>
		                                        <td id="tax4"></td>
		                                    </tr>
		                                    <tr>
		                                        <td>근로소득세</td>
		                                        <td id="tax5"></td>
		                                    </tr>
		                                    <tr>
		                                        <td style="font-weight: bold;">합산 공제액</td>
		                                        <td id="totaltax" style="font-weight: bold;"></td>
		                                    </tr>
		                                </tbody>
		                            </table>
                          		</div>
                         	</div>
                         	<div class="row">
                         		<table class="table" style="text-align: center;">
	                            <thead>
	                               <tr>
	                                  <th style="text-align: center;">실 수령액</th>
	                               </tr>
	                               <tr>
	                     		      <td id="finalTotal" style="size: 15" style="font-weight: bold;"></td>
	                               </tr>
	                             </thead>
	                             </table>
                         	</div>
                         	</div>
                         	</div> 
								<div class="modal-footer">
									<input type="button" value="인쇄" onclick="printPage();" class="btn btn-sm btn-white">
									<a onclick="close()" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
								</div>
							</div>
						</div>
					</div>	
					<!-- 수정 클릭 시 급여데이터 추가팝업창 -->
					<div class="modal fade" id="modal-dialog3">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<br>
										<br>
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h4 class="modal-title" style="text-align: center; font-weight: bold;">급여내역 수정</h4>
									</div>
									<!-- 급여 내역 수정 form -->
									<div class="modal-body">
										 <form class="form-horizontal" action=""> 
											<input type="hidden" name="pmno" id="m_pmno">
											<div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">지급일자 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <input type="text" class="form-control" id="m_pdate" placeholder="20/01/01" name="pdate"/>
			                                    </div>
		                                	</div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기본급여 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기본급여"  id="m_pbasic" name="pbasic"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">식대 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="식대" id="m_pmeal" name="pmeal"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">야근수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="야근수당" id="m_povertime" name="povertime"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">휴일수당 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="휴일근무수당" id="m_pholiday" name="pholiday"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">성과급 :</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="성과급" id="m_pbonus" name="pbonus"/>
				                                    </div>
				                            </div>
				                            <div class="form-group">
				                                    <label class="control-label col-md-4 col-sm-4">기타수당:</label>
				                                    <div class="col-md-6 col-sm-6">
				                                        <input type="text" class="form-control" placeholder="기타수당" id="m_petc" name="petc"/>
				                                    </div>
				                            </div>		                                	
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">사원번호 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <input type="text" class="form-control" placeholder="사원번호" style="float: left;" id="m_mno" name="mno" disabled="disabled"/>
			                                    </div>
			                                </div>
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">부서 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <select class="form-control" id="m_dno" name="dno" disabled="disabled">
			                                            <option value="10">도서 1팀</option>
			                                            <option value="20">도서 2팀</option>
			                                            <option value="30">영업팀</option>
			                                            <option value="40">회계팀</option>
			                                        </select>
			                                    </div>
			                                </div>
			                                <div class="form-group">
			                                    <label class="control-label col-md-4 col-sm-4">직급 :</label>
			                                    <div class="col-md-6 col-sm-6">
			                                        <select class="form-control" id="m_pno" name="pno" disabled="disabled">
			                                            <option value="1">사원</option>
			                                            <option value="2">주임</option>
			                                            <option value="3">대리</option>
			                                            <option value="4">과장</option>
			                                            <option value="5">차장</option>
			                                            <option value="6">부장</option>
			                                            <option value="7">이사</option>
			                                        </select>
			                                    </div>
			                                </div>
											<div class="modal-footer">
												<a href="javascript:;" id="close" class="btn btn-sm btn-white" data-dismiss="modal">닫기</a>
												<button type="button" onclick="modifyPay();" class="btn btn-sm btn-primary" id="">변경</button> 
											</div>
		                            	 </form> 
										</div>
									</div>
								</div>
						</div>										
							<table id="data-table" class="table table-striped table-bordered nowrap" width="100%">
								<thead>
									<tr>
										<th>No.</th>
										<th>사번</th>
										<th>이름</th>
										<th width="50">부서</th>
										<th>직급</th>
										<th width="70">지급일자</th>
										<th>기본급여</th>
										<th>식대</th>
										<th>야근수당</th>
										<th>휴일수당</th>
										<th>성과급</th>
										<th>기타수당</th>
										<c:if test="${loginMember.pno >=3 }"><th width="91">관리</th></c:if>
									</tr>
								</thead>
								<tbody id="payTablePlace">

								</tbody>
							</table>
					</div>												
					</div>
				</div>
			</div>

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
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-select.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>	
	
	<script>
	
	$(document).ready(function() {
		App.init();
		TableManageTableSelect.init();
		FormPlugins.init();		
	});
		
	/* 초기화 버튼 */
	function initBtn() {
		displayPay();
 		$("#s_mno").val("");
 		$("#s_dno").val("");
 		$("#s_pno").val("");
	};

	
	/* 급여 조회 리스트 */
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
						html+="<td>"+this.pdate+"</td>";
						html+="<td>"+this.pbasic+"</td>";
						html+="<td>"+this.pmeal+"</td>";
						html+="<td>"+this.povertime+"</td>";
						html+="<td>"+this.pholiday+"</td>";
						html+="<td>"+this.pbonus+"</td>";
						html+="<td>"+this.petc+"</td>";
						/* if( ${loginMember.pno >= 3}) { */
						html+="<td onclick='event.cancelBubble=true'><button onclick='deletePay("+this.pmno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button class='btn btn-sm btn-success modify_link' data-toggle='modal' data-id="+this.pmno+">수정</button></td>";
						/* } */ 
						}
						html+="</tr>";
						
						});			
					
 					$("#data-table").dataTable().fnDestroy();
					$("#payTablePlace").html(html);
					$("#data-table").dataTable(); 
					 
					$(".modify_link").click(function() {
						$("#modal-dialog3").modal("show");
					
						var pmno=$(this).attr("data-id");
						$("#m_pmno").val(pmno); 
						
						$.ajax({
							type: "GET",
							url: "pay_view/"+pmno,
							dataType: "json",
							success: function(json) {
								$("#m_pdate").val(json.pdate);
								$("#m_pbasic").val(json.pbasic);
								$("#m_pmeal").val(json.pmeal);
								$("#m_povertime").val(json.povertime);
								$("#m_pholiday").val(json.pholiday);
								$("#m_pbonus").val(json.pbonus);
								$("#m_petc").val(json.petc);
								$("#m_mno").val(json.mno);
								$("#m_dno").val(json.dno);
								$("#m_pno").val(json.pno);				
							},
							error: function(xhr) {
								alert("에러코드 = "+xhr.status);
							}
						});
					});
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
	

	
 	/* 급여 수정 내용 입력 후 변경버튼 클릭시 */
	
	function modifyPay() {
		var pmno=$("#m_pmno").val();
		var pdate=$("#m_pdate").val();
		var pbasic=$("#m_pbasic").val();
		var pmeal=$("#m_pmeal").val();
		var povertime=$("#m_povertime").val();
		var pholiday=$("#m_pholiday").val();
		var pbonus=$("#m_pbonus").val();
		var petc=$("#m_petc").val();
		var mno=$("#m_mno").val();
		var dno=$("#m_dno").val();
		var pno=$("#m_pno").val();
		
		$.ajax({
			type: "PUT",
			url: "pay_modify",
			headers: {"content-type":"application/json", "X-HTTP-Method-override":"PUT"},
			data: JSON.stringify({ 
				"pmno":pmno,
				"pdate":pdate, 
				"pbasic":pbasic,
				"pmeal":pmeal,
				"povertime":povertime,
				"pholiday":pholiday,
				"pbonus":pbonus,
				"petc":petc,
				"mno":mno,
				"dno":dno,
				"pno":pno			
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
	
 	
 	/* 급여 추가 */
 	
 	function insertPay() {
 		var pmno=$("#i_pmno").val();
		var pdate=$("#i_pdate").val();
		var pbasic=$("#i_pbasic").val();
		var pmeal=$("#i_pmeal").val();
		var povertime=$("#i_povertime").val();
		var pholiday=$("#i_pholiday").val();
		var pbonus=$("#i_pbonus").val();
		var petc=$("#i_petc").val();
		var mno=$("#i_mno").val();
		var dno=$("#i_dno").val();
		var pno=$("#i_pno").val();

		
		$.ajax({
			type: "POST",
			url: "pay_insert",
			headers: {"content-type":"application/json"},
			data: JSON.stringify({
				"pmno":pmno,
				"pdate":pdate,
				"pbasic":pbasic,
				"pmeal":pmeal,
				"povertime":povertime,
				"pholiday":pholiday,
				"pbonus":pbonus,
				"petc":petc,
				"mno":mno,
				"dno":dno,
				"pno":pno

			}),
			
			dataType: "text",
			success: function(text) {
				if(text=="success") {
				location.reload();	
				}
			}
		});
 	}
 	
	/* 검색 내역 리스트 */
		
		function selectPay() {
 		var mno=$("#s_mno").val();
 		var dno=$("#s_dno").val();
 		var pno=$("#s_pno").val();
		
 		$.ajax({
 			type: "POST",
 			url: "pay_search",
 			headers: {"content-type":"application/json"},
 			data: JSON.stringify({
 				"mno":mno,
 				"dno":dno,
 				"pno":pno
 				}),
 			dataType: "json",
 			success: function(json) {
					if(json.length==0) {
						var html="<tr><td class='center' colspan='13'>검색된 급여내역이 없습니다.</td></tr>";
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
						html+="<td>"+this.pdate+"</td>";
						html+="<td>"+this.pbasic+"</td>";
						html+="<td>"+this.pmeal+"</td>";
						html+="<td>"+this.povertime+"</td>";
						html+="<td>"+this.pholiday+"</td>";
						html+="<td>"+this.pbonus+"</td>";
						html+="<td>"+this.petc+"</td>";
						html+="<td onclick='event.cancelBubble=true'><button onclick='deletePay("+this.pmno+");' class='btn btn-sm btn-white'>삭제</button> "
						+" <button href='#modal-dialog3' class='btn btn-sm btn-success' data-toggle='modal' id='modify_link' data-id="+this.pmno+">수정</button></td>";
						html+="</tr>";
 					});
 					
					$("#data-table").dataTable().fnDestroy();
					$("#data-table").dataTable(); 
 					$("#payTablePlace").html(html);
 				},
 				error: function(xhr) {
 					alert("에러 발생 = "+xhr.status);
 				}
 			});
 		}
 	
 	
 	
  
      Number.prototype.format = function(){
          if(this==0) return 0;
       
          var reg = /(^[+-]?\d+)(\d{3})/;
          var n = (this + '');
       
          while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
       
          return n;
      };
        
 	/* 테이블 클릭 시 해당 사원의 급여명세서 modal 출력 */ 
 	
    $('#data-table tbody').on( 'click', 'tr', function () {
         $('#aTag').get(0).click();
        var payInfo = $('#data-table').DataTable().row(this).data();        
        
        var basic = parseInt(payInfo[6]);
        var meal = parseInt(payInfo[7]);
        var overtime = parseInt(payInfo[8]);
        var holiday = parseInt(payInfo[9]);
        var bonus = parseInt(payInfo[10]);
        var etc = parseInt(payInfo[11]);
        var total = (basic+meal+overtime+holiday+bonus+etc).format();
        var total2 = basic+meal+overtime+holiday+bonus+etc; //그냥 total 쓰면 NaN 나서 추가
        var tax1 = total2*0.045;
        var tax1format = (total2*0.045).format();
        var tax2 = Math.round(total2*0.03335);
        var tax2format = (Math.round(total2*0.03335)).format();
        var tax3 = Math.round((total2*0.03335)*0.05);
        var tax3format = (Math.round((total2*0.03335)*0.05)).format();
        var tax4 = total2*0.008;
        var tax4format = (total2*0.008).format();
        var tax5 = total2*0.1;
        var tax5format = (total2*0.1).format();
        var totaltax = (Math.round((tax1+tax2+tax3+tax4+tax5)/10)*10).format();
        var totaltax2 = Math.round((tax1+tax2+tax3+tax4+tax5)/10)*10;    
        var finalTotal = (total2-totaltax2).format();
        
        $("#totalPay").text(total);
        $("#tax1").text(tax1format);
        $("#tax2").text(tax2format);
        $("#tax3").text(tax3format);
        $("#tax4").text(tax4format);
        $("#tax5").text(tax5format);
        $("#totaltax").text(totaltax);
        $("#finalTotal").text(finalTotal);

        var paybasic=basic.format();
        var paymeal=meal.format();
        var payovertime=overtime.format();
        var payholiday=holiday.format();
        var paybonus=bonus.format();
        var payetc=etc.format();
        
        $("#pay_name").text(payInfo[2]);
        $("#pay_department").text(payInfo[3]);
        $("#pay_position").text(payInfo[4]);
        $("#pay_day").text(payInfo[5]);
        $("#pay_basic").text(paybasic);
        $("#pay_meal").text(paymeal);
        $("#pay_overtime").text(payovertime);
        $("#pay_holiday").text(payholiday);
        $("#pay_bonus").text(paybonus);
        $("#pay_etc").text(payetc);
        
   });
 
 	/* 명세서 부분만 출력 */
 	
    function printPage(){
    	 var initBody;
    	 window.onbeforeprint = function(){
    	  initBody = document.body.innerHTML;
    	  document.body.innerHTML =  document.getElementById('print').innerHTML;
    	 };
    	 window.onafterprint = function(){
    	  document.body.innerHTML = initBody;
    	 };
    	 window.print();
    	 return false;
    	}
 	
	function close() {
	   window.open('','_self').close();     	
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