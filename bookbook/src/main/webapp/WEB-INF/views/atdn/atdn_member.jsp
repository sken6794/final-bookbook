<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
	
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>

		
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
                        <div class="panel-body" id="atdnListDiv">
                     
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
	                                        <td>${atdn.member.mdayoff} 일</td>
	                                        <%-- 
	                                        <td><a href="javascript:updateAtdn(${atdn.member.mno  })" class="btn btn-sm btn-success">${atdn.aleavestatus }대기중</a></td>
	                                        <td><a href="javascript:updateAtdn2(${atdn.member.mno  })" class="btn btn-sm btn-success">${atdn.aovertimestatus }대기중</a></td>
	                                        --%>
	                                        <c:choose>
	                                        <c:when test="${atdn.aleavestatus==0 }">
	                                        <td><a href="javascript:updateAtdn(${atdn.member.mno  })" class="btn btn-sm btn-warning">대기중</a></td>
	                                        </c:when>
	                                        <c:otherwise>
	                                        <td><a href="javascript:updateAtdn(${atdn.member.mno  })" class="btn btn-sm btn-success">승인</a></td>
	                                        </c:otherwise>
	                                        </c:choose>
	                                        <c:choose>
	                                        <c:when test="${atdn.aovertimestatus==0 }">
	                                        <td><a href="javascript:updateAtdn2(${atdn.member.mno  })" class="btn btn-sm btn-warning">대기중</a></td>
	                                        </c:when>
	                                        <c:otherwise>
	                                        <td><a href="javascript:updateAtdn2(${atdn.member.mno  })" class="btn btn-sm btn-success">승인</a></td>
	                                        </c:otherwise>
	                                        </c:choose>
	                                        <td>${atdn.aovertime }</td>
	                                        <td>${atdn.aovertimetext }</td>
	                                        <td>${atdn.astarttime }</td>
	                                        <td>${atdn.aendtime }</td>
	                                    </tr>  
                                    </c:forEach>     
                                                               
                                </tbody>                               
                            </table>
                             <div class="col-md-2 col-md-offset-10">
                    			<a class="btn btn-inverse p-l-40 p-r-40" href="javascript:addAtdn(${loginMember.mno});">신청</a>
                   			 </div>
                        </div>
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
	<!-- 핸들바스 스크립트 -->
	<script id="template" type="text/x-handlebars-template">
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
      {{#each .}}
      <tr class="odd gradeX">
         <td>{{member.mno }}</td>
         <td>{{member.mname}}</td>
         <td>{{department/dname}}</td>
         <td>{{position.pname}}</td>
         <td>{{member.mdayoff}}</td>
         <td>{{aleavestatus}}</td>
         <td>{{aovertimestatus}}</td>
         <td>{{aovertime}}</td>
         <td>{{aovertimetext}}</td>
         <td>{{astarttime}}</td>
         <td>{{aendtime}}</td>
         
      </tr>
      {{/each}}
	 </tbody>
   </table>
   </script>
	
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
		
		function addAtdn(mno) {
			
			location.href="overtime/"+mno;
		}
			
	</script>
	<script type="text/javascript">
	//atdnDisplay();
	//조회 요청 함수
	/*
	function atdnDisplay() {
		$.ajax({
			type:"GET",
			url:"atdn_member",
			dataType:"json",
			success:function(json){
				var source=$("#template").html();
				var template=Handlebars.compile(source);
				$("#atdnListDiv").html(template(json.atdnList));
			},
			error:function(xhr) {
	            alert("에러코드 = "+xhr.status);
	        }
		});
		
	}
	*/
	//휴가 승인
	function updateAtdn(mno) {
		if(confirm("요청을 승인 하시겠습니까?")){
			$.ajax({
				type:"PUT",
				url:"atdn_update/"+mno,
				headers:{"X-HTTP-Method-override":"PUT"},
				dataType : "text",
				success: function (text) {
					if(text=="success"){
						alert("승인되었습니다.")
						location.href="${pageContext.request.contextPath}/atdn_member";
					}
				},
				error: function(xhr) {
		            alert("에러코드 = "+xhr.status);
		        }
			})
		}
	}
	
	//연장 근무 승인
	function updateAtdn2(mno) {
		if(confirm("요청을 승인 하시겠습니까?")){
			$.ajax({
				type:"PUT",
				url:"atdn_update2/"+mno,
				headers:{"X-HTTP-Method-override":"PUT"},
				dataType : "text",
				success: function (text) {
					if(text=="success"){
						alert("승인되었습니다.")
						location.href="${pageContext.request.contextPath}/atdn_member";
					}
				},
				error: function(xhr) {
		            alert("에러코드 = "+xhr.status);
		        }
			})
		}
	}
	
	</script>
</body>
</html>
