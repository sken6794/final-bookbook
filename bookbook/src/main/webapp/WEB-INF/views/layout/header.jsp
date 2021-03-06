<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <!-- begin #page-loader -->
   <div id="page-loader" class="fade in"><span class="spinner"></span></div>
   <!-- end #page-loader -->
   
   <!-- begin #page-container -->
   <div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
      <!-- begin #header -->
      <div id="header" class="header navbar navbar-default navbar-fixed-top">
         <!-- begin container-fluid -->
         <div class="container-fluid">
            <!-- begin mobile sidebar expand / collapse button -->
            <div class="navbar-header">
               <a href="${pageContext.request.contextPath}/" class="navbar-brand"><span class="navbar-logo"></span> BookBook Admin</a>
               <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
               </button>
            </div>
            <!-- end mobile sidebar expand / collapse button -->
            
            <!-- begin header navigation right -->
            <ul class="nav navbar-nav navbar-right">
               <li>
                  <form class="navbar-form full-width">
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="Enter keyword" />
                        <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                     </div>
                  </form>
               </li>
               <li class="dropdown">
                  <a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
                     <i class="fa fa-bell-o"></i>
                     <span class="label">5</span>
                  </a>
                  <ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">Notifications (5)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Server Error Reports</h6>
                                        <div class="text-muted f-s-11">3 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="${pageContext.request.contextPath}/resources/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">John Smith</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">25 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="${pageContext.request.contextPath}/resources/assets/img/user-4.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Olivia</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">35 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New User Registered</h6>
                                        <div class="text-muted f-s-11">1 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New Email From John</h6>
                                        <div class="text-muted f-s-11">2 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">View more</a>
                            </li>
                  </ul>
               </li>
               <li class="dropdown navbar-user">
                  <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                     <img src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg" alt="" /> 
                     <c:if test="${!empty(loginMember) }">
                     <span class="hidden-xs">${loginMember.mname }</span> <b class="caret"></b>
                     </c:if>
                  </a>
                  <ul class="dropdown-menu animated fadeInLeft">
                     <li class="arrow"></li>
                     <li><a href="javascript:;">Edit Profile</a></li>
                     <li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
                     <li><a href="javascript:;">Calendar</a></li>
                     <li><a href="javascript:;">Setting</a></li>
                     <li class="divider"></li>
                     <li><a href="logout">Log Out</a></li>
                  </ul>
               </li>
            </ul>
            <!-- end header navigation right -->
         </div>
         <!-- end container-fluid -->
      </div>
      <!-- end #header -->
      
      <!-- ???????????? -->
      <!-- begin #sidebar -->
      <div id="sidebar" class="sidebar">
         <!-- begin sidebar scrollbar -->
         <div data-scrollbar="true" data-height="100%">
            <!-- begin sidebar user -->
            <c:if test="${!empty(loginMember) }">
            <ul class="nav">
               <li class="nav-profile">
                  <div class="image">
                     <a href="${pageContext.request.contextPath}/login"><img src="${pageContext.request.contextPath}/resources/assets/img/user-13.jpg" alt="" /></a>
                  </div>
                  <div class="info">
                     ${loginMember.mname } 
                     <small>Full Stack Developer</small>
                  </div>
               </li>
            </ul>
            </c:if>
            <!-- end sidebar user -->
            <!-- begin sidebar nav -->
            <ul class="nav">
               <li class="nav-header">?????? ERP</li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-users"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/member">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-book"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/book">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/bookInsert">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/bookSelect">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-shopping-cart"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/order">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/add_order">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-truck"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/request">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-building-o"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/bookin">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa-barcode"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/bookout">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-database"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/stock">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-bar-chart-o"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/stats">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="nav-header">?????? ????????????</li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-user"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/atdn_member">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/atdn">????????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-money"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/payManage">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-laptop"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/document">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/documentSave">???????????? ??????</a></li>
                      <c:if test="${loginMember.mno != 10 }">
                      <li><a href="${pageContext.request.contextPath}/documentWait">?????? ??????</a></li>
                      </c:if>
                      <c:if test="${loginMember.mno == 10 }">
                      <li><a href="${pageContext.request.contextPath}/documentRecieve">?????? ??????</a></li>
                      </c:if>
                      <li><a href="${pageContext.request.contextPath}/documentComplete">?????? ??????</a></li>
                      <li><a href="${pageContext.request.contextPath}/documentDelete">?????? ??????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-calendar"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/calendar">?????????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-bullhorn"></i>
                      <span>????????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/noticeList">?????? ?????????</a></li>
                  </ul>
               </li>
               <li class="has-sub">
                  <a href="javascript:;">
                      <b class="caret pull-right"></b>
                      <i class="fa fa-comments-o"></i>
                      <span>?????????</span>
                   </a>
                  <ul class="sub-menu">
                      <li><a href="${pageContext.request.contextPath}/chat">????????? ??????</a></li>
                  </ul>
               </li>
                 <!-- begin sidebar minify button -->
               <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
                 <!-- end sidebar minify button -->
            </ul>
            <!-- end sidebar nav -->
         </div>
         <!-- end sidebar scrollbar -->
      </div>
      <div class="sidebar-bg"></div>
      <!-- end #sidebar -->
      
      <!-- begin scroll to top btn -->
      <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
      <!-- end scroll to top btn -->
   </div>

      
