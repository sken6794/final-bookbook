<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<style type="text/css">
	
			#sortable0, #sortable1, #sortable2, #sortable3,
			#sortable4, #sortable5, #sortable6, #sortable7, #sortable8{ 
          
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

		<!-- begin #content -->
		<div id="content" class="content">
				<!-- begin row -->
					<div class="row">
						
						<div class="col-md-2">
						</div>
						<div class="col-md-8">
								<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">도서 정보 검색</h4>
							                    </div>
												<div class="panel-body panel-form">
															<form class="form-horizontal form-bordered" data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">도서 이름 </label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="도서 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판사 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="출판사 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">작가 이름</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" class="form-control" placeholder="작가 이름을 입력해 주세요.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">카테고리</label>
																	<div class="col-md-6 col-sm-6">
																		<select class="form-control">
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
																	<label class="control-label col-md-4 col-sm-4">도서 위치</label>
																	<div class="col-md-6 col-sm-6">
																		<select class="form-control">
								                                            <option>A구역</option>
								                                            <option>B구역</option>
								                                            <option>C구역</option>
								                                            <option>D구역</option>
								                                            <option>E구역</option>
								                                            <option>F구역</option>
								                                            <option>G구역</option>
								                                            <option>H구역</option>
								                                            <option>I구역</option>
								                                        </select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">출판 날짜</label>
																	<div class="col-md-6 col-sm-6">
																		<div class="input-group date" id="date1">
								                                            <input type="text" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
																	</div>
																</div>
																<div class="form-group">
																
 																</div>
															</form>
												</div>
									</div>
						
						</div>
						<div class="col-md-2">
						</div>
					</div>
					<div class="row">
		</div>
		<!-- end #content -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
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
	<!-- datePicker 관련 라이브러리 -->
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
			FormPlugins.init();
		});
		
	
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
	      
	      var dataSet = new Array(100);
	        for (var i=0; i<dataSet.length; i++) {
	           dataSet[i] = ["132","시크릿 : 비밀을 찾아서","인문","A구역","20"]
	     }

	      var table = $('#book_table').dataTable({
	            data : dataSet,
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
	   
	  
	
	   

		
	</script>
</body>
</html>