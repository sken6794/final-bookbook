<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>일정 테이블</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- 이 둘 중에서 순서sort 변경하는거 찾아보기 -->
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<!-- ==================================== -->

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
<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li><a href="javascript:;">Home</a></li>				
	</ol>
	<!-- end breadcrumb -->
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
                          <h4 class="panel-title">공지사항</h4>
                      </div>
                          
                  <div class="panel-body">
                      <table id="data-table" class="table table-striped table-bordered">
                          <thead>
                              <tr>
                                  <th style="text-align: center; width:8%;">번호</th>
                                  <th style="text-align: center; width:12%;">분류</th>
                                  <th style="text-align: center; width:40%;">제목</th>
                                  <th style="text-align: center; width:15%;">날짜</th>
                                  <th style="text-align: center; width:10%;">조회수</th>
                              </tr>
                          </thead>
                          <tbody style="text-align: center;">
							<c:choose>
								<c:when test="${empty(noticeList) }">
									<tr align="center">
									<td colspan="5">등록된 공지 사항이 없습니다.</td>		
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="notice" items="${noticeList }">
										<tr>
											<td><c:out value="${notice.nno }"/></td>
											<td>${notice.ncategory }</td>
											<td><a href="notice?nno=${notice.nno}" id="gray">${notice.ntitle }</a></td>
											<td>${fn:substring(notice.ndate,0,10) }</td>
											<td><c:out value="${notice.ncount }"/></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
                          </tbody>
                      	</table>
                      	
                     <!-- 로그인 사용자의 직급이 과장(4) 이상일 때 작성하기 버튼 출력
                     	  => 사원,주임,대리는 작성 불가 -->
                    <c:if test="${loginMember.pno > 3 }">
						<div style="float: right;">
							<button type="button" class="btn btn-white m-r-3 m-b-3"
                         	 onclick="location.href='write'">작성하기</button>
						</div>
					</c:if>	
                  </div>
              </div>
              <!-- end panel -->
          </div>
          <!-- end col-12 -->
      </div>
      <!-- end row -->
</div>
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/table-manage-default.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			//TableManageDefault.init();
			
			$('#data-table').DataTable({
				order: [[0, "desc"]],
				ordering: true
			});
		});
	</script>
</body>
</html>
