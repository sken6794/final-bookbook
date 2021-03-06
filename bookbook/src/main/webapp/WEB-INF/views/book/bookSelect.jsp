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
						
						
						<div class="col-md-12">
								<div class="panel panel-inverse" data-sortable-id="ui-buttons-7" data-init="true">
						                        <div class="panel-heading">
						                            <div class="panel-heading-btn">
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
						                            </div>
						                            <h4 class="panel-title">?????? ??????</h4>
							                    </div>
												<div class="panel-body panel-form">
															<form class="form-horizontal form-bordered" 
															action="selectDynamicBookList"  method="post"
															data-parsley-validate="true" novalidate="">
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">?????? ?????? </label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bname" class="form-control" placeholder="?????? ????????? ????????? ?????????.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">?????????</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bpublisher" class="form-control" placeholder="????????? ????????? ????????? ?????????.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">?????? ??????</label>
																	<div class="col-md-6 col-sm-6">
																		<input type="text" name="bwriter" class="form-control" placeholder="?????? ????????? ????????? ?????????.">
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">????????????</label>
																	<div class="col-md-6 col-sm-6">
																		<select name="bcategory" class="form-control">
								                                            <option>??????</option>
								                                            <option>???</option>
								                                            <option>??????</option>
								                                            <option>??????</option>
								                                            <option>??????</option>
								                                            <option>??????</option>
								                                            <option>??????</option>
								                                            <option>??????</option>
								                                            <option>?????????</option>
								                                            <option>????????????</option>
								                                        </select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4">?????? ??????</label>
																	<div class="col-md-6 col-sm-6">
																		<select name="bloc"  class="form-control">
																			<option>??????</option>
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
																	<label class="control-label col-md-4 col-sm-4">?????? ??????</label>
																	<div class="col-md-6 col-sm-6">
																	<!--  
																		<div class="input-group date" id="date1">
								                                            <input type="text" name="boutdate" class="form-control">
								                                            <span class="input-group-addon">
								                                                <span class="glyphicon glyphicon-calendar"></span>
								                                            </span>
								                                        </div>
								                                      -->
								                                        <!-- -->
								                                        <div class="input-group daterange"  id="date1">
								                                            <input type="text" id="startDate"class="form-control" name="bostartDate" placeholder="?????? ??????">
								                                            <span class="input-group-addon">??????</span>
								                                            <input type="text" id="endDate"class="form-control" name="boendDate" placeholder="??? ??????">
								                                        </div>
								                                         
								                                        
																	</div>
																</div>
																	<div class="form-group">
																	<label class="control-label col-md-4 col-sm-4"></label>
																	<div class="row">
																		<div class="col-md-9"></div>
																		<div class="col-md-1 col-sm-6">
																			<button type="submit" id="selectBtn" class="btn btn-inverse m-r-5 m-b-5">?????? ??????</button>
																		</div>
																		<div class="col-md-1 col-sm-6">
																			<button type="submit" id="deleteBtn" class="btn btn-inverse m-r-5 m-b-5">?????? ??????</button>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																		 <table id="book_table" class="table table-striped table-bordered nowrap" width="100%">
																			<thead>
																				<tr role="row">
																					<th class="sorting_asc" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-sort="ascending"
																						aria-label="Rendering engine: activate to sort column descending"
																						style="width: 133px;">????????????</th>
																					<th class="sorting_asc" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-sort="ascending"
																						aria-label="Rendering engine: activate to sort column descending"
																						style="width: 300px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Browser: activate to sort column ascending"
																						style="width: 130px;">?????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Platform(s): activate to sort column ascending"
																						style="width:130px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>		
																					<th class="sorting" tabindex="0"
																						aria-controls="data-table" rowspan="1" colspan="1"
																						aria-label="Engine version: activate to sort column ascending"
																						style="width: 100px;">????????????</th>	
																				</tr>
																			</thead>
																			<tbody>
																					<c:forEach var="book"  items="${bookList}">
																						<tr class="gradeA odd" role="row">
																									<td class="sorting_1">${book.bcode }</td>
																									<td>${book.bname }</td>
																									<td>${book.bpublisher }</td>
																									<td>${book.bwriter }</td>
																									<td>${book.bcategory }</td>
																									<td>${book.bloc }</td>
																									<td>${book.bprice }</td>
																									<td>${book.bookstock.stockqty }</td>
																									<td>${book.boutdate }</td>
																									<td>${book.bookin.indate }</td>
																						</tr>
																					</c:forEach>
																					
																			</tbody>		
																	</table>
 															</div>
 															
													</form>
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
	<!-- datePicker ?????? ??????????????? -->
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
	<!-- dataTables ?????? ???????????????  -->
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
			//TableManageTableSelect.init();
			//FormPlugins.init();
			tableClickIdx = -1;
		});
		
	
		$(function(){

			
			$.fn.datepicker.dates['kr'] = {
					days: ["?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????", "?????????"],
					daysShort: ["???", "???", "???", "???", "???", "???", "???", "???"],
					daysMin: ["???", "???", "???", "???", "???", "???", "???", "???"],
					months: ["1???", "2???", "3???", "4???", "5???", "6???", "7???", "8???", "9???", "10???", "11???", "12???"],
					monthsShort: ["1???", "2???", "3???", "4???", "5???", "6???", "7???", "8???", "9???", "10???", "11???", "12???"]
			};

	        $('#startDate').datepicker({
	            format: "yyyy/mm/dd",
	            calendarWeeks: false,
	            todayHighlight: true,
	            autoclose: true,
	            language: "kr"
	       	 });
	        
	        $('#endDate').datepicker({
	            format: "yyyy/mm/dd",
	            calendarWeeks: false,
	            todayHighlight: true,
	            autoclose: true,
	            language: "kr"
	       	 });
	        /*
	        $('#endDate').datepicker({
	            calendarWeeks: false,
	            todayHighlight: true,
	            autoclose: true,
	            format: "yyyy/mm/dd",
	            language: "kr"
	       	 });
	      */
	    });
		
	      // Korean
	      var lang_kor = {
	          "decimal" : "",
	          "emptyTable" : "???????????? ????????????.",
	          "info" : "_START_ - _END_ (??? _TOTAL_ ???)",
	          "infoEmpty" : "0???",
	          "infoFiltered" : "(?????? _MAX_ ??? ??? ????????????)",
	          "infoPostFix" : "",
	          "thousands" : ",",
	          "lengthMenu" : "_MENU_ ?????? ??????",
	          "loadingRecords" : "?????????...",
	          "processing" : "?????????...",
	          "search" : "?????? : ",
	          "zeroRecords" : "????????? ???????????? ????????????.",
	          "selected" : "??????",
	          "paginate" : {
	              "first" : "??? ?????????",
	              "last" : "????????? ?????????",
	              "next" : "??????",
	              "previous" : "??????"
	          },
	          "aria" : {
	              "sortAscending" : " :  ???????????? ??????",
	              "sortDescending" : " :  ???????????? ??????"
	          }
	      };
	      /*
	      var dataSet = new Array(100);
	        for (var i=0; i<dataSet.length; i++) {
	           dataSet[i] = ["132","????????? : ????????? ?????????","??????","A??????","20"]
	     }
	    */

	      var table = $('#book_table').dataTable({
	            //data : dataSet,
	            pageLength: 15,
	            bPaginate: true,
	            bLengthChange: true,
	            lengthMenu : [ [ 7, 10, 15, -1 ], [ 7, 10, 15, "??????" ] ],
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
	                text: '?????? ??????'
	                
	               },{
	               extend: 'selectNone',
	               text: '?????? ??????'
	               }
	            ]
	        });
	      
	   		// ????????? ??? ?????? ???????????? selected ??????
	        $('#book_table tbody').on( 'click', 'tr', function () {
	        	 //????????? ??? ?????? ??? ????????????
	        	 var bookInfo = $('#book_table').DataTable().row(this).data();
	        	 if($(this).hasClass('selected')){
	        		 tableClickIdx = bookInfo[0];
	        	 }else{
	        		 tableClickIdx = -1;
	        	 }
	       });
	   		
	        $("#deleteBtn").click(function(){
	        	if(tableClickIdx == -1){
	        		alert("?????? ?????? ????????? ?????? ????????????.");
	        	}else{
	        		$.ajax({
	        			type: "GET",
		        	  	url: "deleteBook/"+tableClickIdx,
		        	  	success: function(idx){
		        	  		alert("?????? ????????? ?????? ???????????????.");
		        	  	}
	        		})
	        	}
	        });
	        
	        
	   		
	   		
	   	
	   		/*
	        $("#selectBtn").click(function(){
				 var formData = $("#bookForm").serialize() ;
				 $.ajax({
						type: "POST",
		        	  	url: "selectDynamicBookList",
		        	  	data : formData,
			      		dataType: "json",
			      		success: function(json) {
			      			
			      		}
				 })
			 });
	   		*/
	    	
	   		
	</script>
