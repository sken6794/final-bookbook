<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	

		
		<!-- begin #content -->
		<div id="content" class="content">
			
			<!-- begin page-header -->
			<h1 class="page-header">근태 신청 조회<small></small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Data Table - Default</h4>
                        </div>
                        <div class="panel-body">
                            <table id="data-table" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>사원 코드</th>
                                        <th>사원 이름</th>
                                        <th>부서</th>
                                        <th>직급</th>
                                        <th>남은 휴가 일수</th>
                                        <th>휴가 승인여부</th>
                                        <th>연장 승인 여부</th>
                                        <th>요청 종류</th>
                                        <th>비고</th>
                                        <th>시작 시간</th>
                                        <th>종료 시간</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                   	<c:forEach var="atdn" items="${atdn }">
	                                    <tr class="odd gradeX">
	                                        <td>${atdn.member.mno }</td>
	                                        <td>${atdn.member.mname}</td>
	                                        <td>${atdn.department.dname}</td>
	                                        <td>${atdn.position.pname}</td>
	                                        <td>${atdn.member.mdayoff}</td>
	                                        <td><a href="atdn_update/${atdn.member.mno  }">${atdn.aleavestatus }대기중</a></td>
	                                        <td>${atdn.aovertimestatus }</td>
	                                        <td>${atdn.aovertime }</td>
	                                        <td>${atdn.aovertimetext }</td>
	                                        <td>${atdn.astarttime }</td>
	                                        <td>${atdn.aendtime }</td>
	                                    </tr>  
                                    </c:forEach>                                 
                                </tbody>                               
                            </table>
                        </div>
                    </div>
                    <div class="col-md-2 btn btn-inverse m-r-3 m-b-3">
                    <button type="button" class="btn btn-inverse" onclick="addAtdn();">신청</button>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
       
		
		
	</div>
	<!-- end page container -->
	
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageDefault.init();
		});
		
		function addAtdn() {
			var num = 1;
			location.href="overtime/"+num;
		}
	</script>
</body>
</html>
