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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard 3</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">


</head>
<style>
#calendar {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	max-width: 100%;
	max-height: 500px;
	
}
#calendar button {
   width: 80px;
}
</style>
<body class="sidebar-mini sidebar-closed sidebar-collapse">
	<div class="wrapper">

		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light"
			style="background-color: rgb(180, 220, 255);">

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">

				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item">

							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
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
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
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
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div>

						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-0"
			style="background-color: white; border-right: 1px solid #DFE1E4">

			<a href="index3.html" class="brand-link"
				style="background-color: rgb(180, 220, 255); border-bottom: none;">
				<img src="<%=request.getContextPath()%>/resources/img/SPHLogo.png"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-0"
				style="opacity: .8;"> <span
				class="brand-text font-weight-light" style="color: black;">SPH</span>
			</a>

			<div class="sidebar">

				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">

						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Dashboard <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Dashboard v1</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>Dashboard v2</p>
								</a></li>
								<li class="nav-item"><a href="./index3.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>Dashboard v3</p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="pages/widgets.html"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p>
									Widgets <span class="right badge badge-danger">New</span>
								</p>
						</a></li>

					</ul>
				</nav>

			</div>

		</aside>
		<!-- E:header -->
		<div class="content-wrapper">
			<!-- S:iframe -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Calendar</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Calendar</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3">
							<div class="sticky-top mb-3">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">일정</h4>
									</div>
									<div class="card-body" >

										<div id="external-events">
											<div
												class="external-event bg-success ui-draggable ui-draggable-handle"
												style="position: relative; z-index: auto; left: 0px; top: 0px;">업무</div>
											<div
												class="external-event bg-warning ui-draggable ui-draggable-handle"
												style="position: relative;">일정</div>
											<div
												class="external-event bg-info ui-draggable ui-draggable-handle"
												style="position: relative;">학회</div>
											<div
												class="external-event bg-primary ui-draggable ui-draggable-handle"
												style="position: relative;">회의</div>
											<div
												class="external-event bg-danger ui-draggable ui-draggable-handle"
												style="position: relative;">수술</div>
											<div class="checkbox">
												<label for="drop-remove"> <input type="checkbox"
													id="drop-remove"> remove after drop
												</label>
											</div>
										</div>
									</div>

								</div>

								<div class="card">
									<div class="card-header">
										<h3 class="card-title">일정 추가</h3>
									</div>
									<div class="card-body">
										<div class="btn-group"
											style="width: 100%; margin-bottom: 10px;">
											<ul class="fc-color-picker" id="color-chooser">
												<li><a class="text-primary" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-warning" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-success" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-danger" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-muted" href="#"><i
														class="fas fa-square"></i></a></li>
											</ul>
										</div>

										<div class="input-group">
											<input id="new-event" type="text" class="form-control"
												placeholder="Event Title">
											<div class="input-group-append">
												<button id="add-new-event" type="button"
													class="btn btn-primary">Add</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="card" style="max-width: 100%; max-height: 100%;">
								<div id="calendar"
									class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
								</div>
							</div>
						</div>
						<!--calendar card  -->
					</div>
					<!-- end row  -->
					<!-- modal 추가 -->
					<div class="modal fade" id="calendarRegist" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label for="taskId" class="col-form-label">일정 내용</label> <input
											type="text" class="form-control" id="calendar_content"
											name="calendar_content"> <label for="taskId"
											class="col-form-label">시작 날짜</label> <input type="date"
											class="form-control" id="reservation"
											name="calendar_start_date"> <label for="taskId"
											class="col-form-label">종료 날짜</label> <input type="date"
											class="form-control" id="calendar_end_date"
											name="calendar_end_date">
									</div>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-warning" id="addCalendar">추가</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal" id="sprintSettingModalClose">취소</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!--content  -->
		</div>
		<!-- E:content-wrapper -->
		<aside class="control-sidebar control-sidebar-dark"></aside>

		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer>
	</div>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

	<script src="<%=request.getContextPath()%>/resources/fullcal/dist/index.global.js"></script>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.17/jquery-ui.min.js"></script>

</body>

<script>
   document.addEventListener('DOMContentLoaded', function() {
       var calendarEl = document.getElementById('calendar');

       var calendar = new FullCalendar.Calendar(calendarEl, {
           headerToolbar : {
               left : 'prev,next today addEventButton',
               center : 'title',
               right : 'dayGridMonth,timeGridWeek,timeGridDay'
           },

           navLinks : true, // can click day/week names to navigate views
           selectable : true,
           nowIndicator : true,
           dayMaxEvents : true,
           locale : 'ko',
           selectMirror : true,
           select : function(arg) {
               var title = prompt('Event Title:');
               if (title) {
                   calendar.addEvent({
                       title : title,
                       start : arg.start,
                       end : arg.end,
                       allDay : arg.allDay
                   })
               }
               calendar.unselect()
           },
           eventClick : function(arg) {
               if (confirm('일정을 삭제하시겠습니까?')) {
                   arg.event.remove()
               }
           },
           editable : true,
           dayMaxEvents : true, // allow "more" link when too many events
           events : [ {
               title:'일정',
               start:'2023-03-26 00:00:00',
               end:'2023-03-27 24:00:00' 

           },],
           
           customButtons: {
               addEventButton: { // 추가한 버튼 설정
                   text : "일정 추가",  // 버튼 내용
                   click : function(){ // 버튼 클릭 시 이벤트 추가
                       
                        function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
                            winleft = (screen.width - WinWidth) / 2;
                            wintop = (screen.height - WinHeight) / 2;
                            var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth
                                                    +",height="+ WinHeight +", top="+ wintop +", left=" 
                                                    + winleft +", resizable=yes, status=yes"  );
                            win.focus() ; 
                        }
                        OpenWindow('<%=request.getContextPath()%>/calender/regist',
																'calendarRegist',
																700, 800);
													}
												}
											}
										});
								calendar.render();
							});
		</script>


<script>
document.addEventListener('DOMContentLoaded', function() {
    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendarInteraction.Draggable;
 
    var containerEl = document.getElementById('external-events');
    var calendarEl = document.getElementById('calendar');
    var checkbox = document.getElementById('drop-remove');
 
    // initialize the external events
    // -----------------------------------------------------------------
 
    new Draggable(containerEl, {
      itemSelector: '.external-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText
        };
      }
    });
 
    // initialize the calendar
    // -----------------------------------------------------------------
 
    var calendar = new Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar
      drop: function(info) {
        // is the "remove after drop" checkbox checked?
        if (checkbox.checked) {
          // if so, remove the element from the "Draggable Events" list
          info.draggedEl.parentNode.removeChild(info.draggedEl);
        }
      }
    });
 
    calendar.render();
  });
 
		
		</script>