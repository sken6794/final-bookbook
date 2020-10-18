<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->

<body>

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">Home</a></li>
				<li><a href="javascript:;">Chart</a></li>
				<li class="active">Flot Chart</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">매출 관리 시스템<small>header small text goes here...</small></h1>
			<!-- end page-header -->
			
		    <!-- begin row -->
		    <div class="row">
		        <!-- begin col-6 -->
		        <!--  
		        <div class="col-md-6">
                    <div class="panel panel-inverse" data-sortable-id="flot-chart-1">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Flot Basic Line Chart</h4>
                        </div>
                        <div class="panel-body">
                            <div id="basic-chart" class="height-sm"></div>
                        </div>
                    </div>
		        </div>
		        -->
		        <!-- end col-6 -->
		        <!-- begin col-6 -->
		        <div class="col-md-6"  >
                    <div class="panel panel-inverse" data-sortable-id="flot-chart-2" style="width: 800px; height: 50%;">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">월별 매출액(단위 : 만원)</h4>
                        </div>
                        <div class="panel-body" >
                            <div id="interactive-chart" class="height-sm"></div>
                        </div>
                    </div>
		        </div>
		        <!-- end col-6 -->
		    </div>
		    <!-- end row -->
		    <!-- begin row -->
		    <div class="row">
		        <!-- begin col-4 -->
		        <div class="col-md-4">
                    <div class="panel panel-inverse" data-sortable-id="flot-chart-3">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">9월 카테고리별 매출 비율(단위 : 만원)</h4>
                        </div>
                        <div class="panel-body">
                            <div id="bar-chart" class="height-sm"></div>
                        </div>
                    </div>
		        </div>
		        <!-- end col-4 -->
		        <!-- begin col-4 -->
		        <div class="col-md-4">
                    <div class="panel panel-inverse" data-sortable-id="flot-chart-5">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">출판사별 비율(단위 : 만원)</h4>
                        </div>
                        <div class="panel-body">
                            <div id="interactive-pie-chart" class="height-sm"></div>
                        </div>
                    </div>
		        </div>
		        <!-- end col-4 -->
		    </div>
		    <!-- end row -->
		    <!-- begin row -->
		    <!-- 어째서인지 모르겠으면 밑에 이 차트 지우면 차트 전체가 안 보임... -->
		    <div class="row">
		        <!-- begin col-4 -->
		        <div class="col-md-4">
                    <div class="panel panel-inverse" data-sortable-id="flot-chart-6">
                        <div class="panel-heading">
                           
                            <h4 class="panel-title">Flot Stacked Chart</h4>
                        </div>
                        <div class="panel-body">
                            <div id="stacked-chart" class="height-sm"></div>
                        </div>
                    </div>
		        </div>
		        <!-- end col-4 -->
		        
		    </div>
		    <!-- end row -->
		</div>
		<!-- end #content -->
		
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.time.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.resize.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.stack.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.crosshair.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.categories.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/chart-flot.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			Chart.init();
		});
		
		var handleInteractiveChart = function () {
			"use strict";
		    function showTooltip(x, y, contents) {
		        $('<div id="tooltip" class="flot-tooltip">' + contents + '</div>').css( {
		            top: y - 45,
		            left: x - 55
		        }).appendTo("body").fadeIn(200);
		    }
			if ($('#interactive-chart').length !== 0) {
		        var d2 = [[0, 10],[1, 26], [2,13], [3, 18], [4, 35], [5, 23], [6, 18],[7, 35], [8, 24], [9,14], [10, 14], [11, 29], [12, 30]];
		        
		        var d1= new Array;
		        var sum=0;
		        for (var i=0; i<d2.length;i++) {
					sum=sum+d2[i][1];
					var l=[i,sum];
					d1.push(l);
		        }
		        var d1;
	        /*
			if ($('#interactive-chart').length !== 0) {
		        var d1 = [[0, 19], [1, 53], [2,66], [3, 60], [4, 68], [5, 66], [6,71],[7, 75], [8, 69], [9,70], [10, 68], [11, 72], [12, 78], [13, 86]];
		        var d2 = [[0, 12], [1, 26], [2,13], [3, 18], [4, 35], [5, 23], [6, 18],[7, 35], [8, 24], [9,14], [10, 14], [11, 29], [12, 30], [13, 43]];
	        */
		        
		        
		        $.plot($("#interactive-chart"), [
		                {
		                    data: d1, 
		                    label: "누적 매출액", 
		                    color: purple,
		                    lines: { show: true, fill:false, lineWidth: 1 },
		                    points: { show: false, radius: 5, fillColor: '#fff' },
		                    shadowSize: 0
		                }, {
		                    data: d2,
		                    label: '개별 매출액',
		                    color: green,
		                    lines: { show: true, fill:false, lineWidth: 1, fillColor: '' },
		                    points: { show: false, radius: 3, fillColor: '#fff' },
		                    shadowSize: 0
		                }
		            ], 
		            {
		                xaxis: {  tickColor: '#ddd',tickSize: 1 },
		                yaxis: {  tickColor: '#ddd', tickSize: 20 },
		                grid: { 
		                    hoverable: true, 
		                    clickable: true,
		                    tickColor: "#ccc",
		                    borderWidth: 1,
		                    borderColor: '#ddd'
		                },
		                legend: {
		                    labelBoxBorderColor: '#ddd',
		                    margin: 0,
		                    noColumns: 1,
		                    show: true
		                }
		            }
		        );
		        var previousPoint = null;
		        $("#interactive-chart").bind("plothover", function (event, pos, item) {
		            $("#x").text(pos.x.toFixed(2));
		            $("#y").text(pos.y.toFixed(2));
		            if (item) {
		                if (previousPoint !== item.dataIndex) {
		                    previousPoint = item.dataIndex;
		                    $("#tooltip").remove();
		                    var y = item.datapoint[1].toFixed(1);
		                    
		                    var content = item.series.label + " " + y;
		                    showTooltip(item.pageX, item.pageY, content);
		                }
		            } else {
		                $("#tooltip").remove();
		                previousPoint = null;            
		            }
		            event.preventDefault();
		        });
		    }
		};
		
		var handleBarChart = function () {
			"use strict";
			if ($('#bar-chart').length !== 0) {
		        var data = [ ["철학", 10], ["소설", 8], ["수필", 4], ["교육", 13], ["자기계발", 17], ["자연", 9] ];
		        $.plot("#bar-chart", [ {data: data, color: purple} ], {
		            series: {
		                bars: {
		                    show: true,
		                    barWidth: 0.4,
		                    align: 'center',
		                    fill: true,
		                    fillColor: purple,
		                    zero: true
		                }
		            },
		            xaxis: {
		                mode: "categories",
		                tickColor: '#ddd',
						tickLength: 0
		            },
		            grid: {
		                borderWidth: 0
		            }
		        });
		    }
		};
		
		var handleInteractivePieChart = function () {
			"use strict";
			if ($('#interactive-pie-chart').length !== 0) {
		        var data = [];
		        var series = 6;
		        var colorArray = [red, purple, dark, grey, blue, green];
		        
		        /*
		        data[1] = { label: "LEON"+(1), data: Math.floor(Math.random()*100)+1, color: colorArray[0]};
		        data[2] = { label: "한빛비즈"+(2), data: Math.floor(Math.random()*100)+1, color: colorArray[1]};
		        data[3] = { label: "프리렉"+(3), data: Math.floor(Math.random()*100)+1, color: colorArray[2]};
		        data[4] = { label: "북로드"+(4), data: Math.floor(Math.random()*100)+1, color: colorArray[3]};
		        data[5] = { label: "현암사"+(5), data: Math.floor(Math.random()*100)+1, color: colorArray[4]};
		        data[6] = { label: "공감출판사"+(6), data: Math.floor(Math.random()*100)+1, color: colorArray[5]};
		        */
		        for( var i = 0; i<series; i++)
		        {
		            data[i] = { label: "Series"+(i+1), data: Math.floor(Math.random()*100)+1, color: colorArray[i]};
		        }
		        $.plot($("#interactive-pie-chart"), data,
		        {
		            series: {
		                pie: { 
		                    show: true
		                }
		            },
		            grid: {
		                hoverable: true,
		                clickable: true
		            },
		            legend: {
		                labelBoxBorderColor: '#ddd',
		                backgroundColor: 'none'
		            }
		        });
		    }
		};
	</script>
</body>
</html>
