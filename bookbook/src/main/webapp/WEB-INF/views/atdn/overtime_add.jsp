<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
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
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	
	<!-- ================== END BASE JS ================== -->

		
		<!-- begin #content -->
		<div id="content" class="content">
			
			<!-- begin page-header -->
			<h1 class="page-header">연장 근무 신청 <small>header small text goes here...</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
                <!-- begin col-6 -->
			    <div class="col-md-7 col-md-offset-2">
                    
                    <div class="panel panel-inverse" data-sortable-id="form-plugins-4">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Datepicker</h4>
                        </div>
                        <div class="panel-body panel-form">
                            <form class="form-horizontal form-bordered"  method="post">
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">근무 구분</label>
                                    <div class="col-md-4">
                                        <select name="aovertime" class="form-control">
	                                		<option value="1">초과근무</option>
	                                		<option value="2">휴가</option>
	                                		<option value="3">출장</option>
                                		</select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                	<label class="col-md-4 control-label">근무 시간</label>
                                	<div class="col-md-8">
								        <div class="input-group date">
                                            <input type="time" class="form-control" name="astartTime">
                                            <span class="input-group-addon">to</span>
                                            <input type="time" class="form-control" name="aendTime">                                         
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">비고</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="aovertimetext" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">신청 일자</label>
                                    <div class="col-md-8">
                                        <div class="input-group date" id="datepicker-disabled-past" data-date-format="dd-mm-yyyy" data-date-start-date="Date.default">
                                            <input type="text" class="form-control" placeholder="Select Date"/>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">신청 시간</label>
                                    <div class="col-md-8">
                                        <div class="input-group input-daterange">
                                            <input type="text" class="form-control" name="startdate" placeholder="Date Start" />
                                            <span class="input-group-addon">to</span>
                                            <input type="text" class="form-control" name="enddate" placeholder="Date End" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">                                    
                                    <div class="col-md-4 col-md-offset-8 btn btn-inverse">
                                        <button type="submit" class="btn btn-inverse m-r-3 m-b-3">저장</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                  
                </div>
                
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
        
        
		
	
	<!-- end page container -->
	
	
	
	
	<script>
		$(document).ready(function() {
			App.init();
			FormPlugins.init();
		});
	</script>
</body>
</html>
