<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
   <meta charset="utf-8" />
   <title>일정관리</title>
   <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <!-- ================== BEGIN BASE CSS STYLE ================== -->
   <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/css/style.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/css/style-responsive.min.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/css/theme/default.css" rel="stylesheet" id="theme" />
   <!-- ================== END BASE CSS STYLE ================== -->
   
    
   <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
   <link href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
   <!-- ================== END PAGE LEVEL STYLE ================== -->
   
   <!-- 풀캘린더 시작 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/calendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/calendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/calendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/calendar/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/calendar/css/main.css">
   <!-- 풀캘린더 끝 -->
   
   <!-- ================== BEGIN BASE JS ================== -->
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
   <!-- ================== END BASE JS ================== -->
</head>
<body>
      <!-- begin #content -->
      <div id="content" class="content">
       <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">기타</a></li>
                <li><a tabindex="-1" href="#">내부일정</a></li>
                <li><a tabindex="-1" href="#">외부일정</a></li>
                <li><a tabindex="-1" href="#">발주 및 출간</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="기타">기타</option>
                                    <option value="내부일정">내부일정</option>
                                    <option value="외부일정">외부일정</option>
                                    <option value="발주 및 출간">발주 및 출간</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>                                   
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">분류별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="기타">기타</option>
                            <option value="내부일정">내부일정</option>
                            <option value="외부일정">외부일정</option>
                            <option value="발주 및 출간">발주 및 출간</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">부서별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="도서 1팀"
                                checked>도서 1팀</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="도서 2팀"
                                checked>도서 2팀</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="영업팀"
                                checked>영업팀</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="회계팀"
                                checked>회계팀</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
   	</div>
      <!-- end #content -->

    
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
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/gritter/js/jquery.gritter.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.time.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.resize.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/flot/jquery.flot.pie.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/sparkline/jquery.sparkline.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/js/dashboard.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/assets/js/apps.min.js"></script>
   <!-- ================== END PAGE LEVEL JS ================== -->
   
   <!-- 풀캘린더 js 시작 -->
   <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/fullcalendar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/js/addEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/calendar/js/etcSetting.js"></script>
    <!-- 풀캘린더 js 끝 -->
    
   <script>
      $(document).ready(function() {
         App.init();
         Dashboard.init();
      });
   </script>
</body>
</html>