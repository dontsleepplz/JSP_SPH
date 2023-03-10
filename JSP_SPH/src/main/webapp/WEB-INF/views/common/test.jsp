<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    <decorator:title default="SPH Groupware System" />
  </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@3.10.5/dist/fullcalendar.min.css' rel='stylesheet' />
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@3.10.5/dist/fullcalendar.print.css' rel='stylesheet' media='print' />

  <style>
    #calendar {
      margin: 0;
      padding: 0;
      font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
      font-size: 14px;
      max-width: 900px;
      margin: 40px auto;
    }
  </style>

</head>

<body class="hold-transition sidebar-mini" onload="getTime()">
  <div class="wrapper" style="bottom: 0;">
    <!-- main nav -->
    <nav style="margin-left: 0px; background-color: rgb(180, 220, 255);" class="main-header navbar navbar-expand navbar-white navbar-light">

      <!-- a:tag logo -->
      <a href="#" class="brand-link"> <img src="resources/bootstrap/dist/img/SPHlogo2.png" alt="SPH Logo" class="brand-image img-circle elevation-3" style="opacity: .8; display: flex; box-shadow: none !important;">
        <span class="brand-text font-weight-light">SPH</span>
      </a>

      <ul class="navbar-nav">

        <c:if test="${menuList }">
          <li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">${menu }</a></li>
        </c:if>
        <%-- <c:forEach items="${empty menuList }" var="menu">
				<li class="nav-item d-none d-sm-inline-block">
				<a href="javascript:open_SubMenu('${menu.mcode }');open_Page('<%=request.getContextPath() %>${menu.murl}','${menu.mcode}');" class="nav-link">${menu.mname }</a></li>
        </c:forEach> --%>
      </ul>

      <ul class="navbar-nav ml-auto">

        <li class="nav-item"><a class="nav-link" data-widget="navbar-search" href="#" role="button"> <i class="fas fa-search"></i>
          </a>
          <div class="navbar-search-block">
            <form class="form-inline">
              <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                  <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                  <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>
        </li>

        <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
            <span class="badge badge-danger navbar-badge">3</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Brad Diesel <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">Call me whenever you can...</p>
                  <p class="text-sm text-muted">
                    <i class="far fa-clock mr-1"></i> 4 Hours Ago
                  </p>
                </div>
              </div>

            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    John Pierce <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">I got your message bro</p>
                  <p class="text-sm text-muted">
                    <i class="far fa-clock mr-1"></i> 4 Hours Ago
                  </p>
                </div>
              </div>

            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Nora Silvester <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">The subject goes here</p>
                  <p class="text-sm text-muted">
                    <i class="far fa-clock mr-1"></i> 4 Hours Ago
                  </p>
                </div>
              </div> <!-- E:media -->
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All
              Messages</a>
          </div>
        </li>

        <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span class="badge badge-warning navbar-badge">15</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">15
              Notifications</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item"> <i class="fas fa-envelope mr-2"></i> 4 new messages <span class="float-right text-muted text-sm">3 mins</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i> 8 friend requests <span class="float-right text-muted text-sm">12 hours</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
              3 new reports <span class="float-right text-muted text-sm">2
                days</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All
              Notifications</a>
          </div>
        </li>
        <li class="nav-item"><a class="nav-link" data-widget="fullscreen" href="#" role="button"> <i class="fas fa-expand-arrows-alt"></i>
          </a></li>
        <li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"> <i class="fas fa-th-large"></i>
          </a></li>
      </ul>
    </nav>

    <!-- E:navi -->

    <!-- 사이드바 c:if로 메인이 아니면 나오게 test값 넣어야함 -->
    <c:if test="${!empty submenu }">
      <aside style="height: 100%; width: 220px; margin-top: 73px;" class="main-sidebar sidebar-dark-primary elevation-4">
        <div class="sidebar" style="height: 100%; background-color: white;">
          <!-- aside -->
          <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden" style="background-color: white;">
            <div class="os-resize-observer-host observed">
              <div class="os-resize-observer"></div>
            </div>
            <div class="os-size-auto-observer observed">
              <div class="os-resize-observer"></div>
            </div>
            <div class="os-content-glue"></div>
            <div class="os-padding">
              <div class="os-viewport os-viewport-native-scrollbars-invisible">
                <div class="os-content">

                  <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column subMenuList" data-widget="treeview" role="menu" data-accordion="false">
                      <!-- META : sideList -->
                      <!-- script -->
                      <li class="nav-item menu-open" style="width: 188px"><a href="#" class="nav-link active" style="width: inherit;">
                          <i class="nav-icon fas fa-tachometer-alt"></i>
                          <p>
                            Dashboard <i class="right fas fa-angle-left"></i>
                          </p>
                        </a>
                        <ul class="nav nav-treeview" style="width: inherit;">
                          <li class="nav-item"><a href="./index.html" class="nav-link"> <i class="far fa-circle nav-icon"></i>
                              <p>Dashboard v1</p>
                            </a></li>
                          <li class="nav-item"><a href="./index2.html" class="nav-link"> <i class="far fa-circle nav-icon"></i>
                              <p>Dashboard v2</p>
                            </a></li>
                          <li class="nav-item"><a href="./index3.html" class="nav-link active"> <i class="far fa-circle nav-icon"></i>
                              <p>Dashboard v3</p>
                            </a></li>
                        </ul>
                      </li>
                    </ul>
                  </nav>

                </div>
              </div>
            </div>
            <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
              <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle"></div>
              </div>
            </div>
            <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden">
              <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle"></div>
              </div>
            </div>
            <div class="os-scrollbar-corner"></div>
          </div>

        </div>
      </aside>

    </c:if>

    <!-- E:header -->
    <div class="content-wrapper" style="margin: auto; background-color: #d3d3d3;">
      <div class="content" style="width: 95vw; height: 100vh-250px; margin: auto; padding: auto;">

        <div class="container-fluid" style="padding-top: 10px;">

          <div class="col-md-12">
            <div class="row" style="margin-top: 10px;">
              <!-- 출퇴근 -->
              <div class="col-md-2">

                <div class="card card-outline" style="height: 47vh;">

                  <div class="card-body box-profile">

                    <div class="text-center">

                      <img class="profile-user-img img-fluid" style="margin: auto; padding: auto;" src="resources/images/cat.jpg" alt="User profile picture">

                    </div>

                    <h3 class="profile-username text-center" style="margin: auto; padding: auto;">고양이</h3>

                    <p class="text-muted text-center" style="margin: auto; padding: auto;">할수있다 3팀</p>

                    <p class="text-center" id="WhatTimeIsItNow" style="margin: auto; padding: auto;"></p>

                    <ul class="list-group list-group-unbordered mb-3" style="margin: auto; padding: auto;">
                      <li class="list-group-item"><b>출근시간 : </b> <a class="float-right">#</a></li>
                      <li class="list-group-item"><b>퇴근시간 : </b> <a class="float-right">#</a></li>
                    </ul>

                    <div class="text-center">
                      <a href="#" class="btn btn-primary btn-block" style="display: inline; margin: auto; padding: auto;"><b>출근</b></a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="btn btn-primary btn-block" style="display: inline; margin: auto; padding: auto;"><b>퇴근</b></a>
                    </div>

                  </div>

                </div>

              </div>

              <!-- 캘린더 -->
              <div class="col-md-5">
                <div class="col-md" id="calendar" style="margin: auto; padding: auto;"></div>
              </div>

              <!-- todo -->
              <div class="col-md-5" style="dispiay: inlile;">

                <div class="card card-row card-primary" style="height: 47vh; dispiay: inlile; margin: auto; padding: auto;">
                  <div class="card-header" style="background: none; border: 1px solid gray;">
                    <h3 class="card-title" style="color: black;">ToDo +</h3>
                  </div>
                  <div class="card-body">
                    <div class="card card-outline">
                      <div class="card-header">
                        <h5 class="card-title">ToDo1</h5>
                        <div class="card-tools">
                          <a href="#" class="btn btn-tool btn-link">#</a> <a href="#" class="btn btn-tool"> <i class="fas fa-pen"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

            </div>

          </div>

          <div class="col-md-12">
            <div class="row" style="margin-bottom: 10px;">

              <div class="col-md-3" style="dispiay: block;">

                <div class="card card-row card-primary" style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">
                  <div class="card-header" style="background: none; border: 1px solid gray;">
                    <h3 class="card-title" style="color: black;">공지사항 +</h3>
                  </div>
                  <div class="card-body">
                    <div class="card card-outline">
                      <div class="card-header" style="border: 1px solid gray;">
                        <h5 class="card-title">공지1</h5>
                        <div class="card-tools">
                          <a href="#" class="btn btn-tool btn-link">#</a> <a href="#" class="btn btn-tool"> <i class="fas fa-pen"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

              <div class="col-md-3" style="dispiay: inlile;">

                <div class="card card-row card-primary" style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">
                  <div class="card-header" style="background: none; border: 1px solid gray;">
                    <h3 class="card-title" style="color: black;">메일 +</h3>
                  </div>
                  <div class="card-body">
                    <div class="card card-outline">
                      <div class="card-header">
                        <h5 class="card-title">메일1</h5>
                        <div class="card-tools">
                          <a href="#" class="btn btn-tool btn-link">#</a> <a href="#" class="btn btn-tool"> <i class="fas fa-pen"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

              <div class="col-md-3" style="dispiay: inlile;">

                <div class="card card-row card-primary" style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">
                  <div class="card-header" style="background: none; border: 1px solid gray;">
                    <h3 class="card-title" style="color: black;">전자결재 +</h3>
                  </div>
                  <div class="card-body">
                    <div class="card card-outline">
                      <div class="card-header">
                        <h5 class="card-title">전자결재1</h5>
                        <div class="card-tools">
                          <a href="#" class="btn btn-tool btn-link">#</a> <a href="#" class="btn btn-tool"> <i class="fas fa-pen"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

              <div class="col-md-3" style="dispiay: inlile;">

                <div class="card card-row card-primary" style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">
                  <div class="card-header" style="background: none; border: 1px solid gray;">
                    <h3 class="card-title" style="color: black;">수술 +</h3>
                  </div>
                  <div class="card-body">
                    <div class="card card-outline">
                      <div class="card-header">
                        <h5 class="card-title">수술1</h5>
                        <div class="card-tools">
                          <a href="#" class="btn btn-tool btn-link">#</a> <a href="#" class="btn btn-tool"> <i class="fas fa-pen"></i>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

              </div>

            </div>

            <!-- ./container-fluid -->
          </div>
        </div>
        <!-- ./content -->
      </div>
      <!-- S:footer -->

    </div>
    <!-- E:wrapper -->

    <!-- <script>
      function getTime() {
        var d = new Date(); // 현재 날짜와 시간
        var yyyy = d.getFullYear();
        var MM = d.getMonth();
        var dd = d.getDay();
        var hh = d.getHours(); // 시
        var mm = d.getMinutes(); // 분
        var ss = d.getSeconds(); // 초
        var timeBoard = document.getElementById("WhatTimeIsItNow"); // 값이 입력될 공간
        var time = yyyy + "년 " + MM + "월 " + dd + "일 " + hh + "시 " + mm +
          "분 " + ss + "초" // 형식 지정
        timeBoard.innerHTML = time; // 출력
        setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
      }
    </script> -->

    <script>
      (function() {
        $('#calendar').fullCalendar({
          themeSystem: 'bootstrap4',
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listMonth'
          },
          weekNumbers: true,
          eventLimit: true, // allow "more" link when too many events
          events: 'https://fullcalendar.io/api/demo-feeds/events.json'
        });
      })();
    </script>

    <!-- MainFooterScript -->
    <%-- <script>
	function open_Page(url,mCode){
		$('iframe[name="ifr"]').attr("src",url);
		if(typeof(history.pushState) == 'function'){
			var renewURL = location.href;
			renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
			
			if(mCode != 'M0000000'){
				renewURL += "?mCode="+mCode;
			}
			history.pushState(mCode,null,renewURL);
		
		} else {
			location.hash = "#"+mCode;
		}
		
	}
	
	function open_SubMenu(mCode){
		if(mCode!="M000000"){
			$.ajax({
				url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
    type:"get",
    success:function(data){
    printData(data,$('.subMenuList'),$('#subMenu-list-template'),'.subMenu');
    },
    error:function(error){
    AjaxErrorSecurityRedirectHandler(error.status);
    }
    });
    }else{
    $('.subMenuList').html("");
    }
    }

    function printData(dataArr,target,templateObject,removeSelector){

    var template=Handlebars.compile(templateObject.html());

    var html = template(dataArr);

    $(removeSelector).remove();
    target.append(html);
    }

    window.onload=function(){
    open_Page('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
    open_SubMenu('${menu.mcode}'.substring(0,3)+"0000");
    }
    </script> --%>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
    <script type="text/x-handlebars-template" id="subMenu-list-template">
      {{#each .}}
        <li class="nav-item subMenu">
          <a href="javascript:goPage('<%=request.getContextPath()%>{{murl}}','{{mcode}}');" class="nav-link">
            <i class="{{micon}}"></i>
            <p>{{mname}}</p>
          </a>
        </li>
      {{/each}}
    </script>

    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>
    <!-- common.js  -->
    <script src="<%=request.getContextPath()%>/resources/js/common.min.js"></script>
</body>

</html>
