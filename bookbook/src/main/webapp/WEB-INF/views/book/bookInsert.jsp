<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<!-- ==================DatePicker ============================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-eonasdan-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	 <!-- ================================================================ -->
		<!-- begin #content -->
		<div id="content" class="content">
			<div class="row">
					
					<div class="col-md-12">
									<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">도서 등록</h4>
							                        </div>
	
														<div class="panel-body panel-form">
															<form class="form-horizontal form-bordered" id="bookForm"
															enctype="multipart/form-data" data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 이름 </label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bname" class="form-control" placeholder="도서 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판사 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bpublisher" class="form-control" placeholder="출판사 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">작가 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bwriter" class="form-control" placeholder="작가 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">카테고리</label>
																	<div class="col-md-6 col-sm-6">
																		<select name="bcategory" class="form-control">
								                                            <option>전체</option>
								                                            <option>시</option>
								                                            <option>잡지</option>
								                                            <option>역사</option>
								                                            <option>철학</option>
								                                            <option>소설</option>
								                                            <option>교육</option>
								                                            <option>예술</option>
								                                            <option>에세이</option>
								                                            <option>자기개발</option>
								                                        </select>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">재고 수량</label>
																	<div class="col-md-6 col-sm-6">
																		<input  id="spinner" name="bquantity" > 권
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판 날짜</label>
																	<div class="col-md-6 col-sm-6">
																		<div class="input-group date" id="date1">
								                                            <input type="text" name="bindate" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">입고 날짜</label>
																	<div class="col-md-6 col-sm-6">
																		<div class="input-group date" id="date2">
								                                            <input type="text" name="boutdate" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 위치</label>
																	<div class="col-md-6 col-sm-6">
																		<select name="bloc" class="form-control">
								                                            <option>A</option>
								                                            <option>B</option>
								                                            <option>C</option>
								                                            <option>D</option>
								                                            <option>E</option>
								                                            <option>F</option>
								                                            <option>G</option>
								                                            <option>H</option>
								                                            <option>I</option>
								                                        </select>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">판매 가격</label>
																	<div class="col-md-6 col-sm-6">
																		<p>
																		  <label for="amount">판매 가격을</label>
																		  <input type="text" name="bprice" id="amount" size="4" readonly style="border:0; color:#242A30; font-weight:bold;" >원으로 설정합니다.
																		</p>
																		<div id="slider"></div>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 이미지 업로드</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="file" name="file" class="form-control" >
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4" for="message">도서 설명</label>
																	<div class="col-md-6">
																		<textarea class="form-control" name="binfo" id="message" name="message" rows="10" data-parsley-range="[20,3000]" placeholder="최소 20 - 최대 3000 글자" data-parsley-id="3913"></textarea><ul class="parsley-errors-list" id="parsley-id-3913"></ul>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4"></label>
																	<div class="row">
																		<div class="col-md-9"></div>
																		<div class="col-md-3 col-sm-6">
																			<button type="button" id="insertBtn" class="btn btn-inverse m-r-5 m-b-5">도서정보 저장</button>
																		</div>
																	</div>
																</div>
															</form>
														</div>
						</div>
					
					</div>
					
			</div>	
			
			
			
		</div>
		<!-- end #content -->
	
	<script>
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
			
			$(function(){
				$.fn.datepicker.dates['kr'] = {
						days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
						daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
						daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
						months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
						monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
				};


		        $('#date1').datepicker({
		            calendarWeeks: false,
		            todayHighlight: true,
		            autoclose: true,
		            format: "yyyy/mm/dd",
		            language: "kr"
		       	 });
		      
		    });
			
			
			  $('#date2').datepicker({
		            calendarWeeks: false,
		            todayHighlight: true,
		            autoclose: true,
		            format: "yyyy/mm/dd",
		            language: "kr"
		       	 });


			
			 $( function() {
				 	var spinner = $( "#spinner" ).spinner({
					 	  min: 0,
						  max: 2500,
					      step: 1,
					      start: 0,
					      numberFormat: "권"
				 	});
				 
				    $( "#slider" ).slider({
				      value:100,
				      min: 0,
				      max: 50000,
				      step: 500,
				      slide: function( event, ui ) {
				        $( "#amount" ).val( ui.value );
				      }
				    });
				    
				    $( "#amount" ).val( $( "#slider" ).slider( "value" ));
					 // 스피너 값 가져오기
				     // alert( spinner.spinner( "value" ) );
			} );
			 
			 
			 //insert Ajax 요청
			
			 $("#insertBtn").click(function(){
				 
				 /*
				 var formData = $("#bookForm").serialize() ;
				 var file = $("#bookForm")[0];
				 var fileData = new FormData(file);
				 

				 var file = document.getElementById('uploadedFile').files[0];
				 var form = $('form')[0];
				 var formData = new FormData(form);
				 formData.append("File", file);
				 */
			
				var form = $('#bookForm')[0]; 
				var formData = new FormData(form); 
				 $.ajax({
						type: "POST",
						enctype: 'multipart/form-data',
						processData: false,
				        contentType: false,
		        	  	url: "bookInsert",
		        	  	data : formData,
			      		dataType: "text",
			      		success: function(json) {
			      			alert(json);
			      		}
					 
				 })
			 });
			

		});
	</script>