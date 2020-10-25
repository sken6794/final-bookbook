<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wizard/css/bwizard.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/resources/${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	
	<!-- 삭제 버튼 컨펌 -->
	<script language="JavaScript">
		function noticeDelete(nno) {
			if (confirm("정말로 삭제 하시겠습니까?") ) {
				location.href='noticeRemove?nno='+nno;
			}
		}
	</script>
</head>
<body>
	<!-- begin #content -->
	<div id="content" class="content">
		<div class="col-md-12">
			<div class="panel panel-inverse" data-sortable-id="table-basic-2">
				<div class="panel-heading">
					<div class="panel-heading-btn">
					 <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title" id="notice_list">공지사항</h4>
				</div>
				<div class="panel-body">
					<table class="table" style="text-align: left;">
						<tbody>
							<tr>
								<th scope="col" style="width: 100%; text-align: left;"> &nbsp;&nbsp;제목 ㅣ${notice.ntitle }
									<p style="float: right; margin-right: 2%;"><span style="font-weight: bold;">공지분류ㅣ</span> ${notice.ncategory }</p>
								</th>
							</tr>
							<tr>
								<th scope="col" style="width: 15%; text-align: left; font-weight: 400;">
									&nbsp;&nbsp;<span style="font-weight: bold;">작성자</span> ㅣ ${notice.nwriter }
									<p style="float: right; margin-right: 2%;"><span style="font-weight: bold;">공지날짜ㅣ</span> ${fn:substring(notice.ndate,0,10) }</p>	        
									&nbsp;&nbsp;
									<p style="float: right; margin-right: 2%;"><span style="font-weight: bold;">조회수ㅣ</span> ${notice.ncount +1}</p>
									
								</th>                     
							</tr>
							<tr>
								<td scope="col" style="float: center;">
									<br>
									${notice.ncontent }
									<br><br>       
								</td>	
							</tr>
						</tbody>
					</table>
					<button type="button" class="btn btn-inverse m-r-3 m-b-3" style="float: right;" 
					onclick="location.href='noticeList'">목록</button>	
					
					<!-- 본인이 작성한 경우에만 수정, 삭제 가능 -->
					<c:if test="${loginMember.mno == notice.mno }">
						<button type="button" class="btn btn-inverse m-r-3 m-b-3" style="float: right;" 
						value="삭제" onClick="noticeDelete('${notice.nno}');">삭제</button>			
						<button type="button" class="btn btn-inverse m-r-3 m-b-3" style="float: right;" 
						onclick="location.href='modify?nno=${notice.nno}'">수정</button>				
					</c:if>
					
				</div>
			
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-8 -->
	</div>

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wizard/js/bwizard.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-wizards.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/form-wysiwyg.demo.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			FormWizard.init();
			FormWysihtml5.init();
		});
	</script>
</body>
</html>
