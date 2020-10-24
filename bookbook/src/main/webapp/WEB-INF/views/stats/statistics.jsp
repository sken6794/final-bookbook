<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
    
    <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Buttons/css/buttons.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
   <!-- ================== END PAGE LEVEL STYLE ================== -->
   
   <!-- ================== BEGIN BASE JS ================== -->
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
   <!-- ================== END BASE JS ================== -->
   <style>
    th, td {
        text-align: center;
    }
    a:hover {
        text-decoration: none;
        font-weight: bold;
    }
    a:active, a:visited {text-decoration: none;}
    #gray {color: #707478;}
</style>
</head>
<body>
      <div id="content" class="content">
         <!-- begin page-header -->
			<h1 class="page-header">통계 <small>통계 차트, 테이블 출력</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-stats bg-red">
						<div class="stats-icon"><i class="fa fa-desktop"></i></div>
						<div class="stats-info">
							<h4>총 매출액</h4>
							<p>3,291,922원</p>	
						</div>
						<div class="stats-link">
							<a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
					</div>
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-stats bg-blue">
						<div class="stats-icon"><i class="fa fa-chain-broken"></i></div>
						<div class="stats-info">
							<h4>전월 대비 매출증가율</h4>
							<p>12.44%</p>	
						</div>
						<div class="stats-link">
							<a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
					</div>
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-stats bg-purple">
						<div class="stats-icon"><i class="fa fa-shopping-cart"></i></div>
						<div class="stats-info">
							<h4>판매 도서량</h4>
							<p>522 권</p>	
						</div>
						<div class="stats-link">
							<a href="${pageContext.request.contextPath}/bookout">출고 조회<i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
					</div>
				</div>
				<!-- end col-3 -->
				<!-- begin col-3 -->
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-stats bg-green">
						<div class="stats-icon"><i class="fa fa-users"></i></div>
						<div class="stats-info">
							<h4>총 직원 수</h4>
							<p>15 명</p>	
						</div>
						<div class="stats-link">						
							<a href="${pageContext.request.contextPath}/member">인사관리<i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			
   <div class="row">
	   <div class="col-md-12"  >
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

    </div> <!-- row end div -->
    <div class="row">
    	<div class="col-md-6">
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
    
    	<div class="col-md-6">
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
    </div>
    
    <div class="row">
    	<div class="col-md-12">
			<div class="panel panel-inverse" data-sortable-id="table-basic-2" >
               <div class="panel-heading">
                   <div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="#" class="btn btn-xs btn-icon btn-circle btn-warning"><i class="fa fa-minus"></i></a>
                       <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                   </div>
                   <h4 class="panel-title" id="notice_list">부서별 연봉 현황</h4>
               </div>
                 <div class="panel-body">
                     <table class="table table-hover" style="text-align: left;">
                         <thead>
                             <tr>
                                <th>부서이름</th>
								<th>연봉(기본급)</th>
								<th>연봉(보너스 포함)</th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                <td>도서 1팀</td>
								<td>38,400,000</td>
								<td>40,800,000</td>
                             </tr>
                             <tr>
                                <td>도서 2팀</td>
								<td>45,600,000</td>
								<td>45,600,000</td>
							 </tr>
							 <tr>
								<td>영업팀</td>
								<td>198,000,000</td>
								<td>208,800,000</td>
                             </tr>
                             <tr>
								<td>회계팀</td>
								<td>60,000,000</td>
								<td>63,600,000</td>
                             </tr>
						</tbody>
					</table>
		            <button type="button" class="btn btn-inverse m-r-1 m-b-1" style="float: right;" 
		                onclick="location.href='${pageContext.request.contextPath}/payManage'">
		                급여 관리
		            </button>
	            </div>
	        </div>
	  	</div>
	  </div>
   </div>
   <!-- 어째서인지 모르겠으면 밑에 이 차트 지우면 차트 전체가 안 보임... -->
   <div class="row" style="diplay: none;">
       <div class="col-md-1" >
            <div class="panel panel-inverse" data-sortable-id="flot-chart-6">
            <div class="panel-heading">
                   <div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="#" class="btn btn-xs btn-icon btn-circle btn-warning"><i class="fa fa-minus"></i></a>
                       <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                   </div>
                   <h4 class="panel-title" id="notice_list">없앨거</h4>
               </div>
                <div class="panel-body">
                    <div id="stacked-chart" class="height-sm" style="diplay: none;"></div>
                </div>
             
            </div>
       </div>
   </div>
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/crossbrowserjs/excanvas.min.js"></script>
        <![endif]-->
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
        <!-- ================== END BASE JS ================== -->
        
    <!-- ================== BEGIN PAGE LEVEL JS ================== -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-buttons.demo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.time.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.pie.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.stack.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.crosshair.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.categories.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/chart-flot.demo.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/sparkline/jquery.sparkline.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/dashboard.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
    <!-- ================== END PAGE LEVEL JS ================== -->
   
   <script>
      $(document).ready(function() {
         App.init();
         Chart.init();
     
      
      //차트 js
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
      });
   </script>
</body>
</html>