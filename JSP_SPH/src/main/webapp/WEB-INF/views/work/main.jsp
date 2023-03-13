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

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<style>
#calendar {
	width: 100%;
	height: 60vh;
}

#calendar .fc-header-toolbar {
	font-size: 0.7rem;
	margin-bottom: 0em;
}

.icheck-primary checkbox::before {
	content:"";
	
}
.icheck-primary checkbox::after{
	    display: block;
	    clear: both;
	    content: "";
 }
 
		
</style>
</head>

<body class="sidebar-mini layout-fixed" style="height: auto;">
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-5">
					<div class="card">
						<div class="card-header ui-sortable-handle" style="cursor: move;">
							<h3 class="card-title">
								<i class="ion ion-clipboard mr-1"></i> To Do+ list
							</h3>
							<div class="card-tools">
								<ul class="pagination pagination-sm">
									<li class="page-item"><a href="#" class="page-link">«</a></li>
									<li class="page-item"><a href="#" class="page-link">1</a></li>
									<li class="page-item"><a href="#" class="page-link">2</a></li>
									<li class="page-item"><a href="#" class="page-link">3</a></li>
									<li class="page-item"><a href="#" class="page-link">»</a></li>
								</ul>
							</div>
						</div>

						<div class="card-body">
							<ul class="todo-list ui-sortable" data-widget="todo-list">
								<li><span class="handle ui-sortable-handle"> <i
										class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>

									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo1" id="todoCheck1">
										<label for="todoCheck1"></label>
									</div> <span class="text">Design a nice theme</span> <small
									class="badge badge-danger"><i class="far fa-clock"></i>
										2 mins</small>

									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
								<li class="done"><span class="handle ui-sortable-handle">
										<i class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>
									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo2" id="todoCheck2"
											checked=""> <label for="todoCheck2"></label>
									</div> <span class="text">Make the theme responsive</span> <small
									class="badge badge-info"><i class="far fa-clock"></i> 4
										hours</small>
									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
								<li><span class="handle ui-sortable-handle"> <i
										class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>
									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo3" id="todoCheck3">
										<label for="todoCheck3"></label>
									</div> <span class="text">Let theme shine like a star</span> <small
									class="badge badge-warning"><i class="far fa-clock"></i>
										1 day</small>
									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
								<li><span class="handle ui-sortable-handle"> <i
										class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>
									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo4" id="todoCheck4">
										<label for="todoCheck4"></label>
									</div> <span class="text">Let theme shine like a star</span> <small
									class="badge badge-success"><i class="far fa-clock"></i>
										3 days</small>
									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
								<li><span class="handle ui-sortable-handle"> <i
										class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>
									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo5" id="todoCheck5">
										<label for="todoCheck5"></label>
									</div> <span class="text">Check your messages and
										notifications</span> <small class="badge badge-primary"><i
										class="far fa-clock"></i> 1 week</small>
									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
								<li><span class="handle ui-sortable-handle"> <i
										class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
								</span>
									<div class="icheck-primary d-inline ml-2">
										<input type="checkbox" value="" name="todo6" id="todoCheck6">
										<label for="todoCheck6"></label>
									</div> <span class="text">Let theme shine like a star</span> <small
									class="badge badge-secondary"><i class="far fa-clock"></i>
										1 month</small>
									<div class="tools">
										<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
									</div></li>
							</ul>
						</div>

						<div class="card-footer clearfix">
							<button type="button" class="btn btn-primary float-right">
								<i class="fas fa-plus"></i> Add item
							</button>
						</div>
					</div>
					<div class="card">
						<section class="content">
							<div class="card-header">
								<h3 class="card-title">환자</h3>
							</div>
							<div class="card-body">
								<div id="jsGrid1" class="jsgrid"
									style="position: relative; height: 50%; width: 100%;">
									<div class="jsgrid-grid-header jsgrid-header-scrollbar">
										<table class="jsgrid-table">
											<tr class="jsgrid-header-row">
												<th class="jsgrid-header-cell jsgrid-header-sortable"
													style="width: 150px;">환자 번호</th>
												<th
													class="jsgrid-header-cell jsgrid-align-right jsgrid-header-sortable"
													style="width: 100px;">환자 이름</th>
												<th class="jsgrid-header-cell jsgrid-header-sortable"
													style="width: 70px;">나이</th>
												<th
													class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
													style="width: 100px;">증상</th>
												<th
													class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable jsgrid-header-sort jsgrid-header-sort-desc"
													style="width: 100px;">수술 여부</th>
											</tr>

										</table>
									</div>

									<div class="card-footer">
										<!-- pagination -->
										<div style="display:${!empty memberList ? 'visible':'none' };">
											<%@ include file="/WEB-INF/module/pagination.jsp"%>
										</div>
									</div>

								</div>

							</div>

						</section>
					</div>
				</section>
				<div class="col-5" style="max-width: 100%; max-height: 100%;">
					<div class="card">
						<div id="calendar"
							class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
						</div>
					</div>
					<div class="card">
						<div>
							<canvas id="myChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
	<script
		src="<%=request.getContextPath()%>/resources/fullcal/dist/index.global.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.17/jquery-ui.min.js"></script>

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
				itemSelector : '.external-event',
				eventData : function(eventEl) {
					return {
						title : eventEl.innerText
					};
				}
			});

			// initialize the calendar
			// -----------------------------------------------------------------

			var calendar = new Calendar(calendarEl, {
				plugins : [ 'interaction', 'dayGrid', 'timeGrid' ],
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridWeek,timeGridDay'
				},
				editable : true,
				droppable : true, // this allows things to be dropped onto the calendar
				drop : function(info) {
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

	<script>	
		 const ctx = document.getElementById('myChart');

		  new Chart(ctx, {
		    type: 'bar',
		    data: {
		      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		      datasets: [{
		        label: '# of Votes',
		        data: [12, 19, 3, 5, 2, 3],
		        borderWidth: 1
		      }]
		    },
		    options: {
		      scales: {
		        y: {
		          beginAtZero: true
		        }
		      }
		    }
		  });
		  
		  
		

	</script>